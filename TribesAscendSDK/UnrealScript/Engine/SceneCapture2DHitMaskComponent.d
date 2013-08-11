module UnrealScript.Engine.SceneCapture2DHitMaskComponent;

import ScriptClasses;
import UnrealScript.Engine.TextureRenderTarget2D;
import UnrealScript.Engine.SceneCaptureComponent;

extern(C++) interface SceneCapture2DHitMaskComponent : SceneCaptureComponent
{
	public @property final auto ref float FadingIntervalTime() { return *cast(float*)(cast(size_t)cast(void*)this + 176); }
	public @property final auto ref float FadingDurationTime() { return *cast(float*)(cast(size_t)cast(void*)this + 172); }
	public @property final auto ref float FadingPercentage() { return *cast(float*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref float FadingStartTimeSinceHit() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref int HitMaskCullDistance() { return *cast(int*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref int ForceLOD() { return *cast(int*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref int MaterialIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 152); }
	public @property final auto ref TextureRenderTarget2D TextureTarget() { return *cast(TextureRenderTarget2D*)(cast(size_t)cast(void*)this + 144); }
	final void SetCaptureTargetTexture(TextureRenderTarget2D InTextureTarget)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TextureRenderTarget2D*)params.ptr = InTextureTarget;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25449], params.ptr, cast(void*)0);
	}
	final void SetCaptureParameters(Vector InMaskPosition, float InMaskRadius, Vector InStartupPosition, bool bOnlyWhenFacing)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Vector*)params.ptr = InMaskPosition;
		*cast(float*)&params[12] = InMaskRadius;
		*cast(Vector*)&params[16] = InStartupPosition;
		*cast(bool*)&params[28] = bOnlyWhenFacing;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25451], params.ptr, cast(void*)0);
	}
	final void SetFadingStartTimeSinceHit(float InFadingStartTimeSinceHit)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = InFadingStartTimeSinceHit;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25456], params.ptr, cast(void*)0);
	}
}
