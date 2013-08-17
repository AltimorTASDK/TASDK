module UnrealScript.Engine.RouteRenderingComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface RouteRenderingComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.RouteRenderingComponent")); }
	private static __gshared RouteRenderingComponent mDefaultProperties;
	@property final static RouteRenderingComponent DefaultProperties() { mixin(MGDPC("RouteRenderingComponent", "RouteRenderingComponent Engine.Default__RouteRenderingComponent")); }
}
