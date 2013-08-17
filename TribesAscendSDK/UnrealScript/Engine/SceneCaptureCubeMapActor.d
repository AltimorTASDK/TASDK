module UnrealScript.Engine.SceneCaptureCubeMapActor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.SceneCaptureActor;

extern(C++) interface SceneCaptureCubeMapActor : SceneCaptureActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SceneCaptureCubeMapActor")); }
	private static __gshared SceneCaptureCubeMapActor mDefaultProperties;
	@property final static SceneCaptureCubeMapActor DefaultProperties() { mixin(MGDPC("SceneCaptureCubeMapActor", "SceneCaptureCubeMapActor Engine.Default__SceneCaptureCubeMapActor")); }
	@property final auto ref
	{
		MaterialInstanceConstant CubeMaterialInst() { mixin(MGPC("MaterialInstanceConstant", 484)); }
		// WARNING: Property 'StaticMesh' has the same name as a defined type!
	}
}
