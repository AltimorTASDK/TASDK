module UnrealScript.Engine.SeqCond_CompareInt;

import ScriptClasses;
import UnrealScript.Engine.SequenceCondition;

extern(C++) interface SeqCond_CompareInt : SequenceCondition
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqCond_CompareInt")); }
	private static __gshared SeqCond_CompareInt mDefaultProperties;
	@property final static SeqCond_CompareInt DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqCond_CompareInt)("SeqCond_CompareInt Engine.Default__SeqCond_CompareInt")); }
	@property final auto ref
	{
		int ValueB() { return *cast(int*)(cast(size_t)cast(void*)this + 212); }
		int ValueA() { return *cast(int*)(cast(size_t)cast(void*)this + 208); }
	}
}
