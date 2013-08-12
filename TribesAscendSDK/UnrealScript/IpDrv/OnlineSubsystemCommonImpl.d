module UnrealScript.IpDrv.OnlineSubsystemCommonImpl;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;
import UnrealScript.IpDrv.OnlineGameInterfaceImpl;

extern(C++) interface OnlineSubsystemCommonImpl : OnlineSubsystem
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class IpDrv.OnlineSubsystemCommonImpl")); }
	private static __gshared OnlineSubsystemCommonImpl mDefaultProperties;
	@property final static OnlineSubsystemCommonImpl DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(OnlineSubsystemCommonImpl)("OnlineSubsystemCommonImpl IpDrv.Default__OnlineSubsystemCommonImpl")); }
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
			ScriptFunction GetPlayerNicknameFromIndex() { return mGetPlayerNicknameFromIndex ? mGetPlayerNicknameFromIndex : (mGetPlayerNicknameFromIndex = ScriptObject.Find!(ScriptFunction)("Function IpDrv.OnlineSubsystemCommonImpl.GetPlayerNicknameFromIndex")); }
			ScriptFunction GetPlayerUniqueNetIdFromIndex() { return mGetPlayerUniqueNetIdFromIndex ? mGetPlayerUniqueNetIdFromIndex : (mGetPlayerUniqueNetIdFromIndex = ScriptObject.Find!(ScriptFunction)("Function IpDrv.OnlineSubsystemCommonImpl.GetPlayerUniqueNetIdFromIndex")); }
			ScriptFunction IsPlayerInSession() { return mIsPlayerInSession ? mIsPlayerInSession : (mIsPlayerInSession = ScriptObject.Find!(ScriptFunction)("Function IpDrv.OnlineSubsystemCommonImpl.IsPlayerInSession")); }
			ScriptFunction GetRegisteredPlayers() { return mGetRegisteredPlayers ? mGetRegisteredPlayers : (mGetRegisteredPlayers = ScriptObject.Find!(ScriptFunction)("Function IpDrv.OnlineSubsystemCommonImpl.GetRegisteredPlayers")); }
		}
	}
	@property final
	{
		auto ref
		{
			OnlineGameInterfaceImpl GameInterfaceImpl() { return *cast(OnlineGameInterfaceImpl*)(cast(size_t)cast(void*)this + 240); }
			int MaxRemoteTalkers() { return *cast(int*)(cast(size_t)cast(void*)this + 232); }
			int MaxLocalTalkers() { return *cast(int*)(cast(size_t)cast(void*)this + 228); }
			UObject.Pointer VoiceEngine() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 224); }
		}
		bool bIsUsingSpeechRecognition() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x1) != 0; }
		bool bIsUsingSpeechRecognition(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x1; } return val; }
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
	void GetRegisteredPlayers(ScriptName SessionName, ScriptArray!(OnlineSubsystem.UniqueNetId)* OutRegisteredPlayers)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SessionName;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)&params[8] = *OutRegisteredPlayers;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetRegisteredPlayers, params.ptr, cast(void*)0);
		*OutRegisteredPlayers = *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)&params[8];
	}
}
