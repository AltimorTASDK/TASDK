module UnrealScript.Engine.NetConnection;

import ScriptClasses;
import UnrealScript.Engine.Player;
import UnrealScript.Engine.ChildConnection;

extern(C++) interface NetConnection : Player
{
public extern(D):
	@property final auto ref ScriptArray!(ChildConnection) Children() { return *cast(ScriptArray!(ChildConnection)*)(cast(size_t)cast(void*)this + 20416); }
}
