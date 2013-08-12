module UnrealScript.Engine.SeqVar_External;

import ScriptClasses;
import UnrealScript.Engine.SequenceVariable;

extern(C++) interface SeqVar_External : SequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqVar_External")); }
	@property final auto ref
	{
		ScriptString VariableLabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 152); }
		ScriptClass ExpectedType() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 148); }
	}
}
