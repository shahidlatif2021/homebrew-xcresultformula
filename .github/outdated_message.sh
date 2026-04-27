#!/bin/bash

# Parse the outdated packages directly using jq
packages=$(jq -c '.outdatedPackages[]' outdated_report.json)

# Initialize arrays to hold major, minor, and patch updates
major_updates=()
minor_updates=()
patch_updates=()

# Loop through each package
for package in $packages; do
  # Extract fields from each package using jq
  name=$(echo "$package" | jq -r '.package')
  current_version=$(echo "$package" | jq -r '.currentVersion')
  latest_version=$(echo "$package" | jq -r '.latestVersion')
  url=$(echo "$package" | jq -r '.url')

  # Extract major and minor versions for comparison
  current_major=$(echo "$current_version" | cut -d '.' -f 1)
  current_minor=$(echo "$current_version" | cut -d '.' -f 2)
  latest_major=$(echo "$latest_version" | cut -d '.' -f 1)
  latest_minor=$(echo "$latest_version" | cut -d '.' -f 2)

  # Format the package entry as fields (package name and version change)
  package_field="{\"type\": \"mrkdwn\", \"text\": \"<$url|$name>\"}"
  change_field="{\"type\": \"plain_text\", \"text\": \"$current_version -> $latest_version\"}"

  # Determine if the update is major, minor, or patch and append to the respective group
  if [ "$current_major" != "$latest_major" ]; then
    major_updates+=("$package_field")
    major_updates+=("$change_field")
  elif [ "$current_minor" != "$latest_minor" ]; then
    minor_updates+=("$package_field")
    minor_updates+=("$change_field")
  else
    patch_updates+=("$package_field")
    patch_updates+=("$change_field")
  fi
done

# Function to generate attachment blocks for Slack, splitting into multiple sections if needed
generate_attachment () {
  local updates=("$@")
  local title="$1"
  local icon="$2"
  local color="$3"

  # Remove the first three arguments from the updates list (title, icon, color)
  updates=("${updates[@]:3}")

  local attachments=""
  local num_fields_per_block=10

  for ((i = 0; i < ${#updates[@]}; i += $num_fields_per_block)); do
    # Get the current chunk of 10 fields
    chunk=("${updates[@]:i:$num_fields_per_block}")

    # Add the attachment for this chunk
    if [ $i -eq 0 ]; then
      attachment="{
        \"color\": \"$color\",
        \"blocks\": [
          {
            \"type\": \"section\",
            \"text\": {\"type\": \"mrkdwn\", \"text\": \"$icon *$title Updates:*\"},
            \"fields\": [$(IFS=,; echo "${chunk[*]}")]
          }
        ]
      }"
    else
      attachment="{
        \"color\": \"$color\",
        \"blocks\": [
          {
            \"type\": \"section\",
            \"fields\": [$(IFS=,; echo "${chunk[*]}")]
          }
        ]
      }"
    fi

    # Add the chunk to the attachments
    attachments+="$attachment,"
  done

  # Remove the trailing comma and return the attachments
  echo "${attachments%,}"
}

# Start constructing the blocks for Slack payload
blocks='[{"type": "section", "text": {"type": "mrkdwn", "text": "<!here> *Outdated Dependencies Found*"}}]'
attachments="["

# Add major updates attachments if there are any major updates
if [ ${#major_updates[@]} -gt 0 ]; then
  attachments+="$(generate_attachment "Major" ":bangbang:" "#FF0000" "${major_updates[@]}"),"
fi

# Add minor updates attachments if there are any minor updates
if [ ${#minor_updates[@]} -gt 0 ]; then
  attachments+="$(generate_attachment "Minor" ":warning:" "#FFCE0A" "${minor_updates[@]}"),"
fi

# Add patch updates attachments if there are any patch updates
if [ ${#patch_updates[@]} -gt 0 ]; then
  attachments+="$(generate_attachment "Patch" ":arrow_up:" "#1C8DBD" "${patch_updates[@]}"),"
fi

# Close the attachments array and remove the trailing comma
attachments="${attachments%,}]"

# Prepare the final Slack payload
cat <<EOF > slack_payload.json
{
  "blocks": $blocks,
  "attachments": $attachments
}
EOF