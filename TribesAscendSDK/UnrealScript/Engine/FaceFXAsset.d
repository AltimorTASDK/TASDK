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
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.FaceFXAsset")); }
	private static __gshared FaceFXAsset mDefaultProperties;
	@property final static FaceFXAsset DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(FaceFXAsset)("FaceFXAsset Engine.Default__FaceFXAsset")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mMountFaceFXAnimSet;
			ScriptFunction mUnmountFaceFXAnimSet;
		}
		public @property static final
		{
			ScriptFunction MountFaceFXAnimSet() { return mMountFaceFXAnimSet ? mMountFaceFXAnimSet : (mMountFaceFXAnimSet = ScriptObject.Find!(ScriptFunction)("Function Engine.FaceFXAsset.MountFaceFXAnimSet")); }
			ScriptFunction UnmountFaceFXAnimSet() { return mUnmountFaceFXAnimSet ? mUnmountFaceFXAnimSet : (mUnmountFaceFXAnimSet = ScriptObject.Find!(ScriptFunction)("Function Engine.FaceFXAsset.UnmountFaceFXAnimSet")); }
		}
	}
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
		(cast(ScriptObject)this).ProcessEvent(Functions.MountFaceFXAnimSet, params.ptr, cast(void*)0);
	}
	void UnmountFaceFXAnimSet(FaceFXAnimSet pAnimSet)
	{
		ubyte params[4];
		params[] = 0;
		*cast(FaceFXAnimSet*)params.ptr = pAnimSet;
		(cast(ScriptObject)this).ProcessEvent(Functions.UnmountFaceFXAnimSet, params.ptr, cast(void*)0);
	}
}
