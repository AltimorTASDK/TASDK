module UnrealScript.Engine.SceneCapturePortalComponent;

import ScriptClasses;
import UnrealScript.Engine.TextureRenderTarget2D;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SceneCaptureComponent;

extern(C++) interface SceneCapturePortalComponent : SceneCaptureComponent
{
public extern(D):
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24713], params.ptr, cast(void*)0);
	}
}
