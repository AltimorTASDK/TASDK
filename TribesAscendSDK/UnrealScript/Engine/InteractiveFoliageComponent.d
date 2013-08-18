module UnrealScript.Engine.InteractiveFoliageComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.StaticMeshComponent;

extern(C++) interface InteractiveFoliageComponent : StaticMeshComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.InteractiveFoliageComponent")); }
	private static __gshared InteractiveFoliageComponent mDefaultProperties;
	@property final static InteractiveFoliageComponent DefaultProperties() { mixin(MGDPC("InteractiveFoliageComponent", "InteractiveFoliageComponent Engine.Default__InteractiveFoliageComponent")); }
	@property final auto ref Pointer FoliageSceneProxy() { mixin(MGPC("Pointer", 608)); }
}
