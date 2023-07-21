[ -d build ] && rm -r build
mkdir build
mkdir build/PlaceableStone

from_template() {
    sed "s/_TEMPLATE_NAME_/$1/g;s/_TEMPLATE_BLOCKNAME_/$2/g;s/_TEMPLATE_INGREDIENTNAME_/$3/g;s/_TEMPLATE_DISPLAYNAME_/$4/g" src/RawStoneTemplate.cs > build/PlaceableStone/$1.cs

}

from_template RawBasalt    BasaltBlock    BasaltItem    "Raw Basalt"
from_template RawSandstone SandstoneBlock SandstoneItem "Raw Sandstone"
from_template RawLimestone LimestoneBlock LimestoneItem "Raw Limestone"
from_template RawGneiss    GneissBlock    GneissItem    "Raw Gneiss"
from_template RawShale     ShaleBlock     ShaleItem     "Raw Shale"
from_template RawGranite   GraniteBlock   GraniteItem   "Raw Granite"

from_template RawCoal      CoalBlock      CoalItem      "Raw Coal"

from_template RawIronOre   IronOreBlock   IronOreItem   "Raw Iron Ore"
from_template RawCopperOre CopperOreBlock CopperOreItem "Raw Copper Ore"
from_template RawGoldOre   GoldOreBlock   GoldOreItem   "Raw Gold Ore"

zip build/PlaceableStone.zip build/PlaceableStone
