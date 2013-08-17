module UnrealScript.TribesGame.TrDevice_NovaSlug;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_NovaSlug : TrDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_NovaSlug")()); }
	private static __gshared TrDevice_NovaSlug mDefaultProperties;
	@property final static TrDevice_NovaSlug DefaultProperties() { mixin(MGDPC!(TrDevice_NovaSlug, "TrDevice_NovaSlug TribesGame.Default__TrDevice_NovaSlug")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInstantFire;
			ScriptFunction mFireAmmunition;
			ScriptFunction mStartFire;
		}
		public @property static final
		{
			ScriptFunction InstantFire() { mixin(MGF!("mInstantFire", "Function TribesGame.TrDevice_NovaSlug.InstantFire")()); }
			ScriptFunction FireAmmunition() { mixin(MGF!("mFireAmmunition", "Function TribesGame.TrDevice_NovaSlug.FireAmmunition")()); }
			ScriptFunction StartFire() { mixin(MGF!("mStartFire", "Function TribesGame.TrDevice_NovaSlug.StartFire")()); }
		}
	}
final:
	void InstantFire()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InstantFire, cast(void*)0, cast(void*)0);
	}
	void FireAmmunition()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.FireAmmunition, cast(void*)0, cast(void*)0);
	}
	void StartFire(ubyte FireModeNum)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = FireModeNum;
		(cast(ScriptObject)this).ProcessEvent(Functions.StartFire, params.ptr, cast(void*)0);
	}
}
