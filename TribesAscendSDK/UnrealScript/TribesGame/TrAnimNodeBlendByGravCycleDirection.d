module UnrealScript.TribesGame.TrAnimNodeBlendByGravCycleDirection;

import UnrealScript.TribesGame.TrAnimNodeBlendList;
import UnrealScript.TribesGame.TrVehicle;

extern(C++) interface TrAnimNodeBlendByGravCycleDirection : TrAnimNodeBlendList
{
	public @property final auto ref float m_fBackwardThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 296); }
	public @property final auto ref TrVehicle m_TrVehicle() { return *cast(TrVehicle*)(cast(size_t)cast(void*)this + 292); }
}
