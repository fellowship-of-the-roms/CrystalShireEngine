AbilityText_MadeItRain:
    text "<USER>'s"
    line "DRIZZLE made it"
    cont "rain!"
    prompt

AbilityText_SunRaysIntensified:
    text "<USER>'s"
    line "DROUGHT intensif-"
    cont "ied the sun's rays!"
    prompt

AbilityText_WhippedUpASandStorm:
    text "<USER>'s"
    line "SAND STREAM whipp-"
    cont "ed up a sandstorm!"
    prompt

AbilityText_ExertingPressure:
    text "<USER>"
    line "is exerting its"
    cont "PRESSURE!"
    prompt

AbilityText_IntimidateCutsAttack:
    text "<USER>'s"
    line "INTIMIDATE cuts"

    para "<TARGET>'s"
    line "ATTACK!"
    prompt

AbilityText_IntimidateBlocked:
    text "<TARGET>'s"
    line "@"
    text_ram wStringBuffer1
    text " pre-"

    para "vented ATTACK from"
    line "being lowered by"

    para "<USER>'s"
    line "INTIMIDATE!"
    prompt

; In the name of looking pretty, and in not adding VWT/VWF, I have these two lovely functions.
AbilityText_TracedTheAbilityPlayer:
    text "<USER> traced"
    line "<TARGET>'s"
    cont "@"
    text_ram wStringBuffer1
    text "!"
    prompt

AbilityText_TracedTheAbilityEnemy:
    text "<USER>"
    line "traced <TARGET>'s"
    cont "@"
    text_ram wStringBuffer1
    text "!"
    prompt

AbilityText_RunAway:
    text "<TARGET>" ; Because the turn swaps, this matters.
    line "fled using RUN"
    cont "AWAY!"
    prompt
