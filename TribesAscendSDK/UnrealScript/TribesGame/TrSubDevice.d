module UnrealScript.TribesGame.TrSubDevice;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrSubDevice : TrDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrSubDevice")); }
	private static __gshared TrSubDevice mDefaultProperties;
	@property final static TrSubDevice DefaultProperties() { mixin(MGDPC("TrSubDevice", "TrSubDevice TribesGame.Default__TrSubDevice")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mReset;
			ScriptFunction mCalcWeaponFire;
		}
		public @property static final
		{
			ScriptFunction Reset() { mixin(MGF("mReset", "Function TribesGame.TrSubDevice.Reset")); }
			ScriptFunction CalcWeaponFire() { mixin(MGF("mCalcWeaponFire", "Function TribesGame.TrSubDevice.CalcWeaponFire")); }
		}
	}
final:
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Reset, cast(void*)0, cast(void*)0);
	}
	Actor.ImpactInfo CalcWeaponFire(Vector StartTrace, Vector EndTrace, ScriptArray!(Actor.ImpactInfo)* ImpactList = null, Vector* Extent = null)
	{
		ubyte params[128];
		params[] = 0;
		*cast(Vector*)params.ptr = StartTrace;
		*cast(Vector*)&params[12] = EndTrace;
		if (ImpactList !is null)
			*cast(ScriptArray!(Actor.ImpactInfo)*)&params[24] = *ImpactList;
		if (Extent !is null)
			*cast(Vector*)&params[36] = *Extent;
		(cast(ScriptObject)this).ProcessEvent(Functions.CalcWeaponFire, params.ptr, cast(void*)0);
		if (ImpactList !is null)
			*ImpactList = *cast(ScriptArray!(Actor.ImpactInfo)*)&params[24];
		return *cast(Actor.ImpactInfo*)&params[48];
	}
}
