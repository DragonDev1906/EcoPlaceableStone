[ -d build ] && rm -r build
mkdir build
mkdir build/NaturalStone
cp src/NaturalBasaltTemplate.cs build/NaturalStone/NaturalBasalt.cs
sed "s/Basalt/Sandstone/g" src/NaturalBasaltTemplate.cs > build/NaturalStone/NaturalSandstone.cs
sed "s/Basalt/Limestone/g" src/NaturalBasaltTemplate.cs > build/NaturalStone/NaturalLimestone.cs
sed "s/Basalt/Gneiss/g" src/NaturalBasaltTemplate.cs > build/NaturalStone/NaturalGneiss.cs
sed "s/Basalt/Shale/g" src/NaturalBasaltTemplate.cs > build/NaturalStone/NaturalShale.cs
sed "s/Basalt/Granite/g" src/NaturalBasaltTemplate.cs > build/NaturalStone/NaturalGranite.cs
