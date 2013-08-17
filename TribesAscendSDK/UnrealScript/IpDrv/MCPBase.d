module UnrealScript.IpDrv.MCPBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface MCPBase : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class IpDrv.MCPBase")()); }
	private static __gshared MCPBase mDefaultProperties;
	@property final static MCPBase DefaultProperties() { mixin(MGDPC!(MCPBase, "MCPBase IpDrv.Default__MCPBase")()); }
	@property final auto ref UObject.Pointer VfTable_FTickableObject() { mixin(MGPC!(UObject.Pointer, 60)()); }
}
