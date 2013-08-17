module UnrealScript.UTGame.UTLinkGunMuzzleFlashLight;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKExplosionLight;

extern(C++) interface UTLinkGunMuzzleFlashLight : UDKExplosionLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTLinkGunMuzzleFlashLight")); }
	private static __gshared UTLinkGunMuzzleFlashLight mDefaultProperties;
	@property final static UTLinkGunMuzzleFlashLight DefaultProperties() { mixin(MGDPC("UTLinkGunMuzzleFlashLight", "UTLinkGunMuzzleFlashLight UTGame.Default__UTLinkGunMuzzleFlashLight")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSetTeam;
		public @property static final ScriptFunction SetTeam() { mixin(MGF("mSetTeam", "Function UTGame.UTLinkGunMuzzleFlashLight.SetTeam")); }
	}
	@property final auto ref
	{
		ScriptArray!(UDKExplosionLight.LightValues) RedTeamTimeShift() { mixin(MGPC("ScriptArray!(UDKExplosionLight.LightValues)", 624)); }
		ScriptArray!(UDKExplosionLight.LightValues) BlueTeamTimeShift() { mixin(MGPC("ScriptArray!(UDKExplosionLight.LightValues)", 636)); }
	}
	final void SetTeam(ubyte NewTeam)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = NewTeam;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetTeam, params.ptr, cast(void*)0);
	}
}
