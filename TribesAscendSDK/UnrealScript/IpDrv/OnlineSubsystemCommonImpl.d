module UnrealScript.IpDrv.OnlineSubsystemCommonImpl;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;
import UnrealScript.IpDrv.OnlineGameInterfaceImpl;

extern(C++) interface OnlineSubsystemCommonImpl : OnlineSubsystem
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class IpDrv.OnlineSubsystemCommonImpl")()); }
	private static __gshared OnlineSubsystemCommonImpl mDefaultProperties;
	@property final static OnlineSubsystemCommonImpl DefaultProperties() { mixin(MGDPC!(OnlineSubsystemCommonImpl, "OnlineSubsystemCommonImpl IpDrv.Default__OnlineSubsystemCommonImpl")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetPlayerNicknameFromIndex;
			ScriptFunction mGetPlayerUniqueNetIdFromIndex;
			ScriptFunction mIsPlayerInSession;
			ScriptFunction mGetRegisteredPlayers;
		}
		public @property static final
		{
			ScriptFunction GetPlayerNicknameFromIndex() { mixin(MGF!("mGetPlayerNicknameFromIndex", "Function IpDrv.OnlineSubsystemCommonImpl.GetPlayerNicknameFromIndex")()); }
			ScriptFunction GetPlayerUniqueNetIdFromIndex() { mixin(MGF!("mGetPlayerUniqueNetIdFromIndex", "Function IpDrv.OnlineSubsystemCommonImpl.GetPlayerUniqueNetIdFromIndex")()); }
			ScriptFunction IsPlayerInSession() { mixin(MGF!("mIsPlayerInSession", "Function IpDrv.OnlineSubsystemCommonImpl.IsPlayerInSession")()); }
			ScriptFunction GetRegisteredPlayers() { mixin(MGF!("mGetRegisteredPlayers", "Function IpDrv.OnlineSubsystemCommonImpl.GetRegisteredPlayers")()); }
		}
	}
	@property final
	{
		auto ref
		{
			OnlineGameInterfaceImpl GameInterfaceImpl() { mixin(MGPC!("OnlineGameInterfaceImpl", 240)()); }
			int MaxRemoteTalkers() { mixin(MGPC!("int", 232)()); }
			int MaxLocalTalkers() { mixin(MGPC!("int", 228)()); }
			UObject.Pointer VoiceEngine() { mixin(MGPC!("UObject.Pointer", 224)()); }
		}
		bool bIsUsingSpeechRecognition() { mixin(MGBPC!(236, 0x1)()); }
		bool bIsUsingSpeechRecognition(bool val) { mixin(MSBPC!(236, 0x1)()); }
	}
final:
	ScriptString GetPlayerNicknameFromIndex(int UserIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = UserIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPlayerNicknameFromIndex, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	OnlineSubsystem.UniqueNetId GetPlayerUniqueNetIdFromIndex(int UserIndex)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = UserIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPlayerUniqueNetIdFromIndex, params.ptr, cast(void*)0);
		return *cast(OnlineSubsystem.UniqueNetId*)&params[4];
	}
	bool IsPlayerInSession(ScriptName SessionName, OnlineSubsystem.UniqueNetId PlayerID)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(OnlineSubsystem.UniqueNetId*)&params[8] = PlayerID;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsPlayerInSession, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void GetRegisteredPlayers(ScriptName SessionName, ref ScriptArray!(OnlineSubsystem.UniqueNetId) OutRegisteredPlayers)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)&params[8] = OutRegisteredPlayers;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetRegisteredPlayers, params.ptr, cast(void*)0);
		OutRegisteredPlayers = *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)&params[8];
	}
}
