module UnrealScript.Engine.DemoRecConnection;

import ScriptClasses;
import UnrealScript.Engine.NetConnection;

extern(C++) interface DemoRecConnection : NetConnection
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DemoRecConnection")); }
}
