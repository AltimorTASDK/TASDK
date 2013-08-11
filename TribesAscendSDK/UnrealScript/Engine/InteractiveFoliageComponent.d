module UnrealScript.Engine.InteractiveFoliageComponent;

import UnrealScript.Core.UObject;
import UnrealScript.Engine.StaticMeshComponent;

extern(C++) interface InteractiveFoliageComponent : StaticMeshComponent
{
public extern(D):
	@property final auto ref UObject.Pointer FoliageSceneProxy() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 608); }
}
