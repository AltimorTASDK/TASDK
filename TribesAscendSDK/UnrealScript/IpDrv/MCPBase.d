module UnrealScript.IpDrv.MCPBase;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface MCPBase : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class IpDrv.MCPBase")); }
	@property final auto ref UObject.Pointer VfTable_FTickableObject() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 60); }
}
