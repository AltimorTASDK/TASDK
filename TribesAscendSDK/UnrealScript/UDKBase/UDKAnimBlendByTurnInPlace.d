module UnrealScript.UDKBase.UDKAnimBlendByTurnInPlace;

import UnrealScript.UDKBase.UDKAnimBlendBase;
import UnrealScript.UDKBase.UDKPawn;

extern(C++) interface UDKAnimBlendByTurnInPlace : UDKAnimBlendBase
{
	public @property final auto ref UDKPawn OwnerUTP() { return *cast(UDKPawn*)(cast(size_t)cast(void*)this + 304); }
	public @property final auto ref float TurnInPlaceBlendSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 300); }
	public @property final auto ref float RootYawSpeedThresh() { return *cast(float*)(cast(size_t)cast(void*)this + 296); }
}
