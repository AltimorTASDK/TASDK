module UnrealScript.Engine.SpeedTreeComponentFactory;

import ScriptClasses;
import UnrealScript.Engine.PrimitiveComponentFactory;

extern(C++) interface SpeedTreeComponentFactory : PrimitiveComponentFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SpeedTreeComponentFactory")); }
}
