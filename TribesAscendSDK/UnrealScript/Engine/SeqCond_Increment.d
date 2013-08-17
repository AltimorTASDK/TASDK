module UnrealScript.Engine.SeqCond_Increment;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceCondition;

extern(C++) interface SeqCond_Increment : SequenceCondition
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqCond_Increment")()); }
	private static __gshared SeqCond_Increment mDefaultProperties;
	@property final static SeqCond_Increment DefaultProperties() { mixin(MGDPC!(SeqCond_Increment, "SeqCond_Increment Engine.Default__SeqCond_Increment")()); }
	@property final auto ref
	{
		int ValueB() { mixin(MGPC!(int, 216)()); }
		int ValueA() { mixin(MGPC!(int, 212)()); }
		int IncrementAmount() { mixin(MGPC!(int, 208)()); }
	}
}
