module UnrealScript.Engine.SeqAct_SetVectorComponents;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_SetVectorComponents : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_SetVectorComponents")); }
	private static __gshared SeqAct_SetVectorComponents mDefaultProperties;
	@property final static SeqAct_SetVectorComponents DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_SetVectorComponents)("SeqAct_SetVectorComponents Engine.Default__SeqAct_SetVectorComponents")); }
	@property final auto ref
	{
		float Z() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
		float Y() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
		float X() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
		Vector OutVector() { return *cast(Vector*)(cast(size_t)cast(void*)this + 232); }
	}
}
