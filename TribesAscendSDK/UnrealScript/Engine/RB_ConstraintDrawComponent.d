module UnrealScript.Engine.RB_ConstraintDrawComponent;

import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface RB_ConstraintDrawComponent : PrimitiveComponent
{
	public @property final auto ref MaterialInterface LimitMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 488); }
}
