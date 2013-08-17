module UnrealScript.UnrealEd.ASVSkelComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SkeletalMeshComponent;

extern(C++) interface ASVSkelComponent : SkeletalMeshComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.ASVSkelComponent")()); }
	private static __gshared ASVSkelComponent mDefaultProperties;
	@property final static ASVSkelComponent DefaultProperties() { mixin(MGDPC!(ASVSkelComponent, "ASVSkelComponent UnrealEd.Default__ASVSkelComponent")()); }
}
