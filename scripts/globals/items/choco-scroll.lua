-----------------------------------------
-- ID: 5917
-- Item: Choco-scroll
-- Food Effect: 3 Min, All Races
-----------------------------------------
-- Mind 1
-- Speed 12.5%
-----------------------------------------
require("scripts/globals/status")
require("scripts/globals/msg")
-----------------------------------------

function onItemCheck(target)
    local result = 0
    if target:hasStatusEffect(dsp.effect.FOOD) or target:hasStatusEffect(dsp.effect.FIELD_SUPPORT_FOOD) then
        result = dsp.msg.basic.IS_FULL
    end
    return result
end

function onItemUse(target)
    target:addStatusEffect(dsp.effect.FOOD,0,0,180,5917)
end

function onEffectGain(target,effect)
    target:addMod(dsp.mod.MND, 1)
    target:addMod(dsp.mod.MOVE, 13)
end

function onEffectLose(target, effect)
    target:delMod(dsp.mod.MND, 1)
    target:delMod(dsp.mod.MOVE, 13)
end
