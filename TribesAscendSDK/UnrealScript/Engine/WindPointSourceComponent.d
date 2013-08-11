module UnrealScript.Engine.WindPointSourceComponent;

import UnrealScript.Engine.WindDirectionalSourceComponent;

extern(C++) interface WindPointSourceComponent : WindDirectionalSourceComponent
{
	public @property final auto ref float Radius() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
}
