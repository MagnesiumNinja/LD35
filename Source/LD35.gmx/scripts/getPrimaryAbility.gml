var type = argument[0];

switch(type)
{
    case EnemyType.NORMAL: return AbilityType.PLAYER_SLICE;
    case EnemyType.PHANTOM: return AbilityType.PHANTOM_STAB;
    case EnemyType.GUNNER: return AbilityType.GUNNER_GUNSHOT;
}
