module UnrealScript.Engine.SeqAct_GetProperty;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_GetProperty : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_GetProperty")); }
	private static __gshared SeqAct_GetProperty mDefaultProperties;
	@property final static SeqAct_GetProperty DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_GetProperty)("SeqAct_GetProperty Engine.Default__SeqAct_GetProperty")); }
	@property final auto ref ScriptName PropertyName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 232); }
}
