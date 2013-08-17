module UnrealScript.Engine.SceneCapture2DHitMaskComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.TextureRenderTarget2D;
import UnrealScript.Engine.SceneCaptureComponent;

extern(C++) interface SceneCapture2DHitMaskComponent : SceneCaptureComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SceneCapture2DHitMaskComponent")()); }
	private static __gshared SceneCapture2DHitMaskComponent mDefaultProperties;
	@property final static SceneCapture2DHitMaskComponent DefaultProperties() { mixin(MGDPC!(SceneCapture2DHitMaskComponent, "SceneCapture2DHitMaskComponent Engine.Default__SceneCapture2DHitMaskComponent")()); }
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
			ScriptFunction SetCaptureTargetTexture() { mixin(MGF!("mSetCaptureTargetTexture", "Function Engine.SceneCapture2DHitMaskComponent.SetCaptureTargetTexture")()); }
			ScriptFunction SetCaptureParameters() { mixin(MGF!("mSetCaptureParameters", "Function Engine.SceneCapture2DHitMaskComponent.SetCaptureParameters")()); }
			ScriptFunction SetFadingStartTimeSinceHit() { mixin(MGF!("mSetFadingStartTimeSinceHit", "Function Engine.SceneCapture2DHitMaskComponent.SetFadingStartTimeSinceHit")()); }
		}
	}
	@property final auto ref
	{
		float FadingIntervalTime() { mixin(MGPC!("float", 176)()); }
		float FadingDurationTime() { mixin(MGPC!("float", 172)()); }
		float FadingPercentage() { mixin(MGPC!("float", 168)()); }
		float FadingStartTimeSinceHit() { mixin(MGPC!("float", 164)()); }
		int HitMaskCullDistance() { mixin(MGPC!("int", 160)()); }
		int ForceLOD() { mixin(MGPC!("int", 156)()); }
		int MaterialIndex() { mixin(MGPC!("int", 152)()); }
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'SkeletalMeshComp'!
		TextureRenderTarget2D TextureTarget() { mixin(MGPC!("TextureRenderTarget2D", 144)()); }
	}
final:
	void SetCaptureTargetTexture(in TextureRenderTarget2D InTextureTarget)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TextureRenderTarget2D*)params.ptr = cast(TextureRenderTarget2D)InTextureTarget;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCaptureTargetTexture, params.ptr, cast(void*)0);
	}
	void SetCaptureParameters(in Vector InMaskPosition, in float InMaskRadius, in Vector InStartupPosition, in bool bOnlyWhenFacing)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Vector*)params.ptr = cast(Vector)InMaskPosition;
		*cast(float*)&params[12] = cast(float)InMaskRadius;
		*cast(Vector*)&params[16] = cast(Vector)InStartupPosition;
		*cast(bool*)&params[28] = cast(bool)bOnlyWhenFacing;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCaptureParameters, params.ptr, cast(void*)0);
	}
	void SetFadingStartTimeSinceHit(in float InFadingStartTimeSinceHit)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = cast(float)InFadingStartTimeSinceHit;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFadingStartTimeSinceHit, params.ptr, cast(void*)0);
	}
}
