module UnrealScript.Engine.SceneCapture2DComponent;

import ScriptClasses;
import UnrealScript.Engine.TextureRenderTarget2D;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SceneCaptureComponent;

extern(C++) interface SceneCapture2DComponent : SceneCaptureComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SceneCapture2DComponent")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetCaptureParameters;
			ScriptFunction mSetView;
		}
		public @property static final
		{
			ScriptFunction SetCaptureParameters() { return mSetCaptureParameters ? mSetCaptureParameters : (mSetCaptureParameters = ScriptObject.Find!(ScriptFunction)("Function Engine.SceneCapture2DComponent.SetCaptureParameters")); }
			ScriptFunction SetView() { return mSetView ? mSetView : (mSetView = ScriptObject.Find!(ScriptFunction)("Function Engine.SceneCapture2DComponent.SetView")); }
		}
	}
	@property final
	{
		auto ref
		{
			UObject.Matrix ProjMatrix() { return *cast(UObject.Matrix*)(cast(size_t)cast(void*)this + 240); }
			UObject.Matrix ViewMatrix() { return *cast(UObject.Matrix*)(cast(size_t)cast(void*)this + 176); }
			float FarPlane() { return *cast(float*)(cast(size_t)cast(void*)this + 156); }
			float NearPlane() { return *cast(float*)(cast(size_t)cast(void*)this + 152); }
			float FieldOfView() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
			TextureRenderTarget2D TextureTarget() { return *cast(TextureRenderTarget2D*)(cast(size_t)cast(void*)this + 144); }
		}
		bool bUpdateMatrices() { return (*cast(uint*)(cast(size_t)cast(void*)this + 160) & 0x1) != 0; }
		bool bUpdateMatrices(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 160) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 160) &= ~0x1; } return val; }
	}
final:
	void SetCaptureParameters(TextureRenderTarget2D NewTextureTarget, float NewFOV, float NewNearPlane, float NewFarPlane)
	{
		ubyte params[16];
		params[] = 0;
		*cast(TextureRenderTarget2D*)params.ptr = NewTextureTarget;
		*cast(float*)&params[4] = NewFOV;
		*cast(float*)&params[8] = NewNearPlane;
		*cast(float*)&params[12] = NewFarPlane;
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
