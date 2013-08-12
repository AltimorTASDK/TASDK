module UnrealScript.IpDrv.MCPBase;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface MCPBase : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class IpDrv.MCPBase")); }
	private static __gshared MCPBase mDefaultProperties;
	@property final static MCPBase DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MCPBase)("MCPBase IpDrv.Default__MCPBase")); }
	@property final auto ref UObject.Pointer VfTable_FTickableObject() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 60); }
}
