module UnrealScript.PlatformCommon.TgNetDriver;

import ScriptClasses;
import UnrealScript.IpDrv.TcpNetDriver;

extern(C++) interface TgNetDriver : TcpNetDriver
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class PlatformCommon.TgNetDriver")); }
}
