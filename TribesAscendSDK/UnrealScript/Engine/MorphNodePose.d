module UnrealScript.Engine.MorphNodePose;

import ScriptClasses;
import UnrealScript.Engine.MorphTarget;
import UnrealScript.Engine.MorphNodeBase;

extern(C++) interface MorphNodePose : MorphNodeBase
{
public extern(D):
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20610], params.ptr, cast(void*)0);
	}
}
