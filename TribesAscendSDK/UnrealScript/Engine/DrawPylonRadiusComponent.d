module UnrealScript.Engine.DrawPylonRadiusComponent;

import ScriptClasses;
import UnrealScript.Engine.DrawSphereComponent;

extern(C++) interface DrawPylonRadiusComponent : DrawSphereComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DrawPylonRadiusComponent")); }
}
