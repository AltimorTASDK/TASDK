module UnrealScript.Engine.SeqCond_SwitchPlatform;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceCondition;

extern(C++) interface SeqCond_SwitchPlatform : SequenceCondition
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqCond_SwitchPlatform")()); }
	private static __gshared SeqCond_SwitchPlatform mDefaultProperties;
	@property final static SeqCond_SwitchPlatform DefaultProperties() { mixin(MGDPC!(SeqCond_SwitchPlatform, "SeqCond_SwitchPlatform Engine.Default__SeqCond_SwitchPlatform")()); }
}
