module UnrealScript.Engine.K2Input;

import UnrealScript.Engine.K2Output;
import UnrealScript.Engine.K2Connector;

extern(C++) interface K2Input : K2Connector
{
public extern(D):
	@property final auto ref K2Output FromOutput() { return *cast(K2Output*)(cast(size_t)cast(void*)this + 80); }
}
