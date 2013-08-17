module UnrealScript.PlatformCommon.TgStructures;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface TgStructures : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class PlatformCommon.TgStructures")()); }
	private static __gshared TgStructures mDefaultProperties;
	@property final static TgStructures DefaultProperties() { mixin(MGDPC!(TgStructures, "TgStructures PlatformCommon.Default__TgStructures")()); }
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
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct PlatformCommon.TgStructures.CombatMessageInfo")()); }
		@property final auto ref
		{
			int nSourceItemId() { mixin(MGPS!("int", 32)()); }
			int nAmount2() { mixin(MGPS!("int", 28)()); }
			int nAmount1() { mixin(MGPS!("int", 24)()); }
			TgStructures.CMTargetType eTargetType() { mixin(MGPS!("TgStructures.CMTargetType", 20)()); }
			int nTargetId() { mixin(MGPS!("int", 16)()); }
			int nSourceOwnerId() { mixin(MGPS!("int", 12)()); }
			TgStructures.CMTargetType eSourceType() { mixin(MGPS!("TgStructures.CMTargetType", 8)()); }
			int nSourceId() { mixin(MGPS!("int", 4)()); }
			int nMsgId() { mixin(MGPS!("int", 0)()); }
		}
	}
}
