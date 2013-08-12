module UnrealScript.GameFramework.SeqAct_Deproject;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_Deproject : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.SeqAct_Deproject")); }
	private static __gshared SeqAct_Deproject mDefaultProperties;
	@property final static SeqAct_Deproject DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_Deproject)("SeqAct_Deproject GameFramework.Default__SeqAct_Deproject")); }
	@property final auto ref
	{
		Vector HitNormal() { return *cast(Vector*)(cast(size_t)cast(void*)this + 260); }
		Vector HitLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 248); }
		UObject HitObject() { return *cast(UObject*)(cast(size_t)cast(void*)this + 244); }
		float TraceDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
		float ScreenY() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
		float ScreenX() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
	}
}
