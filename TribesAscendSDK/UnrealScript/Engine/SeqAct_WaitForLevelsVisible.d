module UnrealScript.Engine.SeqAct_WaitForLevelsVisible;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_Latent;

extern(C++) interface SeqAct_WaitForLevelsVisible : SeqAct_Latent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_WaitForLevelsVisible")()); }
	private static __gshared SeqAct_WaitForLevelsVisible mDefaultProperties;
	@property final static SeqAct_WaitForLevelsVisible DefaultProperties() { mixin(MGDPC!(SeqAct_WaitForLevelsVisible, "SeqAct_WaitForLevelsVisible Engine.Default__SeqAct_WaitForLevelsVisible")()); }
	@property final
	{
		@property final auto ref ScriptArray!(ScriptName) LevelNames() { mixin(MGPC!(ScriptArray!(ScriptName), 248)()); }
		bool bShouldBlockOnLoad() { mixin(MGBPC!(260, 0x1)()); }
		bool bShouldBlockOnLoad(bool val) { mixin(MSBPC!(260, 0x1)()); }
	}
}
