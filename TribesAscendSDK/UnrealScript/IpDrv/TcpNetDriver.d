module UnrealScript.IpDrv.TcpNetDriver;

import UnrealScript.Engine.NetDriver;

extern(C++) interface TcpNetDriver : NetDriver
{
	public @property final bool AllowPlayerPortUnreach() { return (*cast(uint*)(cast(size_t)cast(void*)this + 404) & 0x1) != 0; }
	public @property final bool AllowPlayerPortUnreach(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 404) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 404) &= ~0x1; } return val; }
	public @property final bool LogPortUnreach() { return (*cast(uint*)(cast(size_t)cast(void*)this + 408) & 0x1) != 0; }
	public @property final bool LogPortUnreach(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 408) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 408) &= ~0x1; } return val; }
}
