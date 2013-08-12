module UnrealScript.Engine.NetDriver;

import ScriptClasses;
import UnrealScript.Core.Subsystem;

extern(C++) interface NetDriver : Subsystem
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.NetDriver")); }
	@property final
	{
		auto ref
		{
			float ConnectionTimeout() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
			float InitialConnectTimeout() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
			float KeepAliveTime() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
			float RelevantTimeout() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
			float SpawnPrioritySeconds() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
			float ServerTravelPause() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
			int MaxClientRate() { return *cast(int*)(cast(size_t)cast(void*)this + 120); }
			int MaxInternetClientRate() { return *cast(int*)(cast(size_t)cast(void*)this + 124); }
			int NetServerMaxTickRate() { return *cast(int*)(cast(size_t)cast(void*)this + 128); }
			int MaxDownloadSize() { return *cast(int*)(cast(size_t)cast(void*)this + 172); }
			ScriptString NetConnectionClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 332); }
			ScriptArray!(ScriptString) DownloadManagers() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 176); }
		}
		bool bClampListenServerTickRate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 132) & 0x1) != 0; }
		bool bClampListenServerTickRate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 132) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 132) &= ~0x1; } return val; }
		bool AllowDownloads() { return (*cast(uint*)(cast(size_t)cast(void*)this + 136) & 0x1) != 0; }
		bool AllowDownloads(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 136) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 136) &= ~0x1; } return val; }
		bool AllowPeerConnections() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x1) != 0; }
		bool AllowPeerConnections(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x1; } return val; }
		bool AllowPeerVoice() { return (*cast(uint*)(cast(size_t)cast(void*)this + 144) & 0x1) != 0; }
		bool AllowPeerVoice(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 144) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 144) &= ~0x1; } return val; }
	}
}
