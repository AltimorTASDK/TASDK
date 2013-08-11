module UnrealScript.Engine.SceneCaptureReflectComponent;

import UnrealScript.Engine.TextureRenderTarget2D;
import UnrealScript.Engine.SceneCaptureComponent;

extern(C++) interface SceneCaptureReflectComponent : SceneCaptureComponent
{
public extern(D):
	@property final auto ref
	{
		float ScaleFOV() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
		TextureRenderTarget2D TextureTarget() { return *cast(TextureRenderTarget2D*)(cast(size_t)cast(void*)this + 144); }
	}
}
