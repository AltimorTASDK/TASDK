module UnrealScript.Engine.FaceFXAsset;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MorphTargetSet;
import UnrealScript.Engine.FaceFXAnimSet;
import UnrealScript.Engine.SkeletalMesh;

extern(C++) interface FaceFXAsset : UObject
{
public extern(D):
	@property final auto ref
	{
		ScriptArray!(ubyte) RawFaceFXActorBytes() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 68); }
		ScriptArray!(ubyte) RawFaceFXSessionBytes() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 80); }
		ScriptArray!(MorphTargetSet) PreviewMorphSets() { return *cast(ScriptArray!(MorphTargetSet)*)(cast(size_t)cast(void*)this + 92); }
		ScriptArray!(FaceFXAnimSet) MountedFaceFXAnimSets() { return *cast(ScriptArray!(FaceFXAnimSet)*)(cast(size_t)cast(void*)this + 104); }
		ScriptArray!(SoundCue) ReferencedSoundCues() { return *cast(ScriptArray!(SoundCue)*)(cast(size_t)cast(void*)this + 116); }
		int NumLoadErrors() { return *cast(int*)(cast(size_t)cast(void*)this + 128); }
		UObject.Pointer FaceFXActor() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 64); }
		SkeletalMesh DefaultSkelMesh() { return *cast(SkeletalMesh*)(cast(size_t)cast(void*)this + 60); }
	}
final:
	void MountFaceFXAnimSet(FaceFXAnimSet pAnimSet)
	{
		ubyte params[4];
		params[] = 0;
		*cast(FaceFXAnimSet*)params.ptr = pAnimSet;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15642], params.ptr, cast(void*)0);
	}
	void UnmountFaceFXAnimSet(FaceFXAnimSet pAnimSet)
	{
		ubyte params[4];
		params[] = 0;
		*cast(FaceFXAnimSet*)params.ptr = pAnimSet;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15644], params.ptr, cast(void*)0);
	}
}
