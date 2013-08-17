module UnrealScript.Engine.FaceFXAnimSet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.FaceFXAsset;

extern(C++) interface FaceFXAnimSet : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.FaceFXAnimSet")()); }
	private static __gshared FaceFXAnimSet mDefaultProperties;
	@property final static FaceFXAnimSet DefaultProperties() { mixin(MGDPC!(FaceFXAnimSet, "FaceFXAnimSet Engine.Default__FaceFXAnimSet")()); }
	@property final auto ref
	{
		ScriptArray!(ubyte) RawFaceFXAnimSetBytes() { mixin(MGPC!(ScriptArray!(ubyte), 68)()); }
		ScriptArray!(ubyte) RawFaceFXMiniSessionBytes() { mixin(MGPC!(ScriptArray!(ubyte), 80)()); }
		ScriptArray!(SoundCue) ReferencedSoundCues() { mixin(MGPC!(ScriptArray!(SoundCue), 92)()); }
		int NumLoadErrors() { mixin(MGPC!(int, 104)()); }
		UObject.Pointer InternalFaceFXAnimSet() { mixin(MGPC!(UObject.Pointer, 64)()); }
		FaceFXAsset DefaultFaceFXAsset() { mixin(MGPC!(FaceFXAsset, 60)()); }
	}
}
