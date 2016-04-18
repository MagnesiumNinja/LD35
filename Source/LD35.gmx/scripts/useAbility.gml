/*
    useAbility(abilityType);

    abilityType - the ability to use
*/

var ability;
ability = argument[0];

switch(ability)
{
    case AbilityType.PLAYER_SLICE:
    {
        var stab = instance_create(x, y, objPlayerSlice);
        stab.par = id;
        stab.image_angle = aimAngle;
    
        break;
    }

    case AbilityType.PHANTOM_STAB:
    {
        var stab = instance_create(x, y, objPhantomStab);
        stab.par = id;
        stab.image_angle = aimAngle;

        break;
    }
    
    case AbilityType.PHANTOM_DASH:
    {
        hspd = lengthdir_x(DASH_SPEED, aimAngle);
        vspd = lengthdir_y(DASH_SPEED, aimAngle);
        
        dashing = true;
        canBeHit = false;
    
        audio_play_sound(choose(sndDash1, sndDash2, sndDash3), 8, false);
        
        break;
    }
    
    case AbilityType.GUNNER_GUNSHOT:
    {
        var gunshot = instance_create(x, y, objGunnerGunshot);
        gunshot.angle = aimAngle;

        shakeScreen(1, 0.1);
        break;
    }

    case AbilityType.GOLEM_PUNCH:
    {
        var punch = instance_create(x, y, objGolemPunch);
        punch.par = id;
        punch.image_angle = aimAngle;
        golemWait = GOLEM_WAIT;

        shakeScreen(1, 0.1);
        break;
    }

    case AbilityType.BRAIN_SHOT:
    {
        var gunshot = instance_create(x, y, objBrainShot);
        gunshot.angle = aimAngle;
        gunshot.image_angle = aimAngle;
        
        break;
    }
    
    case AbilityType.BRAIN_FOCUS:
    {
        with (objEnemyEntity)
            instance_create(x, y, objBrainFocus);
    
        audio_play_sound(sndBrainScan, 7, false);
        
        break;
    }
    
    case AbilityType.SQORPION_STRANGLE:
    {
        var e = instance_place(x, y, objEnemyEntity);
        
        if (e)
        {
            strangleObj = e;
            strangleObj.frozen = true;
            strangleTimer = STRANGLE_TIMER;
        }
        break;
    }
    
    case AbilityType.SQORPION_PULL:
    {
        wrapObj = instance_create(x, y, objSqorpionPull);
        wrapObj.par = id;
        wrapObj.angle = aimAngle;
        
        shakeScreen(1, 0.2);
        break;
    }
    
}
