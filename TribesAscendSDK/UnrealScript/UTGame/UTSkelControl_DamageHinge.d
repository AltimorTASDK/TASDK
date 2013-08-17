module UnrealScript.UTGame.UTSkelControl_DamageHinge;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKSkelControl_DamageHinge;

extern(C++) interface UTSkelControl_DamageHinge : UDKSkelControl_DamageHinge
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTSkelControl_DamageHinge")()); }
	private static __gshared UTSkelControl_DamageHinge mDefaultProperties;
	@property final static UTSkelControl_DamageHinge DefaultProperties() { mixin(MGDPC!(UTSkelControl_DamageHinge, "UTSkelControl_DamageHinge UTGame.Default__UTSkelControl_DamageHinge")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mBreakApart;
			ScriptFunction mBreakApartOnDeath;
		}
		public @property static final
		{
			ScriptFunction BreakApart() { mixin(MGF!("mBreakApart", "Function UTGame.UTSkelControl_DamageHinge.BreakApart")()); }
			ScriptFunction BreakApartOnDeath() { mixin(MGF!("mBreakApartOnDeath", "Function UTGame.UTSkelControl_DamageHinge.BreakApartOnDeath")()); }
		}
	}
final:
	void BreakApart(Vector PartLocation, bool bIsVisible)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = PartLocation;
		*cast(bool*)&params[12] = bIsVisible;
		(cast(ScriptObject)this).ProcessEvent(Functions.BreakApart, params.ptr, cast(void*)0);
	}
	void BreakApartOnDeath(Vector PartLocation, bool bIsVisible)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = PartLocation;
		*cast(bool*)&params[12] = bIsVisible;
		(cast(ScriptObject)this).ProcessEvent(Functions.BreakApartOnDeath, params.ptr, cast(void*)0);
	}
}
