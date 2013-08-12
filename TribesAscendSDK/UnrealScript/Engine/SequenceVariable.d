module UnrealScript.Engine.SequenceVariable;

import ScriptClasses;
import UnrealScript.Engine.SequenceObject;

extern(C++) interface SequenceVariable : SequenceObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SequenceVariable")); }
	private static __gshared SequenceVariable mDefaultProperties;
	@property final static SequenceVariable DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SequenceVariable)("SequenceVariable Engine.Default__SequenceVariable")); }
	@property final auto ref ScriptName VarName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 140); }
}
