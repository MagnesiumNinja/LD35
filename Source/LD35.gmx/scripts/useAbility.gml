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
        
        audio_play_sound(choose(sndStab_Swing1, sndStab_Swing2, sndStab_Swing3), 9, false);
        
    
        break;
    }

    case AbilityType.PHANTOM_STAB:
    {
        var stab = instance_create(x, y, objPhantomStab);
        stab.par = id;
        stab.image_angle = aimAngle;
        
        audio_play_sound(choose(sndStab_Swing1, sndStab_Swing2, sndStab_Swing3), 9, false);
        
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
    
        audio_play_sound(choose(sndShot_Fire1, sndShot_Fire2), 9, false);
        
        break;
    }

    case AbilityType.GOLEM_PUNCH:
    {
        var punch = instance_create(x, y, objGolemPunch);
        punch.par = id;
        punch.image_angle = aimAngle;
        golemWait = GOLEM_WAIT;
        
        audio_play_sound(choose(sndStab_Swing1, sndStab_Swing2, sndStab_Swing3), 9, false);
        
        break;
    }

    case AbilityType.BRAIN_SHOT:
    {
        var gunshot = instance_create(x, y, objBrainShot);
        gunshot.angle = aimAngle;
    
        audio_play_sound(choose(sndShot_Fire1, sndShot_Fire2), 9, false);
        
        break;
    }
    
    case AbilityType.BRAIN_FOCUS:
    {
        with (objEnemyEntity)
            instance_create(x, y, objBrainFocus);
    
        break;
    }
    
}
