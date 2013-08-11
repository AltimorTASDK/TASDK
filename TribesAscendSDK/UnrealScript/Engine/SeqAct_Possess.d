module UnrealScript.Engine.SeqAct_Possess;

import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_Possess : SequenceAction
{
	public @property final bool bTryToLeaveVehicle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x2) != 0; }
	public @property final bool bTryToLeaveVehicle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x2; } return val; }
	public @property final auto ref Pawn PawnToPossess() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 232); }
	public @property final bool bKillOldPawn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x1) != 0; }
	public @property final bool bKillOldPawn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x1; } return val; }
}
