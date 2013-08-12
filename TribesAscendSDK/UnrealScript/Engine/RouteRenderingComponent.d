module UnrealScript.Engine.RouteRenderingComponent;

import ScriptClasses;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface RouteRenderingComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.RouteRenderingComponent")); }
	private static __gshared RouteRenderingComponent mDefaultProperties;
	@property final static RouteRenderingComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(RouteRenderingComponent)("RouteRenderingComponent Engine.Default__RouteRenderingComponent")); }
}
