module UnrealScript.TribesGame.TrSubDevice;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrSubDevice : TrDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrSubDevice")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mReset;
			ScriptFunction mCalcWeaponFire;
		}
		public @property static final
		{
			ScriptFunction Reset() { return mReset ? mReset : (mReset = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrSubDevice.Reset")); }
			ScriptFunction CalcWeaponFire() { return mCalcWeaponFire ? mCalcWeaponFire : (mCalcWeaponFire = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrSubDevice.CalcWeaponFire")); }
		}
	}
final:
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Reset, cast(void*)0, cast(void*)0);
	}
	Actor.ImpactInfo CalcWeaponFire(Vector StartTrace, Vector EndTrace, ScriptArray!(Actor.ImpactInfo)* ImpactList, Vector Extent)
	{
		ubyte params[128];
		params[] = 0;
		*cast(Vector*)params.ptr = StartTrace;
		*cast(Vector*)&params[12] = EndTrace;
		*cast(ScriptArray!(Actor.ImpactInfo)*)&params[24] = *ImpactList;
		*cast(Vector*)&params[36] = Extent;
		(cast(ScriptObject)this).ProcessEvent(Functions.CalcWeaponFire, params.ptr, cast(void*)0);
		*ImpactList = *cast(ScriptArray!(Actor.ImpactInfo)*)&params[24];
		return *cast(Actor.ImpactInfo*)&params[48];
	}
}
