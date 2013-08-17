module UnrealScript.UnrealEd.AnimTreeEdSkelComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SkeletalMeshComponent;

extern(C++) interface AnimTreeEdSkelComponent : SkeletalMeshComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.AnimTreeEdSkelComponent")()); }
	private static __gshared AnimTreeEdSkelComponent mDefaultProperties;
	@property final static AnimTreeEdSkelComponent DefaultProperties() { mixin(MGDPC!(AnimTreeEdSkelComponent, "AnimTreeEdSkelComponent UnrealEd.Default__AnimTreeEdSkelComponent")()); }
}
