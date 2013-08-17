module UnrealScript.IpDrv.TcpipConnection;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NetConnection;

extern(C++) interface TcpipConnection : NetConnection
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class IpDrv.TcpipConnection")()); }
	private static __gshared TcpipConnection mDefaultProperties;
	@property final static TcpipConnection DefaultProperties() { mixin(MGDPC!(TcpipConnection, "TcpipConnection IpDrv.Default__TcpipConnection")()); }
}
