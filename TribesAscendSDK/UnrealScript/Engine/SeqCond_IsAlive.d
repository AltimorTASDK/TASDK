module UnrealScript.Engine.SeqCond_IsAlive;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceCondition;

extern(C++) interface SeqCond_IsAlive : SequenceCondition
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqCond_IsAlive")()); }
	private static __gshared SeqCond_IsAlive mDefaultProperties;
	@property final static SeqCond_IsAlive DefaultProperties() { mixin(MGDPC!(SeqCond_IsAlive, "SeqCond_IsAlive Engine.Default__SeqCond_IsAlive")()); }
}
