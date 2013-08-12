module UnrealScript.UTGame.UTShockBallLight;

import ScriptClasses;
import UnrealScript.Engine.PointLightComponent;

extern(C++) interface UTShockBallLight : PointLightComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTShockBallLight")); }
}
