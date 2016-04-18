var type;
type = argument[0];

switch(type)
{
    case EnemyType.NORMAL:
    {
        MAX_SPEED = 3;
        ACCEL = 0.8;
        FRIC = 0.6;
        
        MAX_HP = 1;
        hp = MAX_HP;
        
        idleSprite = sprPlayerIdle_Normal;
        moveSprite = sprPlayerMove_Normal;
        primarySprite = sprPlayerPrimary_Normal;
        secondarySprite = sprPlayerSecondary_Normal;
        
        idleSpeed = 0.3;
        moveSpeed = 0.15;
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
        primarySpeed = 0.2;
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
        moveSpeed = 0.1;
        primarySpeed = 0.08;
        secondarySpeed = 0.3;
        
        break;
    }
    
    case EnemyType.GOLEM:
    {
        MAX_SPEED = 2.5;
        ACCEL = 0.9;
        FRIC = 0.7;
        
        MAX_HP = 5;
        hp = MAX_HP;
        
        idleSprite = sprIdle_Golem;
        moveSprite = sprMove_Golem;
        primarySprite = sprPrimary_Golem;
        secondarySprite = sprSecondary_Golem;
        
        idleSpeed = 0.3;
        moveSpeed = 0.05;
        primarySpeed = 0.04;
        secondarySpeed = 0.3;
        break;
    }
    
    case EnemyType.BRAIN:
    {
        MAX_SPEED = 3;
        ACCEL = 0.7;
        FRIC = 0.4;
        
        MAX_HP = 2;
        hp = MAX_HP;
        
        idleSprite = sprIdle_Brain;
        moveSprite = sprMove_Brain;
        primarySprite = sprPrimary_Brain;
        secondarySprite = sprSecondary_Brain;
        
        idleSpeed = 0.3;
        moveSpeed = 0.05;
        primarySpeed = 0.1;
        secondarySpeed = 0.02;
        break;
    }
    
    case EnemyType.SQORPION:
    {
        MAX_SPEED = 4;
        ACCEL = 0.7;
        FRIC = 0.5;
        
        MAX_HP = 4;
        hp = MAX_HP;
        
        idleSprite = sprIdle_Golem;
        moveSprite = sprMove_Golem;
        primarySprite = sprPrimary_Golem;
        secondarySprite = sprSecondary_Golem;
        
        idleSpeed = 0.3;
        moveSpeed = 0.05;
        primarySpeed = 0.1;
        secondarySpeed = 0.02;
        break;
    }
    
}
