module UnrealScript.Engine.SceneCapturePortalComponent;

import ScriptClasses;
import UnrealScript.Engine.TextureRenderTarget2D;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SceneCaptureComponent;

extern(C++) interface SceneCapturePortalComponent : SceneCaptureComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SceneCapturePortalComponent")); }
	private static __gshared SceneCapturePortalComponent mDefaultProperties;
	@property final static SceneCapturePortalComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SceneCapturePortalComponent)("SceneCapturePortalComponent Engine.Default__SceneCapturePortalComponent")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSetCaptureParameters;
		public @property static final ScriptFunction SetCaptureParameters() { return mSetCaptureParameters ? mSetCaptureParameters : (mSetCaptureParameters = ScriptObject.Find!(ScriptFunction)("Function Engine.SceneCapturePortalComponent.SetCaptureParameters")); }
	}
	@property final auto ref
	{
		Actor ViewDestination() { return *cast(Actor*)(cast(size_t)cast(void*)this + 152); }
		float ScaleFOV() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
		TextureRenderTarget2D TextureTarget() { return *cast(TextureRenderTarget2D*)(cast(size_t)cast(void*)this + 144); }
	}
	final void SetCaptureParameters(TextureRenderTarget2D NewTextureTarget, float NewScaleFOV, Actor NewViewDest)
	{
		ubyte params[12];
		params[] = 0;
		*cast(TextureRenderTarget2D*)params.ptr = NewTextureTarget;
		*cast(float*)&params[4] = NewScaleFOV;
		*cast(Actor*)&params[8] = NewViewDest;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCaptureParameters, params.ptr, cast(void*)0);
	}
}
