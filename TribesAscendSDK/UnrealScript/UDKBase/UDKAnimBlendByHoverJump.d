module UnrealScript.UDKBase.UDKAnimBlendByHoverJump;

import UnrealScript.Engine.Pawn;
import UnrealScript.UDKBase.UDKVehicle;
import UnrealScript.UDKBase.UDKAnimBlendByFall;

extern(C++) interface UDKAnimBlendByHoverJump : UDKAnimBlendByFall
{
public extern(D):
	@property final auto ref
	{
		UDKVehicle OwnerHV() { return *cast(UDKVehicle*)(cast(size_t)cast(void*)this + 328); }
		Pawn OwnerP() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 324); }
	}
}
