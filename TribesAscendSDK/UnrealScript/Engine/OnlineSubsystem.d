module UnrealScript.Engine.OnlineSubsystem;

import ScriptClasses;
import UnrealScript.Engine.OnlineGameSettings;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Surface;
import UnrealScript.Engine.IniLocPatcher;
import UnrealScript.Engine.Settings;

extern(C++) interface OnlineSubsystem : UObject
{
public extern(D):
	enum EOnlineNewsType : ubyte
	{
		ONT_Unknown = 0,
		ONT_GameNews = 1,
		ONT_ContentAnnouncements = 2,
		ONT_Misc = 3,
		ONT_MAX = 4,
	}
	enum ENATType : ubyte
	{
		NAT_Unknown = 0,
		NAT_Open = 1,
		NAT_Moderate = 2,
		NAT_Strict = 3,
		NAT_MAX = 4,
	}
	enum EOnlineServerConnectionStatus : ubyte
	{
		OSCS_NotConnected = 0,
		OSCS_Connected = 1,
		OSCS_ConnectionDropped = 2,
		OSCS_NoNetworkConnection = 3,
		OSCS_ServiceUnavailable = 4,
		OSCS_UpdateRequired = 5,
		OSCS_ServersTooBusy = 6,
		OSCS_DuplicateLoginDetected = 7,
		OSCS_InvalidUser = 8,
		OSCS_MAX = 9,
	}
	enum EOnlineEnumerationReadState : ubyte
	{
		OERS_NotStarted = 0,
		OERS_InProgress = 1,
		OERS_Done = 2,
		OERS_Failed = 3,
		OERS_MAX = 4,
	}
	enum EOnlineGameState : ubyte
	{
		OGS_NoSession = 0,
		OGS_Pending = 1,
		OGS_Starting = 2,
		OGS_InProgress = 3,
		OGS_Ending = 4,
		OGS_Ended = 5,
		OGS_MAX = 6,
	}
	enum EOnlineAccountCreateStatus : ubyte
	{
		OACS_CreateSuccessful = 0,
		OACS_UnknownError = 1,
		OACS_InvalidUserName = 2,
		OACS_InvalidPassword = 3,
		OACS_InvalidUniqueUserName = 4,
		OACS_UniqueUserNameInUse = 5,
		OACS_ServiceUnavailable = 6,
		OACS_MAX = 7,
	}
	enum ELanBeaconState : ubyte
	{
		LANB_NotUsingLanBeacon = 0,
		LANB_Hosting = 1,
		LANB_Searching = 2,
		LANB_MAX = 3,
	}
	enum EOnlineContentType : ubyte
	{
		OCT_Downloaded = 0,
		OCT_SaveGame = 1,
		OCT_MAX = 2,
	}
	enum EOnlineFriendState : ubyte
	{
		OFS_Offline = 0,
		OFS_Online = 1,
		OFS_Away = 2,
		OFS_Busy = 3,
		OFS_MAX = 4,
	}
	enum ENetworkNotificationPosition : ubyte
	{
		NNP_TopLeft = 0,
		NNP_TopCenter = 1,
		NNP_TopRight = 2,
		NNP_CenterLeft = 3,
		NNP_Center = 4,
		NNP_CenterRight = 5,
		NNP_BottomLeft = 6,
		NNP_BottomCenter = 7,
		NNP_BottomRight = 8,
		NNP_MAX = 9,
	}
	enum EFeaturePrivilegeLevel : ubyte
	{
		FPL_Disabled = 0,
		FPL_EnabledFriendsOnly = 1,
		FPL_Enabled = 2,
		FPL_MAX = 3,
	}
	enum ELoginStatus : ubyte
	{
		LS_NotLoggedIn = 0,
		LS_UsingLocalProfile = 1,
		LS_LoggedIn = 2,
		LS_MAX = 3,
	}
	struct NamedSession
	{
		private ubyte __buffer__[40];
	public extern(D):
		@property final auto ref
		{
			OnlineGameSettings GameSettings() { return *cast(OnlineGameSettings*)(cast(size_t)&this + 12); }
			ScriptArray!(OnlineSubsystem.OnlineRegistrant) Registrants() { return *cast(ScriptArray!(OnlineSubsystem.OnlineRegistrant)*)(cast(size_t)&this + 16); }
			ScriptArray!(OnlineSubsystem.OnlineArbitrationRegistrant) ArbitrationRegistrants() { return *cast(ScriptArray!(OnlineSubsystem.OnlineArbitrationRegistrant)*)(cast(size_t)&this + 28); }
			ScriptName SessionName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
			UObject.Pointer SessionInfo() { return *cast(UObject.Pointer*)(cast(size_t)&this + 8); }
		}
	}
	struct OnlineRegistrant
	{
		private ubyte __buffer__[8];
	public extern(D):
		@property final auto ref OnlineSubsystem.UniqueNetId PlayerNetId() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)&this + 0); }
	}
	struct OnlineArbitrationRegistrant
	{
		private ubyte __buffer__[20];
	public extern(D):
		@property final auto ref OnlineSubsystem.UniqueNetId PlayerNetId() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)&this + 0); }
		@property final auto ref
		{
			QWord MachineId() { return *cast(QWord*)(cast(size_t)&this + 8); }
			int Trustworthiness() { return *cast(int*)(cast(size_t)&this + 16); }
		}
	}
	struct UniqueNetId
	{
		private ubyte __buffer__[8];
	public extern(D):
		@property final auto ref QWord Uid() { return *cast(QWord*)(cast(size_t)&this + 0); }
	}
	struct NamedInterface
	{
		private ubyte __buffer__[12];
	public extern(D):
		@property final auto ref
		{
			UObject InterfaceObject() { return *cast(UObject*)(cast(size_t)&this + 8); }
			ScriptName InterfaceName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	struct OnlinePartyMember
	{
		private ubyte __buffer__[56];
	public extern(D):
		@property final
		{
			auto ref
			{
				OnlineSubsystem.UniqueNetId UniqueId() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)&this + 0); }
				ScriptString NickName() { return *cast(ScriptString*)(cast(size_t)&this + 8); }
				ubyte LocalUserNum() { return *cast(ubyte*)(cast(size_t)&this + 20); }
				OnlineSubsystem.ENATType NatType() { return *cast(OnlineSubsystem.ENATType*)(cast(size_t)&this + 21); }
				int TitleId() { return *cast(int*)(cast(size_t)&this + 24); }
				QWord SessionId() { return *cast(QWord*)(cast(size_t)&this + 32); }
				int Data1() { return *cast(int*)(cast(size_t)&this + 40); }
				int Data2() { return *cast(int*)(cast(size_t)&this + 44); }
				int Data3() { return *cast(int*)(cast(size_t)&this + 48); }
				int Data4() { return *cast(int*)(cast(size_t)&this + 52); }
			}
			bool bIsLocal() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x1) != 0; }
			bool bIsLocal(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x1; } return val; }
			bool bIsInPartyVoice() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x2) != 0; }
			bool bIsInPartyVoice(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x2; } return val; }
			bool bIsTalking() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x4) != 0; }
			bool bIsTalking(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x4; } return val; }
			bool bIsInGameSession() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x8) != 0; }
			bool bIsInGameSession(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x8; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x8; } return val; }
			bool bIsPlayingThisGame() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x10) != 0; }
			bool bIsPlayingThisGame(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x10; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x10; } return val; }
		}
	}
	struct AchievementDetails
	{
		private ubyte __buffer__[52];
	public extern(D):
		@property final
		{
			auto ref
			{
				int Id() { return *cast(int*)(cast(size_t)&this + 0); }
				ScriptString AchievementName() { return *cast(ScriptString*)(cast(size_t)&this + 4); }
				ScriptString Description() { return *cast(ScriptString*)(cast(size_t)&this + 16); }
				ScriptString HowTo() { return *cast(ScriptString*)(cast(size_t)&this + 28); }
				Surface Image() { return *cast(Surface*)(cast(size_t)&this + 40); }
				int GamerPoints() { return *cast(int*)(cast(size_t)&this + 44); }
			}
			bool bIsSecret() { return (*cast(uint*)(cast(size_t)&this + 48) & 0x1) != 0; }
			bool bIsSecret(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 48) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 48) &= ~0x1; } return val; }
			bool bWasAchievedOnline() { return (*cast(uint*)(cast(size_t)&this + 48) & 0x2) != 0; }
			bool bWasAchievedOnline(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 48) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 48) &= ~0x2; } return val; }
			bool bWasAchievedOffline() { return (*cast(uint*)(cast(size_t)&this + 48) & 0x4) != 0; }
			bool bWasAchievedOffline(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 48) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 48) &= ~0x4; } return val; }
		}
	}
	struct CommunityContentMetadata
	{
		private ubyte __buffer__[16];
	public extern(D):
		@property final auto ref
		{
			int ContentType() { return *cast(int*)(cast(size_t)&this + 0); }
			ScriptArray!(Settings.SettingsProperty) MetadataItems() { return *cast(ScriptArray!(Settings.SettingsProperty)*)(cast(size_t)&this + 4); }
		}
	}
	struct CommunityContentFile
	{
		private ubyte __buffer__[52];
	public extern(D):
		@property final auto ref
		{
			int ContentId() { return *cast(int*)(cast(size_t)&this + 0); }
			int FileId() { return *cast(int*)(cast(size_t)&this + 4); }
			int ContentType() { return *cast(int*)(cast(size_t)&this + 8); }
			int FileSize() { return *cast(int*)(cast(size_t)&this + 12); }
			OnlineSubsystem.UniqueNetId Owner() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)&this + 16); }
			int DownloadCount() { return *cast(int*)(cast(size_t)&this + 24); }
			float AverageRating() { return *cast(float*)(cast(size_t)&this + 28); }
			int RatingCount() { return *cast(int*)(cast(size_t)&this + 32); }
			int LastRatingGiven() { return *cast(int*)(cast(size_t)&this + 36); }
			ScriptString LocalFilePath() { return *cast(ScriptString*)(cast(size_t)&this + 40); }
		}
	}
	struct TitleFile
	{
		private ubyte __buffer__[28];
	public extern(D):
		@property final auto ref
		{
			ScriptString Filename() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
			OnlineSubsystem.EOnlineEnumerationReadState AsyncState() { return *cast(OnlineSubsystem.EOnlineEnumerationReadState*)(cast(size_t)&this + 12); }
			ScriptArray!(ubyte) Data() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)&this + 16); }
		}
	}
	struct NamedInterfaceDef
	{
		private ubyte __buffer__[20];
	public extern(D):
		@property final auto ref
		{
			ScriptName InterfaceName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
			ScriptString InterfaceClassName() { return *cast(ScriptString*)(cast(size_t)&this + 8); }
		}
	}
	struct OnlineFriendMessage
	{
		private ubyte __buffer__[36];
	public extern(D):
		@property final
		{
			auto ref
			{
				OnlineSubsystem.UniqueNetId SendingPlayerId() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)&this + 0); }
				ScriptString SendingPlayerNick() { return *cast(ScriptString*)(cast(size_t)&this + 8); }
				ScriptString Message() { return *cast(ScriptString*)(cast(size_t)&this + 24); }
			}
			bool bIsFriendInvite() { return (*cast(uint*)(cast(size_t)&this + 20) & 0x1) != 0; }
			bool bIsFriendInvite(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 20) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 20) &= ~0x1; } return val; }
			bool bIsGameInvite() { return (*cast(uint*)(cast(size_t)&this + 20) & 0x2) != 0; }
			bool bIsGameInvite(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 20) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 20) &= ~0x2; } return val; }
			bool bWasAccepted() { return (*cast(uint*)(cast(size_t)&this + 20) & 0x4) != 0; }
			bool bWasAccepted(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 20) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 20) &= ~0x4; } return val; }
			bool bWasDenied() { return (*cast(uint*)(cast(size_t)&this + 20) & 0x8) != 0; }
			bool bWasDenied(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 20) |= 0x8; } else { *cast(uint*)(cast(size_t)&this + 20) &= ~0x8; } return val; }
		}
	}
	struct RemoteTalker
	{
		private ubyte __buffer__[16];
	public extern(D):
		@property final
		{
			auto ref
			{
				OnlineSubsystem.UniqueNetId TalkerId() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)&this + 0); }
				float LastNotificationTime() { return *cast(float*)(cast(size_t)&this + 8); }
			}
			bool bWasTalking() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x1) != 0; }
			bool bWasTalking(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x1; } return val; }
			bool bIsTalking() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x2) != 0; }
			bool bIsTalking(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x2; } return val; }
			bool bIsRegistered() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x4) != 0; }
			bool bIsRegistered(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x4; } return val; }
		}
	}
	struct LocalTalker
	{
		private ubyte __buffer__[4];
	public extern(D):
		@property final
		{
			bool bHasVoice() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
			bool bHasVoice(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
			bool bHasNetworkedVoice() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2) != 0; }
			bool bHasNetworkedVoice(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2; } return val; }
			bool bIsRecognizingSpeech() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x4) != 0; }
			bool bIsRecognizingSpeech(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x4; } return val; }
			bool bWasTalking() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x8) != 0; }
			bool bWasTalking(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x8; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x8; } return val; }
			bool bIsTalking() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x10) != 0; }
			bool bIsTalking(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x10; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x10; } return val; }
			bool bIsRegistered() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x20) != 0; }
			bool bIsRegistered(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x20; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x20; } return val; }
		}
	}
	struct OnlinePlayerScore
	{
		private ubyte __buffer__[16];
	public extern(D):
		@property final auto ref
		{
			OnlineSubsystem.UniqueNetId PlayerID() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)&this + 0); }
			int TeamID() { return *cast(int*)(cast(size_t)&this + 8); }
			int Score() { return *cast(int*)(cast(size_t)&this + 12); }
		}
	}
	struct SpeechRecognizedWord
	{
		private ubyte __buffer__[20];
	public extern(D):
		@property final auto ref
		{
			int WordId() { return *cast(int*)(cast(size_t)&this + 0); }
			ScriptString WordText() { return *cast(ScriptString*)(cast(size_t)&this + 4); }
			float Confidence() { return *cast(float*)(cast(size_t)&this + 16); }
		}
	}
	struct OnlineContent
	{
		private ubyte __buffer__[68];
	public extern(D):
		@property final auto ref
		{
			OnlineSubsystem.EOnlineContentType ContentType() { return *cast(OnlineSubsystem.EOnlineContentType*)(cast(size_t)&this + 0); }
			ubyte UserIndex() { return *cast(ubyte*)(cast(size_t)&this + 1); }
			int DeviceID() { return *cast(int*)(cast(size_t)&this + 4); }
			ScriptString FriendlyName() { return *cast(ScriptString*)(cast(size_t)&this + 8); }
			ScriptString Filename() { return *cast(ScriptString*)(cast(size_t)&this + 20); }
			ScriptString ContentPath() { return *cast(ScriptString*)(cast(size_t)&this + 32); }
			ScriptArray!(ScriptString) ContentPackages() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)&this + 44); }
			ScriptArray!(ScriptString) ContentFiles() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)&this + 56); }
		}
	}
	struct OnlineFriend
	{
		private ubyte __buffer__[48];
	public extern(D):
		@property final
		{
			auto ref
			{
				OnlineSubsystem.UniqueNetId UniqueId() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)&this + 0); }
				QWord SessionId() { return *cast(QWord*)(cast(size_t)&this + 8); }
				ScriptString NickName() { return *cast(ScriptString*)(cast(size_t)&this + 16); }
				ScriptString PresenceInfo() { return *cast(ScriptString*)(cast(size_t)&this + 28); }
				OnlineSubsystem.EOnlineFriendState FriendState() { return *cast(OnlineSubsystem.EOnlineFriendState*)(cast(size_t)&this + 40); }
			}
			bool bIsOnline() { return (*cast(uint*)(cast(size_t)&this + 44) & 0x1) != 0; }
			bool bIsOnline(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 44) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 44) &= ~0x1; } return val; }
			bool bIsPlaying() { return (*cast(uint*)(cast(size_t)&this + 44) & 0x2) != 0; }
			bool bIsPlaying(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 44) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 44) &= ~0x2; } return val; }
			bool bIsPlayingThisGame() { return (*cast(uint*)(cast(size_t)&this + 44) & 0x4) != 0; }
			bool bIsPlayingThisGame(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 44) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 44) &= ~0x4; } return val; }
			bool bIsJoinable() { return (*cast(uint*)(cast(size_t)&this + 44) & 0x8) != 0; }
			bool bIsJoinable(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 44) |= 0x8; } else { *cast(uint*)(cast(size_t)&this + 44) &= ~0x8; } return val; }
			bool bHasVoiceSupport() { return (*cast(uint*)(cast(size_t)&this + 44) & 0x10) != 0; }
			bool bHasVoiceSupport(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 44) |= 0x10; } else { *cast(uint*)(cast(size_t)&this + 44) &= ~0x10; } return val; }
			bool bHaveInvited() { return (*cast(uint*)(cast(size_t)&this + 44) & 0x20) != 0; }
			bool bHaveInvited(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 44) |= 0x20; } else { *cast(uint*)(cast(size_t)&this + 44) &= ~0x20; } return val; }
			bool bHasInvitedYou() { return (*cast(uint*)(cast(size_t)&this + 44) & 0x40) != 0; }
			bool bHasInvitedYou(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 44) |= 0x40; } else { *cast(uint*)(cast(size_t)&this + 44) &= ~0x40; } return val; }
		}
	}
	struct FriendsQuery
	{
		private ubyte __buffer__[12];
	public extern(D):
		@property final
		{
			@property final auto ref OnlineSubsystem.UniqueNetId UniqueId() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)&this + 0); }
			bool bIsFriend() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x1) != 0; }
			bool bIsFriend(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(OnlineSubsystem.NamedSession) Sessions() { return *cast(ScriptArray!(OnlineSubsystem.NamedSession)*)(cast(size_t)cast(void*)this + 184); }
			UObject.Pointer VfTable_FTickableObject() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 60); }
			ScriptArray!(OnlineSubsystem.NamedInterface) NamedInterfaces() { return *cast(ScriptArray!(OnlineSubsystem.NamedInterface)*)(cast(size_t)cast(void*)this + 160); }
			ScriptString IniLocPatcherClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 204); }
			IniLocPatcher Patcher() { return *cast(IniLocPatcher*)(cast(size_t)cast(void*)this + 216); }
			ScriptArray!(OnlineSubsystem.NamedInterfaceDef) NamedInterfaceDefs() { return *cast(ScriptArray!(OnlineSubsystem.NamedInterfaceDef)*)(cast(size_t)cast(void*)this + 172); }
			int BuildIdOverride() { return *cast(int*)(cast(size_t)cast(void*)this + 200); }
			float AsyncMinCompletionTime() { return *cast(float*)(cast(size_t)cast(void*)this + 220); }
		}
		bool bUseBuildIdOverride() { return (*cast(uint*)(cast(size_t)cast(void*)this + 196) & 0x1) != 0; }
		bool bUseBuildIdOverride(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 196) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 196) &= ~0x1; } return val; }
	}
final:
	void SetDebugSpewLevel(int DebugSpewLevel)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = DebugSpewLevel;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5436], params.ptr, cast(void*)0);
	}
	void DumpVoiceRegistration()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5437], cast(void*)0, cast(void*)0);
	}
	void DumpSessionState()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5439], cast(void*)0, cast(void*)0);
	}
	void DumpGameSettings(OnlineGameSettings GameSettings)
	{
		ubyte params[4];
		params[] = 0;
		*cast(OnlineGameSettings*)params.ptr = GameSettings;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5440], params.ptr, cast(void*)0);
	}
	int GetNumSupportedLogins()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5456], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	int GetBuildUniqueId()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5458], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	bool StringToUniqueNetId(ScriptString UniqueNetIdString, OnlineSubsystem.UniqueNetId* out_UniqueId)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = UniqueNetIdString;
		*cast(OnlineSubsystem.UniqueNetId*)&params[12] = *out_UniqueId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5460], params.ptr, cast(void*)0);
		*out_UniqueId = *cast(OnlineSubsystem.UniqueNetId*)&params[12];
		return *cast(bool*)&params[20];
	}
	ScriptString UniqueNetIdToString(OnlineSubsystem.UniqueNetId* IdToConvert)
	{
		ubyte params[20];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = *IdToConvert;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5462], params.ptr, cast(void*)0);
		*IdToConvert = *cast(OnlineSubsystem.UniqueNetId*)params.ptr;
		return *cast(ScriptString*)&params[8];
	}
	UObject GetNamedInterface(ScriptName InterfaceName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InterfaceName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5466], params.ptr, cast(void*)0);
		return *cast(UObject*)&params[8];
	}
	void SetNamedInterface(ScriptName InterfaceName, UObject NewInterface)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InterfaceName;
		*cast(UObject*)&params[8] = NewInterface;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5469], params.ptr, cast(void*)0);
	}
	bool SetGameChatInterface(UObject NewInterface)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UObject*)params.ptr = NewInterface;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5476], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool SetTitleFileInterface(UObject NewInterface)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UObject*)params.ptr = NewInterface;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5481], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool SetPartyChatInterface(UObject NewInterface)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UObject*)params.ptr = NewInterface;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5486], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool SetNewsInterface(UObject NewInterface)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UObject*)params.ptr = NewInterface;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5491], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool SetStatsInterface(UObject NewInterface)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UObject*)params.ptr = NewInterface;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5496], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool SetVoiceInterface(UObject NewInterface)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UObject*)params.ptr = NewInterface;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5501], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool SetContentInterface(UObject NewInterface)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UObject*)params.ptr = NewInterface;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5506], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool SetGameInterface(UObject NewInterface)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UObject*)params.ptr = NewInterface;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5511], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool SetSystemInterface(UObject NewInterface)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UObject*)params.ptr = NewInterface;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5516], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool SetPlayerInterfaceEx(UObject NewInterface)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UObject*)params.ptr = NewInterface;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5521], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool SetPlayerInterface(UObject NewInterface)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UObject*)params.ptr = NewInterface;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5526], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool SetAccountInterface(UObject NewInterface)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UObject*)params.ptr = NewInterface;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5531], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void Exit()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5536], cast(void*)0, cast(void*)0);
	}
	bool PostInit()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5541], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool Init()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5542], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
