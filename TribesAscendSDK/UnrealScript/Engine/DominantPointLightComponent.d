module UnrealScript.Engine.DominantPointLightComponent;

import ScriptClasses;
import UnrealScript.Engine.PointLightComponent;

extern(C++) interface DominantPointLightComponent : PointLightComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DominantPointLightComponent")); }
}
