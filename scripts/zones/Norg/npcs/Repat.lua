-----------------------------------
-- Area: Norg
-- NPC: Solby-Maholby
-- Standard Merchant NPC
-----------------------------------

require("scripts/globals/shop");
package.loaded["scripts/zones/Norg/TextIDs"] = nil;
require("scripts/zones/Norg/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    
player:showText(npc,SOLBYMAHOLBY_SHOP_DIALOG);

stock = {0x3792,50000,        -- nin AF 1
     0x3715,50000,        -- Ninja AF 2
     0x362D,50000,        -- Ninja AF 3
     0x35D6,50000,        -- Nin af 4
     0x3695,50000,        -- Nin af 5	
     0x136A,140319,        -- Scroll of Gekka: Ichi
     0x136B,140319,        -- Scroll of Yain: Ichi     
     0x0b36,9000}        -- Norg Waystone
    
 
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

