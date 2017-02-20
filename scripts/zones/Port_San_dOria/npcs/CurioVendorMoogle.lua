-----------------------------------
-- Area: Port Windurst
-- NPC: Curio Vendor Moogle
-- AF Merchant NPC
-- Custom Shop
-----------------------------------

require("scripts/globals/shop");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
   if (trade:getItemCount() == 1 and trade:hasItemQty(2331,1) == true) then
        --player:PrintToServer(string.format("* %s has started learning Blue Magic.", player:getName()), 0x10);
      player:tradeComplete();
   -- Adds all BLU spells
      player:addSpell(513);
      player:addSpell(515);
      player:addSpell(517);
      player:addSpell(518);
      -- Spells 519 to 743
      z = 519;
      while z <= 743 do
         player:addSpell(z);
         z = z + 1;
      end
   end

   if (trade:getItemCount() == 1 and trade:hasItemQty(1440,1) == true) then
      player:tradeComplete();
   -- Adds all Avatars
      player:addSpell(289);
      player:addSpell(288);
      player:addSpell(290);
      player:addSpell(291);
      -- Spells 292 to 306
      z = 291;
      while z <= 306 do
         player:addSpell(z);
         z = z + 1;
      end
   end
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
   switch(player:getMainJob()) : caseof {
      -- WAR
      [0x01] = function (x)
         stock = {
            16678,  50000,   --Razor Axe
            12511,  100000,  --Fighter's Mask
            12638,  100000,  --Fighter's Lorica
            13961,  100000,  --Fighter's Mufflers
            14214,  100000,  --Fighter's Cuisses
            14089,  100000,  --Fighter's Calligae
         }
         -- Artifact Quests
         if (player:getMainLvl() > 49) then
            if (player:getQuestStatus(BASTOK,THE_DOORMAN) ~= QUEST_COMPLETED) then
               player:completeQuest(BASTOK,THE_DOORMAN);
            end
            if (player:getQuestStatus(BASTOK,THE_TALEKEEPER_S_TRUTH) ~= QUEST_COMPLETED) then
               player:completeQuest(BASTOK,THE_TALEKEEPER_S_TRUTH);
            end
            if (player:getQuestStatus(BASTOK,THE_TALEKEEPER_S_GIFT) ~= QUEST_COMPLETED) then
               player:completeQuest(BASTOK,THE_TALEKEEPER_S_GIFT);
            end
            if (player:getQuestStatus(JEUNO,BORGHERTZ_S_WARRING_HANDS) ~= QUEST_COMPLETED) then
               player:completeQuest(JEUNO,BORGHERTZ_S_WARRING_HANDS);
            end
         end
         -- Trial Weapon Skill: Axe
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(5) == false) then
            player:addLearnedWeaponskill(5);
            player:PrintToPlayer("learns Decimation!", 8);
         end
         -- Trial Weapon Skill: Club
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(11) == false) then
            player:addLearnedWeaponskill(11);
            player:PrintToPlayer("learns Black Halo!", 8);
         end
         -- Trial Weapon Skill: Dagger
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(2) == false) then
            player:addLearnedWeaponskill(2);
            player:PrintToPlayer("learns Evisceration!", 8);
         end
         -- Trial Weapon Skill: Great Axe
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(6) == false) then
            player:addLearnedWeaponskill(6);
            player:PrintToPlayer("learns Steel Cyclone!", 8);
         end
         -- Trial Weapon Skill: Great Sword
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(4) == false) then
            player:addLearnedWeaponskill(4);
            player:PrintToPlayer("learns Ground Strike!", 8);
         end
         -- Trial Weapon Skill: Polearm
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(8) == false) then
            player:addLearnedWeaponskill(8);
            player:PrintToPlayer("learns Impulse Drive!", 8);
         end
         -- Trial Weapon Skill: Scythe
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(7) == false) then
            player:addLearnedWeaponskill(7);
            player:PrintToPlayer("learns Spiral Hell!", 8);
         end
         -- Trial Weapon Skill: Staff
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(12) == false) then
            player:addLearnedWeaponskill(12);
            player:PrintToPlayer("learns Retribution!", 8);
         end
         -- Trial Weapon Skill: Sword
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(3) == false) then
            player:addLearnedWeaponskill(3);
            player:PrintToPlayer("learns Savage Blade!", 8);
         end
      end,
      -- MNK
      [0x02] =  function (x)
         stock = {
            17478,  50000,      --Beat Cesti
            12512,  100000,      --Temple Crown
            12639,  100000,      --Temple Cyclas
             13962,  100000,      --Temple Gloves
             14215,  100000,      --Temple Hose
            14090,  100000,      --Temple Gaiters
         }
         -- Artifact Quests
         if (player:getMainLvl() > 49) then
             if (player:getQuestStatus(BASTOK,GHOSTS_OF_THE_PAST) ~= QUEST_COMPLETED) then
               player:completeQuest(BASTOK,GHOSTS_OF_THE_PAST);
            end
             if (player:getQuestStatus(BASTOK,TRUE_STRENGTH) ~= QUEST_COMPLETED) then
               player:completeQuest(BASTOK,TRUE_STRENGTH);
            end
             if (player:getQuestStatus(BASTOK,THE_FIRST_MEETING) ~= QUEST_COMPLETED) then
               player:completeQuest(BASTOK,THE_FIRST_MEETING);
            end
             if (player:getQuestStatus(JEUNO,BORGHERTZ_S_STRIKING_HANDS) ~= QUEST_COMPLETED) then
               player:completeQuest(JEUNO,BORGHERTZ_S_STRIKING_HANDS);
            end
         end
         -- Trial Weapon Skill: Club
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(11) == false) then
            player:addLearnedWeaponskill(11);
            player:PrintToPlayer("learns Black Halo!", 8);
         end
         -- Trial Weapon Skill: Hand-to-Hand
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(1) == false) then
            player:addLearnedWeaponskill(1);
            player:PrintToPlayer("learns Asuran Fists!", 8);
         end
         -- Trial Weapon Skill: Staff
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(12) == false) then
            player:addLearnedWeaponskill(12);
            player:PrintToPlayer("learns Retribution!", 8);
         end
      end,
      -- WHM
      [0x03] =  function (x)
         stock = {
              17422,  50000,   --Blessed Hammer
              13855,  100000,  --Healer's Cap
              12640,  100000,  --Healer's Briault
              13963,  100000,  --Healer's Mitts
              14216,  100000,  --Healer's Pantaloons
              14091,  100000,  --Healer's Duckbills
         }
         -- Artifact Quests
         if (player:getMainLvl() > 49) then
            if (player:getQuestStatus(SANDORIA,MESSENGER_FROM_BEYOND) ~= QUEST_COMPLETED) then
               player:completeQuest(SANDORIA,MESSENGER_FROM_BEYOND);
            end
            if (player:getQuestStatus(SANDORIA,PRELUDE_OF_BLACK_AND_WHITE) ~= QUEST_COMPLETED) then
               player:completeQuest(SANDORIA,PRELUDE_OF_BLACK_AND_WHITE);
            end
            if (player:getQuestStatus(SANDORIA,PIEUJE_S_DECISION) ~= QUEST_COMPLETED) then
               player:completeQuest(SANDORIA,PIEUJE_S_DECISION);
            end
            if (player:getQuestStatus(JEUNO,BORGHERTZ_S_HEALING_HANDS) ~= QUEST_COMPLETED) then
               player:completeQuest(JEUNO,BORGHERTZ_S_HEALING_HANDS);
            end
         end
         -- Trial Weapon Skill: Club
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(11) == false) then
            player:addLearnedWeaponskill(11);
            player:PrintToPlayer("learns Black Halo!", 8);
         end
         -- Trial Weapon Skill: Staff
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(12) == false) then
            player:addLearnedWeaponskill(12);
            player:PrintToPlayer("learns Retribution!", 8);
         end
      end,
      -- BLM
      [0x04] =  function (x)
         stock = {
              17423,  50000,   --Casting Wand
              13856,  100000,  --Wizard's Petasos
              12641,  100000,  --Wizard's Coat
              13964,  100000,  --Wizard's Gloves
              14217,  100000,  --Wizard's Tonban
              14092,  100000,  --Wizard's Sabots
         }
         -- Artifact Quests
         if (player:getMainLvl() > 49) then
            if (player:getQuestStatus(WINDURST,THE_THREE_MAGI) ~= QUEST_COMPLETED) then
               player:completeQuest(WINDURST,THE_THREE_MAGI);
            end
            if (player:getQuestStatus(WINDURST,RECOLLECTIONS) ~= QUEST_COMPLETED) then
               player:completeQuest(WINDURST,RECOLLECTIONS);
            end
            if (player:getQuestStatus(WINDURST,THE_ROOT_OF_THE_PROBLEM) ~= QUEST_COMPLETED) then
               player:completeQuest(WINDURST,THE_ROOT_OF_THE_PROBLEM);
            end
            if (player:getQuestStatus(JEUNO,BORGHERTZ_S_SORCEROUS_HANDS) ~= QUEST_COMPLETED) then
               player:completeQuest(JEUNO,BORGHERTZ_S_SORCEROUS_HANDS);
            end
         end
         -- Trial Weapon Skill: Club
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(11) == false) then
            player:addLearnedWeaponskill(11);
            player:PrintToPlayer("learns Black Halo!", 8);
         end
         -- Trial Weapon Skill: Staff
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(12) == false) then
            player:addLearnedWeaponskill(12);
            player:PrintToPlayer("learns Retribution!", 8);
         end
      end,
      -- RDM
      [0x05] =  function (x)
         stock = {
              16829,  50000,   --Fencing Degen
              12513,  100000,  --Warlock's Chapeau
              12642,  100000,  --Warlock's Tabard
              13965,  100000,  --Warlock's Gloves
              14218,  100000,  --Warlock's Tights
              14093,  100000,  --Warlock's Boots
         }
         -- Artifact Quests
         if (player:getMainLvl() > 49) then
            if (player:getQuestStatus(SANDORIA,THE_CRIMSON_TRIAL) ~= QUEST_COMPLETED) then
               player:completeQuest(SANDORIA,THE_CRIMSON_TRIAL);
            end
            if (player:getQuestStatus(SANDORIA,ENVELOPED_IN_DARKNESS) ~= QUEST_COMPLETED) then
               player:completeQuest(SANDORIA,ENVELOPED_IN_DARKNESS);
            end
            if (player:getQuestStatus(SANDORIA,PEACE_FOR_THE_SPIRIT) ~= QUEST_COMPLETED) then
               player:completeQuest(SANDORIA,PEACE_FOR_THE_SPIRIT);
            end
            if (player:getQuestStatus(JEUNO,BORGHERTZ_S_VERMILLION_HANDS) ~= QUEST_COMPLETED) then
               player:completeQuest(JEUNO,BORGHERTZ_S_VERMILLION_HANDS);
            end
         end
         -- Trial Weapon Skill: Dagger
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(2) == false) then
            player:addLearnedWeaponskill(2);
            player:PrintToPlayer("learns Evisceration!", 8);
         end
         -- Trial Weapon Skill: Sword
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(11) == false) then
            player:addLearnedWeaponskill(11);
            player:PrintToPlayer("learns Savage Blade!", 8);
         end
      end,
      -- THF
      [0x06] =  function (x)
         stock = {
              16764,  50000,   --Marauder's Knife
              12514,  100000,  --Rogue's Bonnet
              12643,  100000,  --Rogue's Vest
              13966,  100000,  --Rogue's Armlets
              14219,  100000,  --Rogue's Culottes
              14094,  100000,  --Rogue's Paulaines
         }
         -- Artifact Quests
         if (player:getMainLvl() > 49) then
            if (player:getQuestStatus(WINDURST,THE_TENSHODO_SHOWDOWN) ~= QUEST_COMPLETED) then
               player:completeQuest(WINDURST,THE_TENSHODO_SHOWDOWN);
            end
            if (player:getQuestStatus(WINDURST,AS_THICK_AS_THIEVES) ~= QUEST_COMPLETED) then
               player:completeQuest(WINDURST,AS_THICK_AS_THIEVES);
            end
            if (player:getQuestStatus(WINDURST,HITTING_THE_MARQUISATE) ~= QUEST_COMPLETED) then
               player:completeQuest(WINDURST,HITTING_THE_MARQUISATE);
            end
            if (player:getQuestStatus(JEUNO,BORGHERTZ_S_SNEAKY_HANDS) ~= QUEST_COMPLETED) then
               player:completeQuest(JEUNO,BORGHERTZ_S_SNEAKY_HANDS);
            end
         end
         -- Trial Weapon Skill: Dagger
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(2) == false) then
            player:addLearnedWeaponskill(2);
            player:PrintToPlayer("learns Evisceration!", 8);
         end
      end,
      -- PLD
      [0x07] =  function (x)
         stock = {
              17643,  50000,   --Honor Sword
              12515,  100000,  --Gallant Coronet
              12644,  100000,  --Gallant Surcoat
              13967,  100000,  --Gallant Gauntlets
              14220,  100000,  --Gallant Breeches
              14095,  100000,  --Gallant Leggings
         }
         -- Subjob Quests
         if (player:getQuestStatus(SANDORIA,A_SQUIRE_S_TEST) ~= QUEST_COMPLETED) then
            player:completeQuest(SANDORIA,A_SQUIRE_S_TEST);
         end
         if (player:getQuestStatus(SANDORIA,A_SQUIRE_S_TEST_II) ~= QUEST_COMPLETED) then
            player:completeQuest(SANDORIA,A_SQUIRE_S_TEST_II);
         end
         if (player:getQuestStatus(SANDORIA,A_KNIGHT_S_TEST) ~= QUEST_COMPLETED) then
            player:completeQuest(SANDORIA,A_KNIGHT_S_TEST);
         end
         if (player:hasKeyItem(SQUIRE_CERTIFICATE) == false) then
            player:addKeyItem(SQUIRE_CERTIFICATE);
         end
         -- Artifact Quests
         if (player:getMainLvl() > 49) then
            if (player:getQuestStatus(SANDORIA,SHARPENING_THE_SWORD) ~= QUEST_COMPLETED) then
               player:completeQuest(SANDORIA,SHARPENING_THE_SWORD);
            end
            if (player:getQuestStatus(SANDORIA,A_BOY_S_DREAM) ~= QUEST_COMPLETED) then
               player:completeQuest(SANDORIA,A_BOY_S_DREAM);
            end
            if (player:getQuestStatus(SANDORIA,UNDER_OATH) ~= QUEST_COMPLETED) then
               player:completeQuest(SANDORIA,UNDER_OATH);
            end
            if (player:getQuestStatus(JEUNO,BORGHERTZ_S_STALWART_HANDS) ~= QUEST_COMPLETED) then
               player:completeQuest(JEUNO,BORGHERTZ_S_STALWART_HANDS);
            end
         end
         -- Trial Weapon Skill: Club
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(11) == false) then
            player:addLearnedWeaponskill(11);
            player:PrintToPlayer("learns Black Halo!", 8);
         end
         -- Trial Weapon Skill: Great Sword
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(4) == false) then
            player:addLearnedWeaponskill(4);
            player:PrintToPlayer("learns Ground Strike!", 8);
         end
         -- Trial Weapon Skill: Staff
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(12) == false) then
            player:addLearnedWeaponskill(12);
            player:PrintToPlayer("learns Retribution!", 8);
         end
         -- Trial Weapon Skill: Polearm
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(8) == false) then
            player:addLearnedWeaponskill(8);
            player:PrintToPlayer("learns Impulse Drive!", 8);
         end
         -- Trial Weapon Skill: Sword
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(3) == false) then
            player:addLearnedWeaponskill(3);
            player:PrintToPlayer("learns Savage Blade!", 8);
         end
      end,
      -- DRK
      [0x08] =  function (x)
         stock = {
              16798,  50000,   --Raven Scythe
              12516,  100000,  --Chaos Burgeonet
              12645,  100000,  --Chaos Cuirass
              13968,  100000,  --Chaos Gauntlets
              14221,  100000,  --Chaos Flanchard
              14096,  100000,  --Chaos Sollerets
         }
         -- Subjob Quests
         if (player:getQuestStatus(BASTOK,BLADE_OF_DARKNESS) ~= QUEST_COMPLETED) then
            player:completeQuest(BASTOK,BLADE_OF_DARKNESS);
         end
         if (player:getQuestStatus(BASTOK,BLADE_OF_DEATH) ~= QUEST_COMPLETED) then
            player:completeQuest(BASTOK,BLADE_OF_DEATH);
         end
         -- Artifact Quests
         if (player:getMainLvl() > 49) then
            if (player:getQuestStatus(BASTOK,DARK_LEGACY) ~= QUEST_COMPLETED) then
               player:completeQuest(BASTOK,DARK_LEGACY);
            end
            if (player:getQuestStatus(BASTOK,DARK_PUPPET) ~= QUEST_COMPLETED) then
               player:completeQuest(BASTOK,DARK_PUPPET);
            end
            if (player:getQuestStatus(BASTOK,BLADE_OF_EVIL) ~= QUEST_COMPLETED) then
               player:completeQuest(BASTOK,BLADE_OF_EVIL);
            end
            if (player:getQuestStatus(JEUNO,BORGHERTZ_S_SHADOWY_HANDS) ~= QUEST_COMPLETED) then
               player:completeQuest(JEUNO,BORGHERTZ_S_SHADOWY_HANDS);
            end
         end
         -- Trial Weapon Skill: Axe
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(5) == false) then
            player:addLearnedWeaponskill(5);
            player:PrintToPlayer("learns Decimation!", 8);
         end
         -- Trial Weapon Skill: Great Axe
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(6) == false) then
            player:addLearnedWeaponskill(6);
            player:PrintToPlayer("learns Steel Cyclone!", 8);
         end
         -- Trial Weapon Skill: Great Sword
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(4) == false) then
            player:addLearnedWeaponskill(4);
            player:PrintToPlayer("learns Ground Strike!", 8);
         end
         -- Trial Weapon Skill: Scythe
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(7) == false) then
            player:addLearnedWeaponskill(7);
            player:PrintToPlayer("learns Spiral Hell!", 8);
         end
         -- Trial Weapon Skill: Sword
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(3) == false) then
            player:addLearnedWeaponskill(3);
            player:PrintToPlayer("learns Savage Blade!", 8);
         end
      end,
      -- BST
      [0x09] =  function (x)
         stock = {
              16680,  50000,   --Barbaroi Axe
              12517,  100000,  --Beast Helm
              12646,  100000,  --Beast Jackcoat
              13969,  100000,  --Beast Gloves
              14222,  100000,  --Beast Trousers
              14097,  100000,  --Beast Gaiters
         }
         -- Subjob Quests
         if (player:getQuestStatus(JEUNO,SAVE_MY_SON) ~= QUEST_COMPLETED) then
            player:completeQuest(JEUNO,SAVE_MY_SON);
         end
         if (player:getQuestStatus(JEUNO,PATH_OF_THE_BEASTMASTER) ~= QUEST_COMPLETED) then
            player:completeQuest(JEUNO,PATH_OF_THE_BEASTMASTER);
         end
         -- Artifact Quests
         if (player:getMainLvl() > 49) then
            if (player:getQuestStatus(JEUNO,WINGS_OF_GOLD) ~= QUEST_COMPLETED) then
               player:completeQuest(JEUNO,WINGS_OF_GOLD);
            end
            if (player:getQuestStatus(JEUNO,SCATTERED_INTO_SHADOW) ~= QUEST_COMPLETED) then
               player:completeQuest(JEUNO,SCATTERED_INTO_SHADOW);
            end
            if (player:getQuestStatus(JEUNO,A_NEW_DAWN) ~= QUEST_COMPLETED) then
               player:completeQuest(JEUNO,A_NEW_DAWN);
            end
            if (player:getQuestStatus(JEUNO,BORGHERTZ_S_WILD_HANDS) ~= QUEST_COMPLETED) then
               player:completeQuest(JEUNO,BORGHERTZ_S_WILD_HANDS);
            end
         end
         -- Trial Weapon Skill: Axe
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(5) == false) then
            player:addLearnedWeaponskill(5);
            player:PrintToPlayer("learns Decimation!", 8);
         end
         -- Trial Weapon Skill: Dagger
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(2) == false) then
            player:addLearnedWeaponskill(2);
            player:PrintToPlayer("learns Evisceration!", 8);
         end
         -- Trial Weapon Skill: Scythe
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(7) == false) then
            player:addLearnedWeaponskill(7);
            player:PrintToPlayer("learns Spiral Hell!", 8);
         end
      end,
      -- BRD
      [0x0A] =  function (x)
         stock = {
              16766,  50000,   --Paper Knife
              13857,  100000,  --Choral Roundlet
              12647,  100000,  --Choral Justacorps
              13970,  100000,  --Choral Cuffs
              14223,  100000,  --Choral Cannions
              14098,  100000,  --Choral Slippers
         }
         -- Subjob Quests
         if (player:getQuestStatus(JEUNO,THE_OLD_MONUMENT) ~= QUEST_COMPLETED) then
            player:completeQuest(JEUNO,THE_OLD_MONUMENT);
         end
         if (player:getQuestStatus(JEUNO,A_MINSTREL_IN_DESPAIR) ~= QUEST_COMPLETED) then
            player:completeQuest(JEUNO,A_MINSTREL_IN_DESPAIR);
         end
         if (player:getQuestStatus(JEUNO,PATH_OF_THE_BARD) ~= QUEST_COMPLETED) then
            player:completeQuest(JEUNO,PATH_OF_THE_BARD);
         end
         -- Artifact Quests
         if (player:getMainLvl() > 49) then
            if (player:getQuestStatus(JEUNO,PAINFUL_MEMORY) ~= QUEST_COMPLETED) then
               player:completeQuest(JEUNO,PAINFUL_MEMORY);
            end
            if (player:getQuestStatus(JEUNO,THE_REQUIEM) ~= QUEST_COMPLETED) then
               player:completeQuest(JEUNO,THE_REQUIEM);
            end
            if (player:getQuestStatus(JEUNO,THE_CIRCLE_OF_TIME) ~= QUEST_COMPLETED) then
               player:completeQuest(JEUNO,THE_CIRCLE_OF_TIME);
            end
            if (player:getQuestStatus(JEUNO,BORGHERTZ_S_HARMONIOUS_HANDS) ~= QUEST_COMPLETED) then
               player:completeQuest(JEUNO,BORGHERTZ_S_HARMONIOUS_HANDS);
            end
         end
         -- Trial Weapon Skill: Dagger
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(2) == false) then
            player:addLearnedWeaponskill(2);
            player:PrintToPlayer("learns Evisceration!", 8);
         end
         -- Trial Weapon Skill: Staff
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(12) == false) then
            player:addLearnedWeaponskill(12);
            player:PrintToPlayer("learns Retribution!", 8);
         end
      end,
      -- RNG
      [0x0B] =  function (x)
         stock = {
              17188,  50000,   --Sniping Bow
              12518,  100000,  --Hunter's Beret
              12648,  100000,  --Hunter's Jerkin
              13971,  100000,  --Hunter's Bracers
              14224,  100000,  --Hunter's Braccae
              14099,  100000,  --Hunter's Socks
         }
         -- Subjob Quests
         if (player:getQuestStatus(WINDURST,THE_FANGED_ONE) ~= QUEST_COMPLETED) then
            player:completeQuest(WINDURST,THE_FANGED_ONE);
         end
         -- Artifact Quests
         if (player:getMainLvl() > 49) then
            if (player:getQuestStatus(WINDURST,SIN_HUNTING) ~= QUEST_COMPLETED) then
               player:completeQuest(WINDURST,SIN_HUNTING);
            end
            if (player:getQuestStatus(WINDURST,FIRE_AND_BRIMSTONE) ~= QUEST_COMPLETED) then
               player:completeQuest(WINDURST,FIRE_AND_BRIMSTONE);
            end
            if (player:getQuestStatus(WINDURST,UNBRIDLED_PASSION) ~= QUEST_COMPLETED) then
               player:completeQuest(WINDURST,UNBRIDLED_PASSION);
            end
            if (player:getQuestStatus(JEUNO,BORGHERTZ_S_CHASING_HANDS) ~= QUEST_COMPLETED) then
               player:completeQuest(JEUNO,BORGHERTZ_S_CHASING_HANDS);
            end
         end
         -- Trial Weapon Skill: Archery
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(13) == false) then
            player:addLearnedWeaponskill(13);
            player:PrintToPlayer("learns Empyreal Arrow!", 8);
         end
         -- Trial Weapon Skill: Axe
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(5) == false) then
            player:addLearnedWeaponskill(5);
            player:PrintToPlayer("learns Decimation!", 8);
         end
         -- Trial Weapon Skill: Marksmanshop
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(14) == false) then
            player:addLearnedWeaponskill(14);
            player:PrintToPlayer("learns Detonator!", 8);
         end
         -- Trial Weapon Skill: Dagger
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(2) == false) then
            player:addLearnedWeaponskill(2);
            player:PrintToPlayer("learns Evisceration!", 8);
         end
      end,
      -- SAM
      [0x0C] =  function (x)
         stock = {
              17812,  50000,   --Magoroku
              13868,  100000,  --Myochin Kabuto
              13781,  100000,  --Myochin Domaru
              13972,  100000,  --Myochin Kote
              14225,  100000,  --Myochin Haidate
              14100,  100000,  --Myochin Sune-Ate
         }
         -- Subjob Quests
         if (player:getQuestStatus(NORG,FORGE_YOUR_DESTINY) ~= QUEST_COMPLETED) then
            player:completeQuest(NORG,FORGE_YOUR_DESTINY);
         end
         -- Artifact Quests
         if (player:getMainLvl() > 49) then
            if (player:getQuestStatus(NORG,THE_SACRED_KATANA) ~= QUEST_COMPLETED) then
               player:completeQuest(NORG,THE_SACRED_KATANA);
            end
            if (player:getQuestStatus(NORG,YOMI_OKURI) ~= QUEST_COMPLETED) then
               player:completeQuest(NORG,YOMI_OKURI);
            end
            if (player:getQuestStatus(NORG,A_THIEF_IN_NORG) ~= QUEST_COMPLETED) then
               player:completeQuest(NORG,A_THIEF_IN_NORG);
            end
            if (player:getQuestStatus(JEUNO,BORGHERTZ_S_LOYAL_HANDS) ~= QUEST_COMPLETED) then
               player:completeQuest(JEUNO,BORGHERTZ_S_LOYAL_HANDS);
            end
         end
         -- Trial Weapon Skill: Great Katana
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(10) == false) then
            player:addLearnedWeaponskill(10);
            player:PrintToPlayer("learns Tachi: Kasha!", 8);
         end
         -- Trial Weapon Skill: Polearm
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(8) == false) then
            player:addLearnedWeaponskill(8);
            player:PrintToPlayer("learns Impulse Drive!", 8);
         end
      end,
      -- NIN
      [0x0D] =  function (x)
         stock = {
              17771,  25000,   --Anju
              17772,  25000,   --Zushio
              13869,  100000,  --Ninja Hatsuburi
              13782,  100000,  --Ninja Chainmail
              13973,  100000,  --Ninja Tekko
              14226,  100000,  --Ninja Hakama
              14101,  100000,  --Ninja Kyahan
         }
         -- Subjob Quests
         if (player:getQuestStatus(BASTOK,AYAME_AND_KAEDE) ~= QUEST_COMPLETED) then
            player:completeQuest(BASTOK,AYAME_AND_KAEDE);
         end
         -- Artifact Quests
         if (player:getMainLvl() > 49) then
            if (player:getQuestStatus(NORG,TWENTY_IN_PIRATE_YEARS) ~= QUEST_COMPLETED) then
               player:completeQuest(NORG,TWENTY_IN_PIRATE_YEARS);
            end
            if (player:getQuestStatus(NORG,I_LL_TAKE_THE_BIG_BOX) ~= QUEST_COMPLETED) then
               player:completeQuest(NORG,I_LL_TAKE_THE_BIG_BOX);
            end
            if (player:getQuestStatus(NORG,TRUE_WILL) ~= QUEST_COMPLETED) then
               player:completeQuest(NORG,TRUE_WILL);
            end
            if (player:getQuestStatus(JEUNO,BORGHERTZ_S_LURKING_HANDS) ~= QUEST_COMPLETED) then
               player:completeQuest(JEUNO,BORGHERTZ_S_LURKING_HANDS);
            end
         end
         -- Trial Weapon Skill: Dagger
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(2) == false) then
            player:addLearnedWeaponskill(2);
            player:PrintToPlayer("learns Evisceration!", 8);
         end
         -- Trial Weapon Skill: Great Katana
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(10) == false) then
            player:addLearnedWeaponskill(10);
            player:PrintToPlayer("learns Tachi: Kasha!", 8);
         end
         -- Trial Weapon Skill: Katana
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(9) == false) then
            player:addLearnedWeaponskill(9);
            player:PrintToPlayer("learns Blade: Ku!", 8);
         end
      end,
      -- DRG
      [0x0E] =  function (x)
         stock = {
              16887,  50000,   --Peregrine
              12519,  100000,  --Drachen Armet
              12649,  100000,  --Drachen Mail
              13974,  100000,  --Drachen Finger Gauntlets
              14227,  100000,  --Drachen Brais
              14102,  100000,  --Drachen Greaves
         }
         -- Subjob Quests
         if (player:getQuestStatus(SANDORIA,THE_HOLY_CREST) ~= QUEST_COMPLETED) then
            player:completeQuest(SANDORIA,THE_HOLY_CREST);
         end
         -- Artifact Quests
         if (player:getMainLvl() > 49) then
            if (player:getQuestStatus(SANDORIA,A_CRAFTSMAN_S_WORK) ~= QUEST_COMPLETED) then
               player:completeQuest(SANDORIA,A_CRAFTSMAN_S_WORK);
            end
            if (player:getQuestStatus(SANDORIA,CHASING_QUOTAS) ~= QUEST_COMPLETED) then
               player:completeQuest(SANDORIA,CHASING_QUOTAS);
            end
            if (player:getQuestStatus(SANDORIA,KNIGHT_STALKER) ~= QUEST_COMPLETED) then
               player:completeQuest(SANDORIA,KNIGHT_STALKER);
            end
            if (player:getQuestStatus(JEUNO,BORGHERTZ_S_DRAGON_HANDS) ~= QUEST_COMPLETED) then
               player:completeQuest(JEUNO,BORGHERTZ_S_DRAGON_HANDS);
            end
         end
         -- Trial Weapon Skill: Polearm
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(8) == false) then
            player:addLearnedWeaponskill(8);
            player:PrintToPlayer("learns Impulse Drive!", 8);
         end
         -- Trial Weapon Skill: Staff
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(12) == false) then
            player:addLearnedWeaponskill(12);
            player:PrintToPlayer("learns Retribution!", 8);
         end
      end,
      -- SMN
      [0x0F] =  function (x)
         stock = {
              17532,  50000,   --Kukulcan's Staff
              12520,  100000,  --Evoker's Horn
              12650,  100000,  --Evoker's Doublet
              13975,  100000,  --Evoker's Bracers
              14228,  100000,  --Evoker's Spats
              14103,  100000,  --Evoker's Pigaches
              14625,  1000000, --Evoker's Ring
         }
         -- Subjob Quests
         if (player:getQuestStatus(WINDURST,I_CAN_HEAR_A_RAINBOW) ~= QUEST_COMPLETED) then
            player:completeQuest(WINDURST,I_CAN_HEAR_A_RAINBOW);
         end
         -- Artifact Quests
         if (player:getMainLvl() > 49) then
            if (player:getQuestStatus(WINDURST,THE_PUPPET_MASTER) ~= QUEST_COMPLETED) then
               player:completeQuest(WINDURST,THE_PUPPET_MASTER);
            end
            if (player:getQuestStatus(WINDURST,CLASS_REUNION) ~= QUEST_COMPLETED) then
               player:completeQuest(WINDURST,CLASS_REUNION);
            end
            if (player:getQuestStatus(WINDURST,CARBUNCLE_DEBACLE) ~= QUEST_COMPLETED) then
               player:completeQuest(WINDURST,CARBUNCLE_DEBACLE);
            end
            if (player:getQuestStatus(JEUNO,BORGHERTZ_S_CALLING_HANDS) ~= QUEST_COMPLETED) then
               player:completeQuest(JEUNO,BORGHERTZ_S_CALLING_HANDS);
            end
         end
         -- Trial Weapon Skill: Club
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(11) == false) then
            player:addLearnedWeaponskill(11);
            player:PrintToPlayer("learns Black Halo!", 8);
         end
         -- Trial Weapon Skill: Staff
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(12) == false) then
            player:addLearnedWeaponskill(12);
            player:PrintToPlayer("learns Retribution!", 8);
         end
      end,
      -- BLU
      [0x10] =  function (x)
         stock = {
              17717,  50000,   --Immortal's Scimitar
              15265,  100000,  --Magus Keffiyeh
              14521,  100000,  --Magus Jubbah
              14928,  100000,  --Magus Bazubands
              15600,  100000,  --Magus Shalwar
              15684,  100000,  --Magus Charuqs
         }
         -- Subjob Quests
         if (player:getQuestStatus(WEST_AHT_URHGAN,AN_EMPTY_VESSEL) ~= QUEST_COMPLETED) then
            player:completeQuest(WEST_AHT_URHGAN,AN_EMPTY_VESSEL);
         end
         -- Artifact Quests
         if (player:getMainLvl() > 49) then
            if (player:getQuestStatus(WEST_AHT_URHGAN,BEGINNINGS) ~= QUEST_COMPLETED) then
               player:completeQuest(WEST_AHT_URHGAN,BEGINNINGS);
            end
            if (player:getQuestStatus(WEST_AHT_URHGAN,OMENS) ~= QUEST_COMPLETED) then
               player:completeQuest(WEST_AHT_URHGAN,OMENS);
            end
            if (player:getQuestStatus(WEST_AHT_URHGAN,TRANSFORMATIONS) ~= QUEST_COMPLETED) then
               player:completeQuest(WEST_AHT_URHGAN,TRANSFORMATIONS);
            end
         end
         -- Trial Weapon Skill: Club
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(11) == false) then
            player:addLearnedWeaponskill(11);
            player:PrintToPlayer("learns Black Halo!", 8);
         end
         -- Trial Weapon Skill: Sword
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(3) == false) then
            player:addLearnedWeaponskill(3);
            player:PrintToPlayer("learns Savage Blade!", 8);
         end
      end,
      -- COR
      [0x11] =  function (x)
         stock = {
              18702,  50000,   --Trump Gun
              15266,  100000,  --Corsair's Tricorne
              14522,  100000,  --Corsair's Frac
              14929,  100000,  --Corsair's Gants
              15601,  100000,  --Corsair's Culottes
              15685,  100000,  --Corsair's Bottes
              17737,  500000,  --Corsair's Scimitar
         }
         -- Subjob Quests
         if (player:getQuestStatus(WEST_AHT_URHGAN,LUCK_OF_THE_DRAW) ~= QUEST_COMPLETED) then
            player:completeQuest(WEST_AHT_URHGAN,LUCK_OF_THE_DRAW);
         end
         -- Artifact Quests
         if (player:getMainLvl() > 49) then
            if (player:getQuestStatus(WEST_AHT_URHGAN,EQUIPED_FOR_ALL_OCCASIONS) ~= QUEST_COMPLETED) then
               player:completeQuest(WEST_AHT_URHGAN,EQUIPED_FOR_ALL_OCCASIONS);
            end
            if (player:getQuestStatus(WEST_AHT_URHGAN,NAVIGATING_THE_UNFRIENDLY_SEAS) ~= QUEST_COMPLETED) then
               player:completeQuest(WEST_AHT_URHGAN,NAVIGATING_THE_UNFRIENDLY_SEAS);
            end
            if (player:getQuestStatus(WEST_AHT_URHGAN,AGAINST_ALL_ODDS) ~= QUEST_COMPLETED) then
               player:completeQuest(WEST_AHT_URHGAN,AGAINST_ALL_ODDS);
            end
         end
         -- Trial Weapon Skill: Marksmanshop
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(14) == false) then
            player:addLearnedWeaponskill(14);
            player:PrintToPlayer("learns Detonator!", 8);
         end
         -- Trial Weapon Skill: Dagger
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(2) == false) then
            player:addLearnedWeaponskill(2);
            player:PrintToPlayer("learns Evisceration!", 8);
         end
         -- Trial Weapon Skill: Sword
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(3) == false) then
            player:addLearnedWeaponskill(3);
            player:PrintToPlayer("learns Savage Blade!", 8);
         end
      end,
      -- PUP
      [0x12] =  function (x)
         stock = {
              17858,  50000,   --Turbo Animator
              15267,  100000,  --Puppetry Taj
              14523,  100000,  --Puppetry Tobe
              14930,  100000,  --Puppetry Dastanas
              15602,  100000,  --Puppetry Churidars
              15686,  100000,  --Puppetry Babouches
         }
         -- Subjob Quests
         if (player:getQuestStatus(WEST_AHT_URHGAN,NO_STRINGS_ATTACHED) ~= QUEST_COMPLETED) then
            player:completeQuest(WEST_AHT_URHGAN,NO_STRINGS_ATTACHED);
         end
         -- Artifact Quests
         if (player:getMainLvl() > 49) then
            if (player:getQuestStatus(WEST_AHT_URHGAN,THE_WAYWARD_AUTOMATION) ~= QUEST_COMPLETED) then
               player:completeQuest(WEST_AHT_URHGAN,THE_WAYWARD_AUTOMATION);
            end
            if (player:getQuestStatus(WEST_AHT_URHGAN,OPERATION_TEATIME) ~= QUEST_COMPLETED) then
               player:completeQuest(WEST_AHT_URHGAN,OPERATION_TEATIME);
            end
            if (player:getQuestStatus(WEST_AHT_URHGAN,PUPPETMASTER_BLUES) ~= QUEST_COMPLETED) then
               player:completeQuest(WEST_AHT_URHGAN,PUPPETMASTER_BLUES);
            end
         end
         -- Trial Weapon Skill: Hand-to-Hand
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(1) == false) then
            player:addLearnedWeaponskill(1);
            player:PrintToPlayer("learns Asuran Fists!", 8);
         end
      end,
      -- DNC
      [0x13] =  function (x)
         if (player:getGender() == 1) then
            -- male
            stock = {
                 19203,  50000,   --War Hoop
                 16138,  100000,  --Dancer's Tiara (M)
                 14578,  100000,  --Dancer's Casaque (M)
                 15002,  100000,  --Dancer's Bangles (M)
                 15659,  100000,  --Dancer's Tights (M)
                 15746,  100000,  --Dancer's Shoes (M)
            }
         else
            -- female
            stock = {
                 19203,  50000,   --War Hoop
                 16139,  100000,  --Dancer's Tiara (F)
                 14579,  100000,  --Dancer's Casaque (F)
                 15003,  100000,  --Dancer's Bangles (F)
                 15660,  100000,  --Dancer's Tights (F)
                 15747,  100000,  --Dancer's Shoes (F)
            }
         end
         -- Subjob Quests
         if (player:getQuestStatus(JEUNO,LAKESIDE_MINUET) ~= QUEST_COMPLETED) then
            player:completeQuest(JEUNO,LAKESIDE_MINUET);
         end
         -- Artifact Quests
         if (player:getMainLvl() > 49) then
            if (player:getQuestStatus(JEUNO,THE_UNFINISHED_WALTZ) ~= QUEST_COMPLETED) then
               player:completeQuest(JEUNO,THE_UNFINISHED_WALTZ);
            end
            if (player:getQuestStatus(JEUNO,THE_ROAD_TO_DIVADOM) ~= QUEST_COMPLETED) then
               player:completeQuest(JEUNO,THE_ROAD_TO_DIVADOM);
            end
            if (player:getQuestStatus(JEUNO,COMEBACK_QUEEN) ~= QUEST_COMPLETED) then
               player:completeQuest(JEUNO,COMEBACK_QUEEN);
            end
         end
         -- Trial Weapon Skill: Dagger
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(2) == false) then
            player:addLearnedWeaponskill(2);
            player:PrintToPlayer("learns Evisceration!", 8);
         end
      end,
      -- SCH
      [0x14] =  function (x)
         stock = {
              6058,   50000,   --Klimaform
              16140,  100000,  --Scholar's Mortarboard
              14580,  100000,  --Scholar's Gown
              15004,  100000,  --Scholar's Bracers
              16311,  100000,  --Scholar's Pants
              15748,  100000,  --Scholar's Loafers
         }
         -- Subjob Quests
         if (player:getQuestStatus(NORVALLEN_FRONT,A_LITTLE_KNOWLEDGE) ~= QUEST_COMPLETED) then
            player:completeQuest(NORVALLEN_FRONT,A_LITTLE_KNOWLEDGE);
         end
         if (player:hasKeyItem(GRIMOIRE) == false) then
            player:addKeyItem(GRIMOIRE);
         end
         -- Artifact Quests
         if (player:getMainLvl() > 49) then
            if (player:getQuestStatus(NORVALLEN_FRONT,ON_SABBATICAL) ~= QUEST_COMPLETED) then
               player:completeQuest(NORVALLEN_FRONT,ON_SABBATICAL);
            end
            if (player:getQuestStatus(NORVALLEN_FRONT,DOWNWARD_HELIX) ~= QUEST_COMPLETED) then
               player:completeQuest(NORVALLEN_FRONT,DOWNWARD_HELIX);
            end
            if (player:getQuestStatus(NORVALLEN_FRONT,SEEING_BLOOD_RED) ~= QUEST_COMPLETED) then
               player:completeQuest(NORVALLEN_FRONT,SEEING_BLOOD_RED);
            end
         end
         -- Trial Weapon Skill: Club
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(11) == false) then
            player:addLearnedWeaponskill(11);
            player:PrintToPlayer("learns Black Halo!", 8);
         end
         -- Trial Weapon Skill: Staff
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(12) == false) then
            player:addLearnedWeaponskill(12);
            player:PrintToPlayer("learns Retribution!", 8);
         end
      end,
      -- GEO
      [0x15] =  function (x)
         stock = {
              0x0585,  1656,   --Cattleya
         }
         -- Trial Weapon Skill: Club
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(11) == false) then
            player:addLearnedWeaponskill(11);
            player:PrintToPlayer("learns Black Halo!", 8);
         end
         -- Trial Weapon Skill: Staff
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(12) == false) then
            player:addLearnedWeaponskill(12);
            player:PrintToPlayer("learns Retribution!", 8);
         end
      end,
      -- RUN
      [0x16] =  function (x)
         stock = {
              0x0585,  1656,   --Cattleya
         }
         -- Trial Weapon Skill: Axe
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(5) == false) then
            player:addLearnedWeaponskill(5);
            player:PrintToPlayer("learns Decimation!", 8);
         end
         -- Trial Weapon Skill: Great Axe
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(6) == false) then
            player:addLearnedWeaponskill(6);
            player:PrintToPlayer("learns Steel Cyclone!", 8);
         end
         -- Trial Weapon Skill: Great Sword
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(4) == false) then
            player:addLearnedWeaponskill(4);
            player:PrintToPlayer("learns Ground Strike!", 8);
         end
         -- Trial Weapon Skill: Sword
         if (player:getMainLvl() > 70 and player:hasLearnedWeaponskill(3) == false) then
            player:addLearnedWeaponskill(3);
            player:PrintToPlayer("learns Savage Blade!", 8);
         end
      end,
   }
   if (player:getMainLvl() > 49) then
       showShop(player,WINDURST,stock);
       player:PrintToPlayer( "Welcome to the Artifact Armor Shop, Kupo!", 0xF);
   else
       player:PrintToPlayer( "You must be level 50 or higher to access this shop, Kupo.", 0xE);
    end
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;