module UnrealScript.PlatformCommon.TgStructures;

import UnrealScript.Core.UObject;

extern(C++) interface TgStructures : UObject
{
public extern(D):
	enum CMTargetType : ubyte
	{
		CMTT_Pawn = 0,
		CMTT_Deployable = 1,
		CMTT_MAX = 2,
	}
	struct CombatMessageInfo
	{
		private ubyte __buffer__[36];
	public extern(D):
		@property final auto ref
		{
			int nSourceItemId() { return *cast(int*)(cast(size_t)&this + 32); }
			int nAmount2() { return *cast(int*)(cast(size_t)&this + 28); }
			int nAmount1() { return *cast(int*)(cast(size_t)&this + 24); }
			TgStructures.CMTargetType eTargetType() { return *cast(TgStructures.CMTargetType*)(cast(size_t)&this + 20); }
			int nTargetId() { return *cast(int*)(cast(size_t)&this + 16); }
			int nSourceOwnerId() { return *cast(int*)(cast(size_t)&this + 12); }
			TgStructures.CMTargetType eSourceType() { return *cast(TgStructures.CMTargetType*)(cast(size_t)&this + 8); }
			int nSourceId() { return *cast(int*)(cast(size_t)&this + 4); }
			int nMsgId() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
}
