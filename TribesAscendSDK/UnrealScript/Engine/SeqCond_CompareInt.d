module UnrealScript.Engine.SeqCond_CompareInt;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceCondition;

extern(C++) interface SeqCond_CompareInt : SequenceCondition
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqCond_CompareInt")()); }
	private static __gshared SeqCond_CompareInt mDefaultProperties;
	@property final static SeqCond_CompareInt DefaultProperties() { mixin(MGDPC!(SeqCond_CompareInt, "SeqCond_CompareInt Engine.Default__SeqCond_CompareInt")()); }
	@property final auto ref
	{
		int ValueB() { mixin(MGPC!("int", 212)()); }
		int ValueA() { mixin(MGPC!("int", 208)()); }
	}
}
