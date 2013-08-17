module UnrealScript.Engine.SeqCond_IncrementFloat;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceCondition;

extern(C++) interface SeqCond_IncrementFloat : SequenceCondition
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqCond_IncrementFloat")); }
	private static __gshared SeqCond_IncrementFloat mDefaultProperties;
	@property final static SeqCond_IncrementFloat DefaultProperties() { mixin(MGDPC("SeqCond_IncrementFloat", "SeqCond_IncrementFloat Engine.Default__SeqCond_IncrementFloat")); }
	@property final auto ref
	{
		float ValueB() { mixin(MGPC("float", 216)); }
		float ValueA() { mixin(MGPC("float", 212)); }
		float IncrementAmount() { mixin(MGPC("float", 208)); }
	}
}
