module UnrealScript.TribesGame.TrInventoryStationCollision;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.TribesGame.TrStationCollision;

extern(C++) interface TrInventoryStationCollision : TrStationCollision
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrInventoryStationCollision")); }
	private static __gshared TrInventoryStationCollision mDefaultProperties;
	@property final static TrInventoryStationCollision DefaultProperties() { mixin(MGDPC("TrInventoryStationCollision", "TrInventoryStationCollision TribesGame.Default__TrInventoryStationCollision")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mCheckCanPawnUseStationNow;
		public @property static final ScriptFunction CheckCanPawnUseStationNow() { mixin(MGF("mCheckCanPawnUseStationNow", "Function TribesGame.TrInventoryStationCollision.CheckCanPawnUseStationNow")); }
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
