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
        
        break;
    }
    
    case AbilityType.PHANTOM_DASH:
    {
        hspd = lengthdir_x(DASH_SPEED, aimAngle);
        vspd = lengthdir_y(DASH_SPEED, aimAngle);
        
        dashing = true;
    
        break;
    }
}
