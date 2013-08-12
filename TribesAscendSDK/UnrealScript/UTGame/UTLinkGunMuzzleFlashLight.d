module UnrealScript.UTGame.UTLinkGunMuzzleFlashLight;

import ScriptClasses;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface UTLinkGunMuzzleFlashLight : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTLinkGunMuzzleFlashLight")); }
	private static __gshared UTLinkGunMuzzleFlashLight mDefaultProperties;
	@property final static UTLinkGunMuzzleFlashLight DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTLinkGunMuzzleFlashLight)("UTLinkGunMuzzleFlashLight UTGame.Default__UTLinkGunMuzzleFlashLight")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSetTeam;
		public @property static final ScriptFunction SetTeam() { return mSetTeam ? mSetTeam : (mSetTeam = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTLinkGunMuzzleFlashLight.SetTeam")); }
	}
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
		(cast(ScriptObject)this).ProcessEvent(Functions.SetTeam, params.ptr, cast(void*)0);
	}
}
