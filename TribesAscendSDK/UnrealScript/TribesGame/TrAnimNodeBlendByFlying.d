module UnrealScript.TribesGame.TrAnimNodeBlendByFlying;

import UnrealScript.TribesGame.TrPawn;
import UnrealScript.TribesGame.TrAnimNodeBlendList;

extern(C++) interface TrAnimNodeBlendByFlying : TrAnimNodeBlendList
{
	enum EFlyDirTypes : ubyte
	{
		FLY_Forward = 0,
		FLY_Back = 1,
		FLY_Left = 2,
		FLY_Right = 3,
		FLY_Up = 4,
		FLY_Down = 5,
		FLY_UpMidair = 6,
		FLY_None = 7,
		FLY_MAX = 8,
	}
	public @property final auto ref TrPawn m_TrPawn() { return *cast(TrPawn*)(cast(size_t)cast(void*)this + 296); }
	public @property final auto ref TrAnimNodeBlendByFlying.EFlyDirTypes LastDirection() { return *cast(TrAnimNodeBlendByFlying.EFlyDirTypes*)(cast(size_t)cast(void*)this + 292); }
}
