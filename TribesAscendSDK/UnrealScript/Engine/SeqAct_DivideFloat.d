module UnrealScript.Engine.SeqAct_DivideFloat;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_SetSequenceVariable;

extern(C++) interface SeqAct_DivideFloat : SeqAct_SetSequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_DivideFloat")); }
	private static __gshared SeqAct_DivideFloat mDefaultProperties;
	@property final static SeqAct_DivideFloat DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_DivideFloat)("SeqAct_DivideFloat Engine.Default__SeqAct_DivideFloat")); }
	@property final auto ref
	{
		int IntResult() { return *cast(int*)(cast(size_t)cast(void*)this + 244); }
		float FloatResult() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
		float ValueB() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
		float ValueA() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
	}
}
