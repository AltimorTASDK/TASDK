module UnrealScript.Engine.SeqAct_ToggleHidden;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_Toggle;

extern(C++) interface SeqAct_ToggleHidden : SeqAct_Toggle
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_ToggleHidden")()); }
	private static __gshared SeqAct_ToggleHidden mDefaultProperties;
	@property final static SeqAct_ToggleHidden DefaultProperties() { mixin(MGDPC!(SeqAct_ToggleHidden, "SeqAct_ToggleHidden Engine.Default__SeqAct_ToggleHidden")()); }
	@property final
	{
		@property final auto ref ScriptArray!(ScriptClass) IgnoreBasedClasses() { mixin(MGPC!(ScriptArray!(ScriptClass), 236)()); }
		bool bToggleBasedActors() { mixin(MGBPC!(232, 0x1)()); }
		bool bToggleBasedActors(bool val) { mixin(MSBPC!(232, 0x1)()); }
	}
}
