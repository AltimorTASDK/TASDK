module UnrealScript.TribesGame.TrAnimNodeBlendByTankSteering;

import UnrealScript.TribesGame.TrAnimNodeBlendList;
import UnrealScript.TribesGame.TrVehicle;

extern(C++) interface TrAnimNodeBlendByTankSteering : TrAnimNodeBlendList
{
	public @property final auto ref TrVehicle m_TrVehicle() { return *cast(TrVehicle*)(cast(size_t)cast(void*)this + 292); }
}
