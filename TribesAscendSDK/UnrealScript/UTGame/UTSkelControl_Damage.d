module UnrealScript.UTGame.UTSkelControl_Damage;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKSkelControl_Damage;

extern(C++) interface UTSkelControl_Damage : UDKSkelControl_Damage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTSkelControl_Damage")()); }
	private static __gshared UTSkelControl_Damage mDefaultProperties;
	@property final static UTSkelControl_Damage DefaultProperties() { mixin(MGDPC!(UTSkelControl_Damage, "UTSkelControl_Damage UTGame.Default__UTSkelControl_Damage")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mBreakApart;
			ScriptFunction mBreakApartOnDeath;
		}
		public @property static final
		{
			ScriptFunction BreakApart() { mixin(MGF!("mBreakApart", "Function UTGame.UTSkelControl_Damage.BreakApart")()); }
			ScriptFunction BreakApartOnDeath() { mixin(MGF!("mBreakApartOnDeath", "Function UTGame.UTSkelControl_Damage.BreakApartOnDeath")()); }
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
