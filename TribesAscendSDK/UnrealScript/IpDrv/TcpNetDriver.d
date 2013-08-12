module UnrealScript.IpDrv.TcpNetDriver;

import ScriptClasses;
import UnrealScript.Engine.NetDriver;

extern(C++) interface TcpNetDriver : NetDriver
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class IpDrv.TcpNetDriver")); }
	private static __gshared TcpNetDriver mDefaultProperties;
	@property final static TcpNetDriver DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TcpNetDriver)("TcpNetDriver IpDrv.Default__TcpNetDriver")); }
	@property final
	{
		bool AllowPlayerPortUnreach() { return (*cast(uint*)(cast(size_t)cast(void*)this + 404) & 0x1) != 0; }
		bool AllowPlayerPortUnreach(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 404) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 404) &= ~0x1; } return val; }
		bool LogPortUnreach() { return (*cast(uint*)(cast(size_t)cast(void*)this + 408) & 0x1) != 0; }
		bool LogPortUnreach(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 408) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 408) &= ~0x1; } return val; }
	}
}
