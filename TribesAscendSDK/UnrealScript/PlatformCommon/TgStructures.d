module UnrealScript.PlatformCommon.TgStructures;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface TgStructures : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class PlatformCommon.TgStructures")); }
	private static __gshared TgStructures mDefaultProperties;
	@property final static TgStructures DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TgStructures)("TgStructures PlatformCommon.Default__TgStructures")); }
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
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct PlatformCommon.TgStructures.CombatMessageInfo")); }
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
