module UnrealScript.Engine.Trigger_Dynamic;

import ScriptClasses;
import UnrealScript.Engine.Trigger;

extern(C++) interface Trigger_Dynamic : Trigger
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.Trigger_Dynamic")); }
}
