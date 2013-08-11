module UnrealScript.Engine.DynamicAnchor;

import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.Controller;

extern(C++) interface DynamicAnchor : NavigationPoint
{
public extern(D):
	@property final auto ref Controller CurrentUser() { return *cast(Controller*)(cast(size_t)cast(void*)this + 692); }
}
