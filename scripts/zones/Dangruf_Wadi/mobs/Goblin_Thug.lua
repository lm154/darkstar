-----------------------------------
-- Area: Dangruf Wadi
--  Mob: Goblin Thug
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------

function onMobDeath(mob, player, isKiller)
    dsp.regime.checkRegime(player, mob, 640, 1, dsp.regime.type.GROUNDS)
end;
