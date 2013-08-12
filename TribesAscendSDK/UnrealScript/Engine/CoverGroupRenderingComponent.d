module UnrealScript.Engine.CoverGroupRenderingComponent;

import ScriptClasses;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface CoverGroupRenderingComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.CoverGroupRenderingComponent")); }
	private static __gshared CoverGroupRenderingComponent mDefaultProperties;
	@property final static CoverGroupRenderingComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(CoverGroupRenderingComponent)("CoverGroupRenderingComponent Engine.Default__CoverGroupRenderingComponent")); }
}
