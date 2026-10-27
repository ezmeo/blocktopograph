#!/bin/bash
temppath=$(mktemp -d temp-XXXX)
trap 'rm -rf "$temppath"' EXIT
cp -rf ./texturesrc/resource_pack/textures/blocks/ ./texturesrc/resource_pack/textures/items/ ./texturesrc_edu/resource_pack/textures/blocks/ ./texturesrc_edu/resource_pack/textures/items/ ./$temppath/
chmod +x ./brarchive
# brarchive cli from from https://github.com/bedrock-crustaceans/brarchive/releases
./brarchive encode ./$temppath --recursive --skip-root
rm -rf ../app/src/main/assets/textures
mv -f ./$temppath/__brarchive/ ../app/src/main/assets/textures

cp ./texturesrc/resource_pack/blocks.json ./$temppath/blocks_vanilla.json
cp ./texturesrc/resource_pack/textures/flipbook_textures.json ./$temppath/flipbook_textures_vanilla.json
cp ./texturesrc/resource_pack/textures/item_texture.json ./$temppath/item_texture_vanilla.json
cp ./texturesrc/resource_pack/textures/terrain_texture.json ./$temppath/terrain_texture_vanilla.json
cp ./texturesrc_edu/resource_pack/blocks.json ./$temppath/blocks_edu.json
cp ./texturesrc_edu/resource_pack/textures/flipbook_textures.json ./$temppath/flipbook_textures_edu.json
cp ./texturesrc_edu/resource_pack/textures/item_texture.json ./$temppath/item_texture_edu.json
cp ./texturesrc_edu/resource_pack/textures/terrain_texture.json ./$temppath/terrain_texture_edu.json
#python3 ./merge_json.py
#cp ./$temppath/flipbook_textures.json ../app/src/main/assets/flipbook_textures.json
#cp ./$temppath/item_texture.json ../app/src/main/assets/item_texture.json
#cp ./$temppath/terrain_texture.json ../app/src/main/assets/terrain_texture.json


#python3 ./blocks.py
#python3 ./items.py
#python3 ./entities.py
#python3 ./tileentities.py