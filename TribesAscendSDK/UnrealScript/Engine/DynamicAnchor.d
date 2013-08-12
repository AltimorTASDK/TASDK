module UnrealScript.Engine.DynamicAnchor;

import ScriptClasses;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.Controller;

extern(C++) interface DynamicAnchor : NavigationPoint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DynamicAnchor")); }
	@property final auto ref Controller CurrentUser() { return *cast(Controller*)(cast(size_t)cast(void*)this + 692); }
}
