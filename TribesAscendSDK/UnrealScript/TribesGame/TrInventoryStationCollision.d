module UnrealScript.TribesGame.TrInventoryStationCollision;

import ScriptClasses;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.TribesGame.TrStationCollision;

extern(C++) interface TrInventoryStationCollision : TrStationCollision
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrInventoryStationCollision")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mCheckCanPawnUseStationNow;
		public @property static final ScriptFunction CheckCanPawnUseStationNow() { return mCheckCanPawnUseStationNow ? mCheckCanPawnUseStationNow : (mCheckCanPawnUseStationNow = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrInventoryStationCollision.CheckCanPawnUseStationNow")); }
	}
	final bool CheckCanPawnUseStationNow(TrPawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckCanPawnUseStationNow, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
