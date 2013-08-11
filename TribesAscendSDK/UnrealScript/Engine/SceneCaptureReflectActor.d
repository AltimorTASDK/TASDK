module UnrealScript.Engine.SceneCaptureReflectActor;

import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.SceneCaptureActor;

extern(C++) interface SceneCaptureReflectActor : SceneCaptureActor
{
	public @property final auto ref MaterialInstanceConstant ReflectMaterialInst() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 484); }
}
