module UnrealScript.Engine.SeqVar_Int;

import ScriptClasses;
import UnrealScript.Engine.SequenceVariable;

extern(C++) interface SeqVar_Int : SequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqVar_Int")); }
	private static __gshared SeqVar_Int mDefaultProperties;
	@property final static SeqVar_Int DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqVar_Int)("SeqVar_Int Engine.Default__SeqVar_Int")); }
	@property final auto ref int IntValue() { return *cast(int*)(cast(size_t)cast(void*)this + 148); }
}
