module UnrealScript.Engine.SceneCapture2DComponent;

import ScriptClasses;
import UnrealScript.Engine.TextureRenderTarget2D;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SceneCaptureComponent;

extern(C++) interface SceneCapture2DComponent : SceneCaptureComponent
{
	public @property final auto ref UObject.Matrix ProjMatrix() { return *cast(UObject.Matrix*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref UObject.Matrix ViewMatrix() { return *cast(UObject.Matrix*)(cast(size_t)cast(void*)this + 176); }
	public @property final bool bUpdateMatrices() { return (*cast(uint*)(cast(size_t)cast(void*)this + 160) & 0x1) != 0; }
	public @property final bool bUpdateMatrices(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 160) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 160) &= ~0x1; } return val; }
	public @property final auto ref float FarPlane() { return *cast(float*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref float NearPlane() { return *cast(float*)(cast(size_t)cast(void*)this + 152); }
	public @property final auto ref float FieldOfView() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref TextureRenderTarget2D TextureTarget() { return *cast(TextureRenderTarget2D*)(cast(size_t)cast(void*)this + 144); }
	final void SetCaptureParameters(TextureRenderTarget2D NewTextureTarget, float NewFOV, float NewNearPlane, float NewFarPlane)
	{
		ubyte params[16];
		params[] = 0;
		*cast(TextureRenderTarget2D*)params.ptr = NewTextureTarget;
		*cast(float*)&params[4] = NewFOV;
		*cast(float*)&params[8] = NewNearPlane;
		*cast(float*)&params[12] = NewFarPlane;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25429], params.ptr, cast(void*)0);
	}
	final void SetView(Vector NewLocation, Rotator NewRotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = NewLocation;
		*cast(Rotator*)&params[12] = NewRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25434], params.ptr, cast(void*)0);
	}
}
