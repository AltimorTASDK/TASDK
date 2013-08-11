module UnrealScript.UTGame.UTLinkGunMuzzleFlashLight;

import ScriptClasses;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface UTLinkGunMuzzleFlashLight : UDKExplosionLight
{
public extern(D):
	@property final auto ref
	{
		ScriptArray!(UDKExplosionLight.LightValues) RedTeamTimeShift() { return *cast(ScriptArray!(UDKExplosionLight.LightValues)*)(cast(size_t)cast(void*)this + 624); }
		ScriptArray!(UDKExplosionLight.LightValues) BlueTeamTimeShift() { return *cast(ScriptArray!(UDKExplosionLight.LightValues)*)(cast(size_t)cast(void*)this + 636); }
	}
	final void SetTeam(ubyte NewTeam)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = NewTeam;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48308], params.ptr, cast(void*)0);
	}
}
