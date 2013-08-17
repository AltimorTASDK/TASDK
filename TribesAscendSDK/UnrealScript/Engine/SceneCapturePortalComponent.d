module UnrealScript.Engine.SceneCapturePortalComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.TextureRenderTarget2D;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SceneCaptureComponent;

extern(C++) interface SceneCapturePortalComponent : SceneCaptureComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SceneCapturePortalComponent")()); }
	private static __gshared SceneCapturePortalComponent mDefaultProperties;
	@property final static SceneCapturePortalComponent DefaultProperties() { mixin(MGDPC!(SceneCapturePortalComponent, "SceneCapturePortalComponent Engine.Default__SceneCapturePortalComponent")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSetCaptureParameters;
		public @property static final ScriptFunction SetCaptureParameters() { mixin(MGF!("mSetCaptureParameters", "Function Engine.SceneCapturePortalComponent.SetCaptureParameters")()); }
	}
	@property final auto ref
	{
		Actor ViewDestination() { mixin(MGPC!("Actor", 152)()); }
		float ScaleFOV() { mixin(MGPC!("float", 148)()); }
		TextureRenderTarget2D TextureTarget() { mixin(MGPC!("TextureRenderTarget2D", 144)()); }
	}
	final void SetCaptureParameters(TextureRenderTarget2D* NewTextureTarget = null, float* NewScaleFOV = null, Actor* NewViewDest = null)
	{
		ubyte params[12];
		params[] = 0;
		if (NewTextureTarget !is null)
			*cast(TextureRenderTarget2D*)params.ptr = *NewTextureTarget;
		if (NewScaleFOV !is null)
			*cast(float*)&params[4] = *NewScaleFOV;
		if (NewViewDest !is null)
			*cast(Actor*)&params[8] = *NewViewDest;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCaptureParameters, params.ptr, cast(void*)0);
	}
}
