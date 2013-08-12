module UnrealScript.Engine.WindPointSource;

import ScriptClasses;
import UnrealScript.Engine.Info;

extern(C++) interface WindPointSource : Info
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.WindPointSource")); }
}
