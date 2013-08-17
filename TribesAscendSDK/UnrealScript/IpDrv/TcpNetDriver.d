module UnrealScript.IpDrv.TcpNetDriver;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NetDriver;

extern(C++) interface TcpNetDriver : NetDriver
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class IpDrv.TcpNetDriver")()); }
	private static __gshared TcpNetDriver mDefaultProperties;
	@property final static TcpNetDriver DefaultProperties() { mixin(MGDPC!(TcpNetDriver, "TcpNetDriver IpDrv.Default__TcpNetDriver")()); }
	@property final
	{
		bool AllowPlayerPortUnreach() { mixin(MGBPC!(404, 0x1)()); }
		bool AllowPlayerPortUnreach(bool val) { mixin(MSBPC!(404, 0x1)()); }
		bool LogPortUnreach() { mixin(MGBPC!(408, 0x1)()); }
		bool LogPortUnreach(bool val) { mixin(MSBPC!(408, 0x1)()); }
	}
}
