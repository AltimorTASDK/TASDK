module UnrealScript.Engine.ControlChannel;

import ScriptClasses;
import UnrealScript.Engine.Channel;

extern(C++) interface ControlChannel : Channel
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ControlChannel")); }
}
