module UnrealScript.Engine.DynamicAnchor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.Controller;

extern(C++) interface DynamicAnchor : NavigationPoint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.DynamicAnchor")); }
	private static __gshared DynamicAnchor mDefaultProperties;
	@property final static DynamicAnchor DefaultProperties() { mixin(MGDPC("DynamicAnchor", "DynamicAnchor Engine.Default__DynamicAnchor")); }
	@property final auto ref Controller CurrentUser() { mixin(MGPC("Controller", 692)); }
}
