module UnrealScript.Engine.SeqAct_LevelStreaming;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.LevelStreaming;
import UnrealScript.Engine.SeqAct_LevelStreamingBase;

extern(C++) interface SeqAct_LevelStreaming : SeqAct_LevelStreamingBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqAct_LevelStreaming")); }
	private static __gshared SeqAct_LevelStreaming mDefaultProperties;
	@property final static SeqAct_LevelStreaming DefaultProperties() { mixin(MGDPC("SeqAct_LevelStreaming", "SeqAct_LevelStreaming Engine.Default__SeqAct_LevelStreaming")); }
	@property final
	{
		auto ref
		{
			ScriptName LevelName() { mixin(MGPC("ScriptName", 256)); }
			// WARNING: Property 'Level' has the same name as a defined type!
		}
		bool bStatusIsOk() { mixin(MGBPC(264, 0x1)); }
		bool bStatusIsOk(bool val) { mixin(MSBPC(264, 0x1)); }
	}
}
