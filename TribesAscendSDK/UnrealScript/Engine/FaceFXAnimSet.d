module UnrealScript.Engine.FaceFXAnimSet;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.FaceFXAsset;

extern(C++) interface FaceFXAnimSet : UObject
{
public extern(D):
	@property final auto ref
	{
		ScriptArray!(ubyte) RawFaceFXAnimSetBytes() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 68); }
		ScriptArray!(ubyte) RawFaceFXMiniSessionBytes() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 80); }
		ScriptArray!(SoundCue) ReferencedSoundCues() { return *cast(ScriptArray!(SoundCue)*)(cast(size_t)cast(void*)this + 92); }
		int NumLoadErrors() { return *cast(int*)(cast(size_t)cast(void*)this + 104); }
		UObject.Pointer InternalFaceFXAnimSet() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 64); }
		FaceFXAsset DefaultFaceFXAsset() { return *cast(FaceFXAsset*)(cast(size_t)cast(void*)this + 60); }
	}
}
