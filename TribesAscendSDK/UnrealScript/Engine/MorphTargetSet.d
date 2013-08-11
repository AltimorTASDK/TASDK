module UnrealScript.Engine.MorphTargetSet;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MorphTarget;
import UnrealScript.Engine.SkeletalMesh;

extern(C++) interface MorphTargetSet : UObject
{
	public @property final auto ref ScriptArray!(MorphTarget) Targets() { return *cast(ScriptArray!(MorphTarget)*)(cast(size_t)cast(void*)this + 60); }
	public @property final auto ref UObject.Array_Mirror RawWedgePointIndices() { return *cast(UObject.Array_Mirror*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref SkeletalMesh BaseSkelMesh() { return *cast(SkeletalMesh*)(cast(size_t)cast(void*)this + 72); }
	final MorphTarget FindMorphTarget(ScriptName MorphTargetName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = MorphTargetName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[20659], params.ptr, cast(void*)0);
		return *cast(MorphTarget*)&params[8];
	}
}
