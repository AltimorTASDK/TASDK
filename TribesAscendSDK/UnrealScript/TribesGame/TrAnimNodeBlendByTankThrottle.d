module UnrealScript.TribesGame.TrAnimNodeBlendByTankThrottle;

import UnrealScript.TribesGame.TrAnimNodeBlendList;
import UnrealScript.TribesGame.TrVehicle;

extern(C++) interface TrAnimNodeBlendByTankThrottle : TrAnimNodeBlendList
{
public extern(D):
	@property final auto ref TrVehicle m_TrVehicle() { return *cast(TrVehicle*)(cast(size_t)cast(void*)this + 292); }
}
