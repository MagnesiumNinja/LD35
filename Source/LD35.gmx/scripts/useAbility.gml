/*
    useAbility(abilityType);

    abilityType - the ability to use
*/

var ability;
ability = argument[0];

switch(ability)
{
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
    
        break;
    }
    
    case AbilityType.GUNNER_GUNSHOT:
    {
        var gunshot = instance_create(x, y, objGunnerGunshot);
        gunshot.angle = aimAngle;
    
        audio_play_sound(choose(sndShot_Fire1, sndShot_Fire2), 9, false);
        
        break;
    }
}
