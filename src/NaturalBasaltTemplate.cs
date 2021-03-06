// Copyright (c) Strange Loop Games. All rights reserved.
// See LICENSE file in the project root for full license information.
// <auto-generated />

namespace Eco.Mods.TechTree
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel;
    using Eco.Gameplay.Blocks;
    using Eco.Gameplay.Components;
    using Eco.Gameplay.DynamicValues;
    using Eco.Gameplay.Items;
    using Eco.Gameplay.Objects;
    using Eco.Gameplay.Players;
    using Eco.Gameplay.Skills;
    using Eco.Gameplay.Systems;
    using Eco.Gameplay.Systems.TextLinks;
    using Eco.Core.Items;
    using Eco.Shared.Localization;
    using Eco.Shared.Serialization;
    using Eco.Shared.Utils;
    using Eco.World;
    using Eco.World.Blocks;
    using Eco.Gameplay.Pipes;
	
    [Serialized]
    [LocDisplayName("Natural Basalt")]
    [MaxStackSize(10)]
    [Weight(30000)]
    [Tag("Constructable", 1)]
    [Tag("NaturalStone", 1)]
    public partial class NatrualBasaltItem : BlockItem<BasaltBlock>
    {
        public override LocString DisplayNamePlural { get { return Localizer.DoStr("Natural Basalt"); } }
    }
	
    [RequiresSkill(typeof(MiningSkill), 5)]
    public partial class NaturalBasaltRecipe : RecipeFamily
    {
        public NaturalBasaltRecipe()
        {
            var recipe = new Recipe();
            recipe.Init(
                "NaturalBasalt",  //noloc
                Localizer.DoStr("Natural Basalt"),
                new List<IngredientElement>
                {
                    new IngredientElement(typeof(BasaltItem), 6),
                    new IngredientElement(typeof(MortarItem), 2, typeof(MiningSkill)),
                },
                new List<CraftingElement>
                {
                    new CraftingElement<NatrualBasaltItem>()
                });
            this.Recipes = new List<Recipe> { recipe };
            this.ExperienceOnCraft = 0.5f;
            this.LaborInCalories = CreateLaborInCaloriesValue(40, typeof(MiningSkill));
            this.CraftMinutes = CreateCraftTimeValue(typeof(NaturalBasaltRecipe), .25f, typeof(MiningSkill));
			
            this.ModsPreInitialize();
            this.Initialize(Localizer.DoStr("Natural Basalt"), typeof(NaturalBasaltRecipe));
            this.ModsPostInitialize();
			
            CraftingComponent.AddRecipe(typeof(MasonryTableObject), this);
        }

        /// <summary>Hook for mods to customize RecipeFamily before initialization. You can change recipes, xp, labor, time here.</summary>
        partial void ModsPreInitialize();
        /// <summary>Hook for mods to customize RecipeFamily after initialization, but before registration. You can change skill requirements here.</summary>
        partial void ModsPostInitialize();
    }
}
