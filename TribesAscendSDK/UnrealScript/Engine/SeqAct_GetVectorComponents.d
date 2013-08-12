module UnrealScript.Engine.SeqAct_GetVectorComponents;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_GetVectorComponents : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_GetVectorComponents")); }
	private static __gshared SeqAct_GetVectorComponents mDefaultProperties;
	@property final static SeqAct_GetVectorComponents DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_GetVectorComponents)("SeqAct_GetVectorComponents Engine.Default__SeqAct_GetVectorComponents")); }
	@property final auto ref
	{
		float Z() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
		float Y() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
		float X() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
		Vector InVector() { return *cast(Vector*)(cast(size_t)cast(void*)this + 232); }
	}
}
