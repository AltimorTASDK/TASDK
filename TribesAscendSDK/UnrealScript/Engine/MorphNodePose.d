module UnrealScript.Engine.MorphNodePose;

import ScriptClasses;
import UnrealScript.Engine.MorphTarget;
import UnrealScript.Engine.MorphNodeBase;

extern(C++) interface MorphNodePose : MorphNodeBase
{
	public @property final auto ref float Weight() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref ScriptName MorphName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref MorphTarget Target() { return *cast(MorphTarget*)(cast(size_t)cast(void*)this + 108); }
	final void SetMorphTarget(ScriptName MorphTargetName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = MorphTargetName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20610], params.ptr, cast(void*)0);
	}
}
