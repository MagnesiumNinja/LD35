var ability;
ability = argument[0];


switch(ability)
{
    case AbilityType.NOTHING: return 0;
    case AbilityType.PHANTOM_STAB: return 5;
    case AbilityType.PHANTOM_DASH: return 60;
}
