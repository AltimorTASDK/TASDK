module UnrealScript.Engine.SeqAct_Destroy;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_Destroy : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqAct_Destroy")); }
	private static __gshared SeqAct_Destroy mDefaultProperties;
	@property final static SeqAct_Destroy DefaultProperties() { mixin(MGDPC("SeqAct_Destroy", "SeqAct_Destroy Engine.Default__SeqAct_Destroy")); }
	@property final
	{
		@property final auto ref ScriptArray!(ScriptClass) IgnoreBasedClasses() { mixin(MGPC("ScriptArray!(ScriptClass)", 236)); }
		bool bDestroyBasedActors() { mixin(MGBPC(232, 0x1)); }
		bool bDestroyBasedActors(bool val) { mixin(MSBPC(232, 0x1)); }
	}
}
