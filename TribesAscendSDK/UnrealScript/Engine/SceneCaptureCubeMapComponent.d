module UnrealScript.Engine.SceneCaptureCubeMapComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SceneCaptureComponent;
import UnrealScript.Engine.TextureRenderTargetCube;

extern(C++) interface SceneCaptureCubeMapComponent : SceneCaptureComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SceneCaptureCubeMapComponent")); }
	private static __gshared SceneCaptureCubeMapComponent mDefaultProperties;
	@property final static SceneCaptureCubeMapComponent DefaultProperties() { mixin(MGDPC("SceneCaptureCubeMapComponent", "SceneCaptureCubeMapComponent Engine.Default__SceneCaptureCubeMapComponent")); }
	@property final auto ref
	{
		Vector WorldLocation() { mixin(MGPC("Vector", 156)); }
		float FarPlane() { mixin(MGPC("float", 152)); }
		float NearPlane() { mixin(MGPC("float", 148)); }
		TextureRenderTargetCube TextureTarget() { mixin(MGPC("TextureRenderTargetCube", 144)); }
	}
}
