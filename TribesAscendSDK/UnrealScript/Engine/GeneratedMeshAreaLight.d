module UnrealScript.Engine.GeneratedMeshAreaLight;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SpotLight;

extern(C++) interface GeneratedMeshAreaLight : SpotLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.GeneratedMeshAreaLight")); }
	private static __gshared GeneratedMeshAreaLight mDefaultProperties;
	@property final static GeneratedMeshAreaLight DefaultProperties() { mixin(MGDPC("GeneratedMeshAreaLight", "GeneratedMeshAreaLight Engine.Default__GeneratedMeshAreaLight")); }
}
