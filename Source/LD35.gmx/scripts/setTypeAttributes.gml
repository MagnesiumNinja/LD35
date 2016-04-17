var type;
type = argument[0];

switch(type)
{
    case EnemyType.NORMAL:
    {
        MAX_SPEED = 3;
        ACCEL = 0.8;
        FRIC = 0.6;
        
        MAX_HP = 3;
        hp = MAX_HP;
    
        break;
    }
    
    case EnemyType.PHANTOM:
    {
        MAX_SPEED = 4.5;
        ACCEL = 0.9;
        FRIC = 0.3;
        
        MAX_HP = 1;
        hp = MAX_HP;
        
        break;
    }
    
    case EnemyType.GUNNER:
    {
        MAX_SPEED = 3;
        ACCEL = 0.6;
        FRIC = 0.3;
        
        MAX_HP = 3;
        hp = MAX_HP;
        
        break;
    }
}
