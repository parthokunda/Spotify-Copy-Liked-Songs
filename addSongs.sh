#!/bin/sh

USER_FROM_AUTH='authentication code of the user you want to copy from'
USER_TO_AUTH='authentication code of the user you want to copy to'
PLAYLIST_ID='insert the playlist id you want to copy to'

for ((i = 0; i < 277; i++)); do
  uri=$(curl -s --location "https://api.spotify.com/v1/me/tracks?limit=1&offset=$i" \
    --header "Authorization: Bearer $USER_FROM_AUTH" | jq -r '.items[0]["track"]["uri"]')
  uri=$(echo $uri | sed -r 's/:/%3A/g')

  response=$(curl -s --location --request POST "https://api.spotify.com/v1/playlists/$PLAYLIST_ID/tracks?uris=$uri" \
    --header "Authorization: Bearer $USER_TO_AUTH")
  echo $response
done
