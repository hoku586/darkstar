-----------------------------------
-- Area: Port Bastok
-- NPC: Sawyer
-- Standard Merchant NPC
-- Confirmed shop stock, August 2013
-----------------------------------

require("scripts/globals/shop");
package.loaded["scripts/zones/Southern_San_dOria/TextIDs"] = nil;
require("scripts/zones/Southern_San_dOria/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
end; 

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    
    player:showText(npc,ASH_THADI_ENE_SHOP_DIALOG);

    local stock = {0x370F,50000,3,     --Boomerang
             0x368F,50000,3, --Great Bow
             0x30E3,50000,3,     --Silver Arrow
             0x378C,50000,3,     --Wrapped Bow
             0x3164,50000,3,     --Wrapped Bow
             0x43b8,5,2,     --Crossbow Bolt
             0x43aa,126,2,     --Fire Arrow
             0x43a8,7,2,     --Iron Arrow
             0x4301,482,2,     --Self Bow

             0x4308,442,3,     --Longbow
             0x4300,38,3,     --Shortbow
             0x43a6,3,3,     --Wooden Arrow
             0x13a5,4320,3}     --Scroll of Battlefield Elegy

    showNationShop(player, NATION_SANDORIA, stock);

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
