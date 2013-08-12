module UnrealScript.Engine.SeqAct_GetDistance;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_GetDistance : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_GetDistance")); }
	private static __gshared SeqAct_GetDistance mDefaultProperties;
	@property final static SeqAct_GetDistance DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_GetDistance)("SeqAct_GetDistance Engine.Default__SeqAct_GetDistance")); }
	@property final auto ref float Distance() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
}
