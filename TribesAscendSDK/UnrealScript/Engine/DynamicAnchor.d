module UnrealScript.Engine.DynamicAnchor;

import ScriptClasses;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.Controller;

extern(C++) interface DynamicAnchor : NavigationPoint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DynamicAnchor")); }
	private static __gshared DynamicAnchor mDefaultProperties;
	@property final static DynamicAnchor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(DynamicAnchor)("DynamicAnchor Engine.Default__DynamicAnchor")); }
	@property final auto ref Controller CurrentUser() { return *cast(Controller*)(cast(size_t)cast(void*)this + 692); }
}
