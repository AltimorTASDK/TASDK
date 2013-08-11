module UnrealScript.Engine.PhysicsAsset;

import ScriptClasses;
import UnrealScript.Engine.RB_BodySetup;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.RB_ConstraintSetup;
import UnrealScript.Engine.PhysicsAssetInstance;
import UnrealScript.Engine.SkeletalMesh;

extern(C++) interface PhysicsAsset : UObject
{
	public @property final auto ref ScriptArray!(RB_ConstraintSetup) ConstraintSetup() { return *cast(ScriptArray!(RB_ConstraintSetup)*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref ScriptArray!(RB_BodySetup) BodySetup() { return *cast(ScriptArray!(RB_BodySetup)*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref ScriptArray!(int) BoundsBodies() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref PhysicsAssetInstance DefaultInstance() { return *cast(PhysicsAssetInstance*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref UObject.Map_Mirror BodySetupIndexMap() { return *cast(UObject.Map_Mirror*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref SkeletalMesh DefaultSkelMesh() { return *cast(SkeletalMesh*)(cast(size_t)cast(void*)this + 60); }
	final int FindBodyIndex(ScriptName BodyName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = BodyName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24337], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
}
