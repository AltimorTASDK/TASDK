module UnrealScript.Engine.ChildConnection;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NetConnection;

extern(C++) interface ChildConnection : NetConnection
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ChildConnection")()); }
	private static __gshared ChildConnection mDefaultProperties;
	@property final static ChildConnection DefaultProperties() { mixin(MGDPC!(ChildConnection, "ChildConnection Engine.Default__ChildConnection")()); }
	@property final auto ref NetConnection Parent() { mixin(MGPC!("NetConnection", 20472)()); }
}
