#!/usr/bin/env bash
#######################################################
# Usage:                                              #
# ./upgrade_bridge_protobuf.sh                     #
#                                                     #
# or custom version:                                  #
# VERSION=v0.1.1 ./upgrade_bridge_protobuf.sh      #
# GITHUB_TOKEN Must be in environment variables       #
#######################################################

REPO="DecentRealized/custom-libp2p-mobile"
NAME="protobuf_custom_libp2p_bridge_dart"
OUTPUT_DIR="lib"

#######################################################
# you shouldn't edit below this line                  #
#######################################################

echo "Get latest release"
RELEASE_PAYLOAD=$(curl --silent "https://api.github.com/repos/$REPO/releases/latest" -u "username:$GITHUB_TOKEN" )

get_version() {
  echo "$RELEASE_PAYLOAD" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/'
}

LATEST_VERSION=$(get_version $REPO)
VERSION=${VERSION:-$LATEST_VERSION}
TMP_DIR=$(dirname "$(mktemp -u)")

echo "Using: $VERSION"
echo "--------------------------------------------"

FILE_NAME="${NAME}_${VERSION}.tar.gz"
TMP_FILE="$TMP_DIR/$FILE_NAME" 
FILE_URL=$(curl --silent "https://api.github.com/repos/${REPO}/releases/tags/${VERSION}" \
                         -u "username:$GITHUB_TOKEN" | jq -r ".assets | map(select(.name==\"$FILE_NAME\"))[0].url")

echo "Downloading: $FILE_URL to $TMP_FILE"
curl -L -o "$TMP_FILE" "$FILE_URL" -u "username:$GITHUB_TOKEN" --header 'Accept:application/octet-stream'

echo "Extracting: "$TMP_FILE" to $OUTPUT_DIR"
mkdir -p $OUTPUT_DIR
rm -rf $OUTPUT_DIR/custom_libp2p.dart $OUTPUT_DIR/models $OUTPUT_DIR/custom_libp2p_constants.dart
tar -xz --strip-components=1 --directory=$OUTPUT_DIR --file="$TMP_FILE"

echo "All updated"
