module UnrealScript.UnrealEd.FaceFXStudioSkelComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SkeletalMeshComponent;

extern(C++) interface FaceFXStudioSkelComponent : SkeletalMeshComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.FaceFXStudioSkelComponent")); }
	private static __gshared FaceFXStudioSkelComponent mDefaultProperties;
	@property final static FaceFXStudioSkelComponent DefaultProperties() { mixin(MGDPC("FaceFXStudioSkelComponent", "FaceFXStudioSkelComponent UnrealEd.Default__FaceFXStudioSkelComponent")); }
}
