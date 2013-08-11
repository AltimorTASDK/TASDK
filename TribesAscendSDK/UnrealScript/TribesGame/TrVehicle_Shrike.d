module UnrealScript.TribesGame.TrVehicle_Shrike;

import ScriptClasses;
import UnrealScript.TribesGame.TrVehicle_BaseFlying;
import UnrealScript.UTGame.UTPawn;

extern(C++) interface TrVehicle_Shrike : TrVehicle_BaseFlying
{
public extern(D):
	final void SitDriver(UTPawn UTP, int SeatIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPawn*)params.ptr = UTP;
		*cast(int*)&params[4] = SeatIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[114912], params.ptr, cast(void*)0);
	}
}
