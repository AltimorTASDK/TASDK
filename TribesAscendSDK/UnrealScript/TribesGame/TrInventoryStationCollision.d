module UnrealScript.TribesGame.TrInventoryStationCollision;

import ScriptClasses;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.TribesGame.TrStationCollision;

extern(C++) interface TrInventoryStationCollision : TrStationCollision
{
public extern(D):
	final bool CheckCanPawnUseStationNow(TrPawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrPawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98341], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
