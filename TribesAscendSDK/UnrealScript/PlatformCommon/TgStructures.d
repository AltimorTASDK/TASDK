module UnrealScript.PlatformCommon.TgStructures;

import UnrealScript.Core.UObject;

extern(C++) interface TgStructures : UObject
{
	enum CMTargetType : ubyte
	{
		CMTT_Pawn = 0,
		CMTT_Deployable = 1,
		CMTT_MAX = 2,
	}
	struct CombatMessageInfo
	{
		public @property final auto ref int nSourceItemId() { return *cast(int*)(cast(size_t)&this + 32); }
		private ubyte __nSourceItemId[4];
		public @property final auto ref int nAmount2() { return *cast(int*)(cast(size_t)&this + 28); }
		private ubyte __nAmount2[4];
		public @property final auto ref int nAmount1() { return *cast(int*)(cast(size_t)&this + 24); }
		private ubyte __nAmount1[4];
		public @property final auto ref TgStructures.CMTargetType eTargetType() { return *cast(TgStructures.CMTargetType*)(cast(size_t)&this + 20); }
		private ubyte __eTargetType[1];
		public @property final auto ref int nTargetId() { return *cast(int*)(cast(size_t)&this + 16); }
		private ubyte __nTargetId[4];
		public @property final auto ref int nSourceOwnerId() { return *cast(int*)(cast(size_t)&this + 12); }
		private ubyte __nSourceOwnerId[4];
		public @property final auto ref TgStructures.CMTargetType eSourceType() { return *cast(TgStructures.CMTargetType*)(cast(size_t)&this + 8); }
		private ubyte __eSourceType[1];
		public @property final auto ref int nSourceId() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __nSourceId[4];
		public @property final auto ref int nMsgId() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __nMsgId[4];
	}
}
