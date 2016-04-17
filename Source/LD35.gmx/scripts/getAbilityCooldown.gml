var ability;
ability = argument[0];


switch(ability)
{
    case AbilityType.NOTHING: return 0;
    case AbilityType.PLAYER_SLICE: return 45;
    case AbilityType.PHANTOM_STAB: return 8;
    case AbilityType.PHANTOM_DASH: return 30;
    case AbilityType.GUNNER_GUNSHOT: return 30;
    case AbilityType.GOLEM_PUNCH: return 60;
}
