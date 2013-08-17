module UnrealScript.Engine.SeqCond_ShowGore;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceCondition;

extern(C++) interface SeqCond_ShowGore : SequenceCondition
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqCond_ShowGore")()); }
	private static __gshared SeqCond_ShowGore mDefaultProperties;
	@property final static SeqCond_ShowGore DefaultProperties() { mixin(MGDPC!(SeqCond_ShowGore, "SeqCond_ShowGore Engine.Default__SeqCond_ShowGore")()); }
}
