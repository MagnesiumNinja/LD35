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
        
        idleSprite = sprPlayerIdle_Normal;
        moveSprite = sprPlayerMove_Normal;
        primarySprite = sprPlayerPrimary_Normal;
        secondarySprite = sprPlayerSecondary_Normal;
        
        idleSpeed = 0.3;
        moveSpeed = 0.3;
        primarySpeed = 0.3;
        secondarySpeed = 0.3;
    
        break;
    }
    
    case EnemyType.PHANTOM:
    {
        MAX_SPEED = 4.5;
        ACCEL = 0.9;
        FRIC = 0.3;
        
        MAX_HP = 1;
        hp = MAX_HP;
        
        idleSprite = sprIdle_Phantom;
        moveSprite = sprMove_Phantom;
        primarySprite = sprPrimary_Phantom;
        secondarySprite = sprSecondary_Phantom;
        
        idleSpeed = 0.3;
        moveSpeed = 0.2;
        primarySpeed = 0.08;
        secondarySpeed = 0.3;
        break;
    }
    
    case EnemyType.GUNNER:
    {
        MAX_SPEED = 3;
        ACCEL = 0.6;
        FRIC = 0.3;
        
        MAX_HP = 3;
        hp = MAX_HP;
        
        idleSprite = sprIdle_Gunner;
        moveSprite = sprMove_Gunner;
        primarySprite = sprPrimary_Gunner;
        secondarySprite = sprSecondary_Gunner;
        
        idleSpeed = 0.3;
        moveSpeed = 0.2;
        primarySpeed = 0.08;
        secondarySpeed = 0.3;
        
        break;
    }
}
