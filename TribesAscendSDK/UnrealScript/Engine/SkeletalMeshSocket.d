module UnrealScript.Engine.SkeletalMeshSocket;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SkeletalMesh;
import UnrealScript.Engine.StaticMesh;

extern(C++) interface SkeletalMeshSocket : UObject
{
	public @property final auto ref StaticMesh PreviewStaticMesh() { return *cast(StaticMesh*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref SkeletalMesh PreviewSkelMesh() { return *cast(SkeletalMesh*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref Vector RelativeScale() { return *cast(Vector*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref Rotator RelativeRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 88); }
	public @property final auto ref Vector RelativeLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref ScriptName BoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref ScriptName SocketName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 60); }
}
