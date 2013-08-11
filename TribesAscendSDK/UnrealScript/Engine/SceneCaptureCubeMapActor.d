module UnrealScript.Engine.SceneCaptureCubeMapActor;

import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.SceneCaptureActor;

extern(C++) interface SceneCaptureCubeMapActor : SceneCaptureActor
{
public extern(D):
	@property final auto ref MaterialInstanceConstant CubeMaterialInst() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 484); }
}
