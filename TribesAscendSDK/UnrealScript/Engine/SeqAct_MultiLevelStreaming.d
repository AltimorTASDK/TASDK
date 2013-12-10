module UnrealScript.Engine.SeqAct_MultiLevelStreaming;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.LevelStreaming;
import UnrealScript.Engine.SeqAct_LevelStreamingBase;

extern(C++) interface SeqAct_MultiLevelStreaming : SeqAct_LevelStreamingBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqAct_MultiLevelStreaming")); }
	private static __gshared SeqAct_MultiLevelStreaming mDefaultProperties;
	@property final static SeqAct_MultiLevelStreaming DefaultProperties() { mixin(MGDPC("SeqAct_MultiLevelStreaming", "SeqAct_MultiLevelStreaming Engine.Default__SeqAct_MultiLevelStreaming")); }
	struct LevelStreamingNameCombo
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.SeqAct_MultiLevelStreaming.LevelStreamingNameCombo")); }
		@property final auto ref
		{
			ScriptName LevelName() { mixin(MGPS("ScriptName", 4)); }
			LevelStreaming LevelVar() { mixin(MGPS("LevelStreaming", 0)); }
		}
	}
	@property final
	{
		@property final auto ref ScriptArray!(SeqAct_MultiLevelStreaming.LevelStreamingNameCombo) Levels() { mixin(MGPC("ScriptArray!(SeqAct_MultiLevelStreaming.LevelStreamingNameCombo)", 252)); }
		bool bStatusIsOk() { mixin(MGBPC(264, 0x2)); }
		bool bStatusIsOk(bool val) { mixin(MSBPC(264, 0x2)); }
		bool bUnloadAllOtherLevels() { mixin(MGBPC(264, 0x1)); }
		bool bUnloadAllOtherLevels(bool val) { mixin(MSBPC(264, 0x1)); }
	}
}
