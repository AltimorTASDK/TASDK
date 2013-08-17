module UnrealScript.Engine.SceneCapture2DComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.TextureRenderTarget2D;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SceneCaptureComponent;

extern(C++) interface SceneCapture2DComponent : SceneCaptureComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SceneCapture2DComponent")()); }
	private static __gshared SceneCapture2DComponent mDefaultProperties;
	@property final static SceneCapture2DComponent DefaultProperties() { mixin(MGDPC!(SceneCapture2DComponent, "SceneCapture2DComponent Engine.Default__SceneCapture2DComponent")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetCaptureParameters;
			ScriptFunction mSetView;
		}
		public @property static final
		{
			ScriptFunction SetCaptureParameters() { mixin(MGF!("mSetCaptureParameters", "Function Engine.SceneCapture2DComponent.SetCaptureParameters")()); }
			ScriptFunction SetView() { mixin(MGF!("mSetView", "Function Engine.SceneCapture2DComponent.SetView")()); }
		}
	}
	@property final
	{
		auto ref
		{
			UObject.Matrix ProjMatrix() { mixin(MGPC!("UObject.Matrix", 240)()); }
			UObject.Matrix ViewMatrix() { mixin(MGPC!("UObject.Matrix", 176)()); }
			float FarPlane() { mixin(MGPC!("float", 156)()); }
			float NearPlane() { mixin(MGPC!("float", 152)()); }
			float FieldOfView() { mixin(MGPC!("float", 148)()); }
			TextureRenderTarget2D TextureTarget() { mixin(MGPC!("TextureRenderTarget2D", 144)()); }
		}
		bool bUpdateMatrices() { mixin(MGBPC!(160, 0x1)()); }
		bool bUpdateMatrices(bool val) { mixin(MSBPC!(160, 0x1)()); }
	}
final:
	void SetCaptureParameters(TextureRenderTarget2D* NewTextureTarget = null, float* NewFOV = null, float* NewNearPlane = null, float* NewFarPlane = null)
	{
		ubyte params[16];
		params[] = 0;
		if (NewTextureTarget !is null)
			*cast(TextureRenderTarget2D*)params.ptr = *NewTextureTarget;
		if (NewFOV !is null)
			*cast(float*)&params[4] = *NewFOV;
		if (NewNearPlane !is null)
			*cast(float*)&params[8] = *NewNearPlane;
		if (NewFarPlane !is null)
			*cast(float*)&params[12] = *NewFarPlane;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCaptureParameters, params.ptr, cast(void*)0);
	}
	void SetView(Vector NewLocation, Rotator NewRotation)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = NewLocation;
		*cast(Rotator*)&params[12] = NewRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetView, params.ptr, cast(void*)0);
	}
}
