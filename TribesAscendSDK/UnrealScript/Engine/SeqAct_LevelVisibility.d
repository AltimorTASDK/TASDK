module UnrealScript.Engine.SeqAct_LevelVisibility;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_Latent;
import UnrealScript.Engine.LevelStreaming;

extern(C++) interface SeqAct_LevelVisibility : SeqAct_Latent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_LevelVisibility")()); }
	private static __gshared SeqAct_LevelVisibility mDefaultProperties;
	@property final static SeqAct_LevelVisibility DefaultProperties() { mixin(MGDPC!(SeqAct_LevelVisibility, "SeqAct_LevelVisibility Engine.Default__SeqAct_LevelVisibility")()); }
	@property final
	{
		auto ref
		{
			ScriptName LevelName() { mixin(MGPC!("ScriptName", 252)()); }
			// WARNING: Property 'Level' has the same name as a defined type!
		}
		bool bStatusIsOk() { mixin(MGBPC!(260, 0x1)()); }
		bool bStatusIsOk(bool val) { mixin(MSBPC!(260, 0x1)()); }
	}
}
