module UnrealScript.Engine.NetDriver;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Subsystem;

extern(C++) interface NetDriver : Subsystem
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.NetDriver")()); }
	private static __gshared NetDriver mDefaultProperties;
	@property final static NetDriver DefaultProperties() { mixin(MGDPC!(NetDriver, "NetDriver Engine.Default__NetDriver")()); }
	@property final
	{
		auto ref
		{
			float ConnectionTimeout() { mixin(MGPC!("float", 96)()); }
			float InitialConnectTimeout() { mixin(MGPC!("float", 100)()); }
			float KeepAliveTime() { mixin(MGPC!("float", 104)()); }
			float RelevantTimeout() { mixin(MGPC!("float", 108)()); }
			float SpawnPrioritySeconds() { mixin(MGPC!("float", 112)()); }
			float ServerTravelPause() { mixin(MGPC!("float", 116)()); }
			int MaxClientRate() { mixin(MGPC!("int", 120)()); }
			int MaxInternetClientRate() { mixin(MGPC!("int", 124)()); }
			int NetServerMaxTickRate() { mixin(MGPC!("int", 128)()); }
			int MaxDownloadSize() { mixin(MGPC!("int", 172)()); }
			ScriptString NetConnectionClassName() { mixin(MGPC!("ScriptString", 332)()); }
			ScriptArray!(ScriptString) DownloadManagers() { mixin(MGPC!("ScriptArray!(ScriptString)", 176)()); }
		}
		bool bClampListenServerTickRate() { mixin(MGBPC!(132, 0x1)()); }
		bool bClampListenServerTickRate(bool val) { mixin(MSBPC!(132, 0x1)()); }
		bool AllowDownloads() { mixin(MGBPC!(136, 0x1)()); }
		bool AllowDownloads(bool val) { mixin(MSBPC!(136, 0x1)()); }
		bool AllowPeerConnections() { mixin(MGBPC!(140, 0x1)()); }
		bool AllowPeerConnections(bool val) { mixin(MSBPC!(140, 0x1)()); }
		bool AllowPeerVoice() { mixin(MGBPC!(144, 0x1)()); }
		bool AllowPeerVoice(bool val) { mixin(MSBPC!(144, 0x1)()); }
	}
}
