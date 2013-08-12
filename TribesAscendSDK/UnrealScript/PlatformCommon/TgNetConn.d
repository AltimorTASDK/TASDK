module UnrealScript.PlatformCommon.TgNetConn;

import ScriptClasses;
import UnrealScript.IpDrv.TcpipConnection;

extern(C++) interface TgNetConn : TcpipConnection
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class PlatformCommon.TgNetConn")); }
}
