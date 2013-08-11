module UnrealScript.Engine.SkeletalMeshSocket;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SkeletalMesh;
import UnrealScript.Engine.StaticMesh;

extern(C++) interface SkeletalMeshSocket : UObject
{
public extern(D):
	@property final auto ref
	{
		StaticMesh PreviewStaticMesh() { return *cast(StaticMesh*)(cast(size_t)cast(void*)this + 120); }
		SkeletalMesh PreviewSkelMesh() { return *cast(SkeletalMesh*)(cast(size_t)cast(void*)this + 112); }
		Vector RelativeScale() { return *cast(Vector*)(cast(size_t)cast(void*)this + 100); }
		Rotator RelativeRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 88); }
		Vector RelativeLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 76); }
		ScriptName BoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 68); }
		ScriptName SocketName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 60); }
	}
}
