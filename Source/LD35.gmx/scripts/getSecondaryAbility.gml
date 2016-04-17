var type = argument[0];

switch(type)
{
    case EnemyType.NORMAL: return AbilityType.NOTHING;
    case EnemyType.PHANTOM: return AbilityType.PHANTOM_DASH;
    case EnemyType.GUNNER: return AbilityType.NOTHING;
    case EnemyType.GOLEM: return AbilityType.NOTHING;
    case EnemyType.BRAIN: return AbilityType.BRAIN_FOCUS;
}
