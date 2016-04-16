var type = argument[0];

switch(type)
{
    case EnemyType.NORMAL: return AbilityType.NOTHING;
    case EnemyType.PHANTOM: return AbilityType.PHANTOM_DASH;
}
