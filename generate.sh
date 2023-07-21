[ -d build ] && rm -r build
mkdir build
mkdir build/PlaceableStone
cp src/RawBasaltTemplate.cs build/PlaceableStone/RawBasalt.cs
sed "s/Basalt/Sandstone/g" src/RawBasaltTemplate.cs > build/PlaceableStone/RawSandstone.cs
sed "s/Basalt/Limestone/g" src/RawBasaltTemplate.cs > build/PlaceableStone/RawLimestone.cs
sed "s/Basalt/Gneiss/g" src/RawBasaltTemplate.cs > build/PlaceableStone/RawGneiss.cs
sed "s/Basalt/Shale/g" src/RawBasaltTemplate.cs > build/PlaceableStone/RawShale.cs
sed "s/Basalt/Granite/g" src/RawBasaltTemplate.cs > build/PlaceableStone/RawGranite.cs
