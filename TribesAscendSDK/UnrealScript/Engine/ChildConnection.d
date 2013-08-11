module UnrealScript.Engine.ChildConnection;

import UnrealScript.Engine.NetConnection;

extern(C++) interface ChildConnection : NetConnection
{
	public @property final auto ref NetConnection Parent() { return *cast(NetConnection*)(cast(size_t)cast(void*)this + 20472); }
}
