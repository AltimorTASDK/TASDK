module UnrealScript.IpDrv.HTTPDownload;

import ScriptClasses;
import UnrealScript.Engine.Download;

extern(C++) interface HTTPDownload : Download
{
	public @property final auto ref ScriptString ProxyServerHost() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2672); }
	public @property final auto ref int ProxyServerPort() { return *cast(int*)(cast(size_t)cast(void*)this + 2684); }
	public @property final auto ref ScriptString RedirectToURL() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 72); }
	public @property final bool UseCompression() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x1) != 0; }
	public @property final bool UseCompression(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x1; } return val; }
	public @property final bool MaxRedirection() { return (*cast(uint*)(cast(size_t)cast(void*)this + 2688) & 0x1) != 0; }
	public @property final bool MaxRedirection(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 2688) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 2688) &= ~0x1; } return val; }
	public @property final auto ref float ConnectionTimeout() { return *cast(float*)(cast(size_t)cast(void*)this + 2692); }
}
