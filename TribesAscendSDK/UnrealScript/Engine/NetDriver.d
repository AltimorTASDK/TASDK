module UnrealScript.Engine.NetDriver;

import ScriptClasses;
import UnrealScript.Core.Subsystem;

extern(C++) interface NetDriver : Subsystem
{
	public @property final auto ref float ConnectionTimeout() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref float InitialConnectTimeout() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref float KeepAliveTime() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref float RelevantTimeout() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref float SpawnPrioritySeconds() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref float ServerTravelPause() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref int MaxClientRate() { return *cast(int*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref int MaxInternetClientRate() { return *cast(int*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref int NetServerMaxTickRate() { return *cast(int*)(cast(size_t)cast(void*)this + 128); }
	public @property final bool bClampListenServerTickRate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 132) & 0x1) != 0; }
	public @property final bool bClampListenServerTickRate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 132) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 132) &= ~0x1; } return val; }
	public @property final bool AllowDownloads() { return (*cast(uint*)(cast(size_t)cast(void*)this + 136) & 0x1) != 0; }
	public @property final bool AllowDownloads(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 136) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 136) &= ~0x1; } return val; }
	public @property final bool AllowPeerConnections() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x1) != 0; }
	public @property final bool AllowPeerConnections(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x1; } return val; }
	public @property final bool AllowPeerVoice() { return (*cast(uint*)(cast(size_t)cast(void*)this + 144) & 0x1) != 0; }
	public @property final bool AllowPeerVoice(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 144) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 144) &= ~0x1; } return val; }
	public @property final auto ref int MaxDownloadSize() { return *cast(int*)(cast(size_t)cast(void*)this + 172); }
	public @property final auto ref ScriptString NetConnectionClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 332); }
	public @property final auto ref ScriptArray!(ScriptString) DownloadManagers() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 176); }
}
