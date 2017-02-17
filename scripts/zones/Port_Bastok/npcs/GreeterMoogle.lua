-----------------------------------
-- Area: Port Bastok
-- NPC: Sawyer
-- Standard Merchant NPC
-- Confirmed shop stock, August 2013
-----------------------------------

require("scripts/globals/shop");
package.loaded["scripts/zones/Port_Bastok/TextIDs"] = nil;
require("scripts/zones/Port_Bastok/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    player:showText(npc,SAWYER_SHOP_DIALOG);

    stock = {
        0x2C1A, 50000,3,     --Pumpernickel
        0x42B2, 50000,3,     --Chocobo Wand
        0x44B3, 50000,3,     --Trick Staff II
		0x47E0, 50000,3,     --Charm Wand +1
        0x47E1, 50000,3,     --Moogle Rod
        0x3D89, 50000,3,     --Dream Boots +1
        0x3EF6, 50000,2,     --Moogle cap
        0x2CEC, 50000,3,     --Chocobo Beret
		0x2CEC, 50000,3,     --Chocobo Beret
        0x1193,    92,3,     --Iron Bread
        0x1154,   294,3,     --Baked Popoto
        0x1167,   184,3,     --Pebble Soup
        0x119D,    10,3      --Distilled Water
    }
    showNationShop(player, NATION_BASTOK, stock);

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
