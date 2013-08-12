module UnrealScript.Engine.NetConnection;

import ScriptClasses;
import UnrealScript.Engine.Player;
import UnrealScript.Engine.ChildConnection;

extern(C++) interface NetConnection : Player
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.NetConnection")); }
	@property final auto ref ScriptArray!(ChildConnection) Children() { return *cast(ScriptArray!(ChildConnection)*)(cast(size_t)cast(void*)this + 20416); }
}
