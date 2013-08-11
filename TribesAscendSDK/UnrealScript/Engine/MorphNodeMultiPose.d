module UnrealScript.Engine.MorphNodeMultiPose;

import ScriptClasses;
import UnrealScript.Engine.MorphTarget;
import UnrealScript.Engine.MorphNodeBase;

extern(C++) interface MorphNodeMultiPose : MorphNodeBase
{
	public @property final auto ref ScriptArray!(MorphTarget) Targets() { return *cast(ScriptArray!(MorphTarget)*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref ScriptArray!(ScriptName) MorphNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref ScriptArray!(float) Weights() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 132); }
	final bool AddMorphTarget(ScriptName MorphTargetName, float InWeight)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = MorphTargetName;
		*cast(float*)&params[8] = InWeight;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20597], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final void RemoveMorphTarget(ScriptName MorphTargetName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = MorphTargetName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20601], params.ptr, cast(void*)0);
	}
	final bool UpdateMorphTarget(MorphTarget Target, float InWeight)
	{
		ubyte params[12];
		params[] = 0;
		*cast(MorphTarget*)params.ptr = Target;
		*cast(float*)&params[4] = InWeight;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20603], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
}
