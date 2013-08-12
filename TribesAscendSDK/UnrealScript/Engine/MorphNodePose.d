module UnrealScript.Engine.MorphNodePose;

import ScriptClasses;
import UnrealScript.Engine.MorphTarget;
import UnrealScript.Engine.MorphNodeBase;

extern(C++) interface MorphNodePose : MorphNodeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MorphNodePose")); }
	private static __gshared MorphNodePose mDefaultProperties;
	@property final static MorphNodePose DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MorphNodePose)("MorphNodePose Engine.Default__MorphNodePose")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSetMorphTarget;
		public @property static final ScriptFunction SetMorphTarget() { return mSetMorphTarget ? mSetMorphTarget : (mSetMorphTarget = ScriptObject.Find!(ScriptFunction)("Function Engine.MorphNodePose.SetMorphTarget")); }
	}
	@property final auto ref
	{
		float Weight() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
		ScriptName MorphName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 112); }
		MorphTarget Target() { return *cast(MorphTarget*)(cast(size_t)cast(void*)this + 108); }
	}
	final void SetMorphTarget(ScriptName MorphTargetName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = MorphTargetName;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetMorphTarget, params.ptr, cast(void*)0);
	}
}
