-----------------------------------
-- Area: Nashmau
-- NPC: Poporoon
-- Standard Merchant NPC
-----------------------------------
package.loaded["scripts/zones/Nashmau/TextIDs"] = nil;
-----------------------------------

require("scripts/zones/Nashmau/TextIDs");
require("scripts/globals/shop");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    
player:showText(npc,POPOROON_SHOP_DIALOG);

stock = {0x0880,48,        -- Fire Card
     0x0881,48,        -- Ice Card
     0x0882,48,        -- Wind Card
     0x0883,48,        -- Earth Card
     0x0884,48,        -- Thunder Card
     0x0885,48,        -- Water Card
     0x0886,48,        -- Light Card
     0x0887,48,        -- Dark Card
     0x16ee,10000,        -- Trump Card Case
     0x1570,35200,        -- Samurai Die
     0x1571,600,        -- Ninja Die
     0x3BA2,50000,        -- Dragoon Die
     0x3A51,50000,        -- Summoner Die
     0x38Ba,50000,        -- Blue Mage Die
     0x3Cf1,50000,        -- Corsar Die
     0x3D45,50000}        -- Puppetmaster Die
 
showShop(player, STATIC, stock);
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

