@echo off
pushd %~dp0

xcopy .\texturesrc\resource_pack\textures\blocks\ .\temp\blocks\ /s /y
xcopy .\texturesrc\resource_pack\textures\items\ .\temp\items\ /s /y
xcopy .\texturesrc_edu\resource_pack\textures\blocks\ .\temp\blocks\ /s /y
xcopy .\texturesrc_edu\resource_pack\textures\items\ .\temp\items\ /s /y
rem brarchive cli from https://github.com/bedrock-crustaceans/brarchive/releases
brarchive.exe encode .\temp --recursive --skip-root
xcopy .\temp\__brarchive\ ..\app\src\main\assets\textures\ /s /y

copy .\texturesrc\resource_pack\blocks.json .\temp\blocks_vanilla.json
copy .\texturesrc\resource_pack\textures\flipbook_textures.json .\temp\flipbook_textures_vanilla.json
copy .\texturesrc\resource_pack\textures\item_texture.json .\temp\item_texture_vanilla.json
copy .\texturesrc\resource_pack\textures\terrain_texture.json .\temp\terrain_texture_vanilla.json
copy .\texturesrc_edu\resource_pack\blocks.json .\temp\blocks_edu.json
copy .\texturesrc_edu\resource_pack\textures\flipbook_textures.json .\temp\flipbook_textures_edu.json
copy .\texturesrc_edu\resource_pack\textures\item_texture.json .\temp\item_texture_edu.json
copy .\texturesrc_edu\resource_pack\textures\terrain_texture.json .\temp\terrain_texture_edu.json
rem py .\merge_json.py
rem copy .\temp\flipbook_textures.json ..\app\src\main\assets\flipbook_textures.json
rem copy .\temp\item_texture.json ..\app\src\main\assets\item_texture.json
rem copy .\temp\terrain_texture.json ..\app\src\main\assets\terrain_texture.json

rem py .\blocks.py
rem py .\items.py
rem py .\entities.py
rem py .\tileentities.py

del /s /q .\temp\