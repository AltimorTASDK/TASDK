module UnrealScript.Engine.PathRenderingComponent;

import ScriptClasses;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface PathRenderingComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PathRenderingComponent")); }
	private static __gshared PathRenderingComponent mDefaultProperties;
	@property final static PathRenderingComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PathRenderingComponent)("PathRenderingComponent Engine.Default__PathRenderingComponent")); }
}
