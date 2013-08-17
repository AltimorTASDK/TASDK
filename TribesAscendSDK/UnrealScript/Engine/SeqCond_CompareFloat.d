module UnrealScript.Engine.SeqCond_CompareFloat;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceCondition;

extern(C++) interface SeqCond_CompareFloat : SequenceCondition
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqCond_CompareFloat")()); }
	private static __gshared SeqCond_CompareFloat mDefaultProperties;
	@property final static SeqCond_CompareFloat DefaultProperties() { mixin(MGDPC!(SeqCond_CompareFloat, "SeqCond_CompareFloat Engine.Default__SeqCond_CompareFloat")()); }
	@property final auto ref
	{
		float ValueB() { mixin(MGPC!("float", 212)()); }
		float ValueA() { mixin(MGPC!("float", 208)()); }
	}
}
