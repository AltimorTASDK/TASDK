module UnrealScript.Engine.SeqCond_IsSameTeam;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceCondition;

extern(C++) interface SeqCond_IsSameTeam : SequenceCondition
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqCond_IsSameTeam")()); }
	private static __gshared SeqCond_IsSameTeam mDefaultProperties;
	@property final static SeqCond_IsSameTeam DefaultProperties() { mixin(MGDPC!(SeqCond_IsSameTeam, "SeqCond_IsSameTeam Engine.Default__SeqCond_IsSameTeam")()); }
}
