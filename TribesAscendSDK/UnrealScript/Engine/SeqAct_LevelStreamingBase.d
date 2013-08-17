module UnrealScript.Engine.SeqAct_LevelStreamingBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_Latent;

extern(C++) interface SeqAct_LevelStreamingBase : SeqAct_Latent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqAct_LevelStreamingBase")); }
	private static __gshared SeqAct_LevelStreamingBase mDefaultProperties;
	@property final static SeqAct_LevelStreamingBase DefaultProperties() { mixin(MGDPC("SeqAct_LevelStreamingBase", "SeqAct_LevelStreamingBase Engine.Default__SeqAct_LevelStreamingBase")); }
	@property final
	{
		bool bShouldBlockOnLoad() { mixin(MGBPC(248, 0x2)); }
		bool bShouldBlockOnLoad(bool val) { mixin(MSBPC(248, 0x2)); }
		bool bMakeVisibleAfterLoad() { mixin(MGBPC(248, 0x1)); }
		bool bMakeVisibleAfterLoad(bool val) { mixin(MSBPC(248, 0x1)); }
	}
}
