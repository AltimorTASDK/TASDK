module UnrealScript.Engine.SceneCapture2DHitMaskComponent;

import ScriptClasses;
import UnrealScript.Engine.TextureRenderTarget2D;
import UnrealScript.Engine.SceneCaptureComponent;

extern(C++) interface SceneCapture2DHitMaskComponent : SceneCaptureComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SceneCapture2DHitMaskComponent")); }
	private static __gshared SceneCapture2DHitMaskComponent mDefaultProperties;
	@property final static SceneCapture2DHitMaskComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SceneCapture2DHitMaskComponent)("SceneCapture2DHitMaskComponent Engine.Default__SceneCapture2DHitMaskComponent")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetCaptureTargetTexture;
			ScriptFunction mSetCaptureParameters;
			ScriptFunction mSetFadingStartTimeSinceHit;
		}
		public @property static final
		{
			ScriptFunction SetCaptureTargetTexture() { return mSetCaptureTargetTexture ? mSetCaptureTargetTexture : (mSetCaptureTargetTexture = ScriptObject.Find!(ScriptFunction)("Function Engine.SceneCapture2DHitMaskComponent.SetCaptureTargetTexture")); }
			ScriptFunction SetCaptureParameters() { return mSetCaptureParameters ? mSetCaptureParameters : (mSetCaptureParameters = ScriptObject.Find!(ScriptFunction)("Function Engine.SceneCapture2DHitMaskComponent.SetCaptureParameters")); }
			ScriptFunction SetFadingStartTimeSinceHit() { return mSetFadingStartTimeSinceHit ? mSetFadingStartTimeSinceHit : (mSetFadingStartTimeSinceHit = ScriptObject.Find!(ScriptFunction)("Function Engine.SceneCapture2DHitMaskComponent.SetFadingStartTimeSinceHit")); }
		}
	}
	@property final auto ref
	{
		float FadingIntervalTime() { return *cast(float*)(cast(size_t)cast(void*)this + 176); }
		float FadingDurationTime() { return *cast(float*)(cast(size_t)cast(void*)this + 172); }
		float FadingPercentage() { return *cast(float*)(cast(size_t)cast(void*)this + 168); }
		float FadingStartTimeSinceHit() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
		int HitMaskCullDistance() { return *cast(int*)(cast(size_t)cast(void*)this + 160); }
		int ForceLOD() { return *cast(int*)(cast(size_t)cast(void*)this + 156); }
		int MaterialIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 152); }
		TextureRenderTarget2D TextureTarget() { return *cast(TextureRenderTarget2D*)(cast(size_t)cast(void*)this + 144); }
	}
final:
	void SetCaptureTargetTexture(TextureRenderTarget2D InTextureTarget)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TextureRenderTarget2D*)params.ptr = InTextureTarget;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCaptureTargetTexture, params.ptr, cast(void*)0);
	}
	void SetCaptureParameters(Vector InMaskPosition, float InMaskRadius, Vector InStartupPosition, bool bOnlyWhenFacing)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Vector*)params.ptr = InMaskPosition;
		*cast(float*)&params[12] = InMaskRadius;
		*cast(Vector*)&params[16] = InStartupPosition;
		*cast(bool*)&params[28] = bOnlyWhenFacing;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCaptureParameters, params.ptr, cast(void*)0);
	}
	void SetFadingStartTimeSinceHit(float InFadingStartTimeSinceHit)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = InFadingStartTimeSinceHit;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFadingStartTimeSinceHit, params.ptr, cast(void*)0);
	}
}
