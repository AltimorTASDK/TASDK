module UnrealScript.Engine.WindDirectionalSource;

import ScriptClasses;
import UnrealScript.Engine.Info;

extern(C++) interface WindDirectionalSource : Info
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.WindDirectionalSource")); }
}
