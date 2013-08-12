module UnrealScript.IpDrv.TcpipConnection;

import ScriptClasses;
import UnrealScript.Engine.NetConnection;

extern(C++) interface TcpipConnection : NetConnection
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class IpDrv.TcpipConnection")); }
	private static __gshared TcpipConnection mDefaultProperties;
	@property final static TcpipConnection DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TcpipConnection)("TcpipConnection IpDrv.Default__TcpipConnection")); }
}
