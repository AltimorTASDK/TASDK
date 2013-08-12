module UnrealScript.Engine.PointLightMovable;

import ScriptClasses;
import UnrealScript.Engine.PointLight;

extern(C++) interface PointLightMovable : PointLight
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PointLightMovable")); }
	private static __gshared PointLightMovable mDefaultProperties;
	@property final static PointLightMovable DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PointLightMovable)("PointLightMovable Engine.Default__PointLightMovable")); }
}
