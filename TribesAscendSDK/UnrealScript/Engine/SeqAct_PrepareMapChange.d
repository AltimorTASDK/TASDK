module UnrealScript.Engine.SeqAct_PrepareMapChange;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_Latent;

extern(C++) interface SeqAct_PrepareMapChange : SeqAct_Latent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqAct_PrepareMapChange")); }
	private static __gshared SeqAct_PrepareMapChange mDefaultProperties;
	@property final static SeqAct_PrepareMapChange DefaultProperties() { mixin(MGDPC("SeqAct_PrepareMapChange", "SeqAct_PrepareMapChange Engine.Default__SeqAct_PrepareMapChange")); }
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptName) InitiallyLoadedSecondaryLevelNames() { mixin(MGPC("ScriptArray!(ScriptName)", 256)); }
			ScriptName MainLevelName() { mixin(MGPC("ScriptName", 248)); }
		}
		bool bStatusIsOk() { mixin(MGBPC(268, 0x2)); }
		bool bStatusIsOk(bool val) { mixin(MSBPC(268, 0x2)); }
		bool bIsHighPriority() { mixin(MGBPC(268, 0x1)); }
		bool bIsHighPriority(bool val) { mixin(MSBPC(268, 0x1)); }
	}
}
