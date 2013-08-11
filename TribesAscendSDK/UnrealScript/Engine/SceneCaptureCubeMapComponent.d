module UnrealScript.Engine.SceneCaptureCubeMapComponent;

import ScriptClasses;
import UnrealScript.Engine.SceneCaptureComponent;
import UnrealScript.Engine.TextureRenderTargetCube;

extern(C++) interface SceneCaptureCubeMapComponent : SceneCaptureComponent
{
	public @property final auto ref Vector WorldLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref float FarPlane() { return *cast(float*)(cast(size_t)cast(void*)this + 152); }
	public @property final auto ref float NearPlane() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref TextureRenderTargetCube TextureTarget() { return *cast(TextureRenderTargetCube*)(cast(size_t)cast(void*)this + 144); }
}
