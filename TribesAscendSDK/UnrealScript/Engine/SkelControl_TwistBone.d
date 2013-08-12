module UnrealScript.Engine.SkelControl_TwistBone;

import ScriptClasses;
import UnrealScript.Engine.SkelControlBase;

extern(C++) interface SkelControl_TwistBone : SkelControlBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SkelControl_TwistBone")); }
	private static __gshared SkelControl_TwistBone mDefaultProperties;
	@property final static SkelControl_TwistBone DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SkelControl_TwistBone)("SkelControl_TwistBone Engine.Default__SkelControl_TwistBone")); }
	@property final auto ref
	{
		float TwistAngleScale() { return *cast(float*)(cast(size_t)cast(void*)this + 196); }
		ScriptName SourceBoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 188); }
	}
}
