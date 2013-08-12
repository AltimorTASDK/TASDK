module UnrealScript.Engine.SceneCaptureCubeMapComponent;

import ScriptClasses;
import UnrealScript.Engine.SceneCaptureComponent;
import UnrealScript.Engine.TextureRenderTargetCube;

extern(C++) interface SceneCaptureCubeMapComponent : SceneCaptureComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SceneCaptureCubeMapComponent")); }
	@property final auto ref
	{
		Vector WorldLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 156); }
		float FarPlane() { return *cast(float*)(cast(size_t)cast(void*)this + 152); }
		float NearPlane() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
		TextureRenderTargetCube TextureTarget() { return *cast(TextureRenderTargetCube*)(cast(size_t)cast(void*)this + 144); }
	}
}
