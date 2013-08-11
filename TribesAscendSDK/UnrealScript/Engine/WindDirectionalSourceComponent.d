module UnrealScript.Engine.WindDirectionalSourceComponent;

import UnrealScript.Engine.ActorComponent;
import UnrealScript.Core.UObject;

extern(C++) interface WindDirectionalSourceComponent : ActorComponent
{
	public @property final auto ref float Speed() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref float Frequency() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref float Phase() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref float Strength() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref UObject.Pointer SceneProxy() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 88); }
}
