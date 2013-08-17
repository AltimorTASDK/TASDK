module UnrealScript.Engine.FaceFXAsset;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MorphTargetSet;
import UnrealScript.Engine.FaceFXAnimSet;
import UnrealScript.Engine.SkeletalMesh;

extern(C++) interface FaceFXAsset : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.FaceFXAsset")); }
	private static __gshared FaceFXAsset mDefaultProperties;
	@property final static FaceFXAsset DefaultProperties() { mixin(MGDPC("FaceFXAsset", "FaceFXAsset Engine.Default__FaceFXAsset")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mMountFaceFXAnimSet;
			ScriptFunction mUnmountFaceFXAnimSet;
		}
		public @property static final
		{
			ScriptFunction MountFaceFXAnimSet() { mixin(MGF("mMountFaceFXAnimSet", "Function Engine.FaceFXAsset.MountFaceFXAnimSet")); }
			ScriptFunction UnmountFaceFXAnimSet() { mixin(MGF("mUnmountFaceFXAnimSet", "Function Engine.FaceFXAsset.UnmountFaceFXAnimSet")); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(ubyte) RawFaceFXActorBytes() { mixin(MGPC("ScriptArray!(ubyte)", 68)); }
		ScriptArray!(ubyte) RawFaceFXSessionBytes() { mixin(MGPC("ScriptArray!(ubyte)", 80)); }
		ScriptArray!(MorphTargetSet) PreviewMorphSets() { mixin(MGPC("ScriptArray!(MorphTargetSet)", 92)); }
		ScriptArray!(FaceFXAnimSet) MountedFaceFXAnimSets() { mixin(MGPC("ScriptArray!(FaceFXAnimSet)", 104)); }
		ScriptArray!(SoundCue) ReferencedSoundCues() { mixin(MGPC("ScriptArray!(SoundCue)", 116)); }
		int NumLoadErrors() { mixin(MGPC("int", 128)); }
		UObject.Pointer FaceFXActor() { mixin(MGPC("UObject.Pointer", 64)); }
		SkeletalMesh DefaultSkelMesh() { mixin(MGPC("SkeletalMesh", 60)); }
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
