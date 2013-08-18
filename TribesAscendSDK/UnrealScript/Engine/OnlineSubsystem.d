module UnrealScript.Engine.OnlineSubsystem;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.OnlineGameSettings;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Surface;
import UnrealScript.Engine.IniLocPatcher;
import UnrealScript.Engine.Settings;

extern(C++) interface OnlineSubsystem : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.OnlineSubsystem")); }
	private static __gshared OnlineSubsystem mDefaultProperties;
	@property final static OnlineSubsystem DefaultProperties() { mixin(MGDPC("OnlineSubsystem", "OnlineSubsystem Engine.Default__OnlineSubsystem")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetDebugSpewLevel;
			ScriptFunction mDumpVoiceRegistration;
			ScriptFunction mDumpSessionState;
			ScriptFunction mDumpGameSettings;
			ScriptFunction mGetNumSupportedLogins;
			ScriptFunction mGetBuildUniqueId;
			ScriptFunction mStringToUniqueNetId;
			ScriptFunction mUniqueNetIdToString;
			ScriptFunction mGetNamedInterface;
			ScriptFunction mSetNamedInterface;
			ScriptFunction mSetGameChatInterface;
			ScriptFunction mSetTitleFileInterface;
			ScriptFunction mSetPartyChatInterface;
			ScriptFunction mSetNewsInterface;
			ScriptFunction mSetStatsInterface;
			ScriptFunction mSetVoiceInterface;
			ScriptFunction mSetContentInterface;
			ScriptFunction mSetGameInterface;
			ScriptFunction mSetSystemInterface;
			ScriptFunction mSetPlayerInterfaceEx;
			ScriptFunction mSetPlayerInterface;
			ScriptFunction mSetAccountInterface;
			ScriptFunction mExit;
			ScriptFunction mPostInit;
			ScriptFunction mInit;
		}
		public @property static final
		{
			ScriptFunction SetDebugSpewLevel() { mixin(MGF("mSetDebugSpewLevel", "Function Engine.OnlineSubsystem.SetDebugSpewLevel")); }
			ScriptFunction DumpVoiceRegistration() { mixin(MGF("mDumpVoiceRegistration", "Function Engine.OnlineSubsystem.DumpVoiceRegistration")); }
			ScriptFunction DumpSessionState() { mixin(MGF("mDumpSessionState", "Function Engine.OnlineSubsystem.DumpSessionState")); }
			ScriptFunction DumpGameSettings() { mixin(MGF("mDumpGameSettings", "Function Engine.OnlineSubsystem.DumpGameSettings")); }
			ScriptFunction GetNumSupportedLogins() { mixin(MGF("mGetNumSupportedLogins", "Function Engine.OnlineSubsystem.GetNumSupportedLogins")); }
			ScriptFunction GetBuildUniqueId() { mixin(MGF("mGetBuildUniqueId", "Function Engine.OnlineSubsystem.GetBuildUniqueId")); }
			ScriptFunction StringToUniqueNetId() { mixin(MGF("mStringToUniqueNetId", "Function Engine.OnlineSubsystem.StringToUniqueNetId")); }
			ScriptFunction UniqueNetIdToString() { mixin(MGF("mUniqueNetIdToString", "Function Engine.OnlineSubsystem.UniqueNetIdToString")); }
			ScriptFunction GetNamedInterface() { mixin(MGF("mGetNamedInterface", "Function Engine.OnlineSubsystem.GetNamedInterface")); }
			ScriptFunction SetNamedInterface() { mixin(MGF("mSetNamedInterface", "Function Engine.OnlineSubsystem.SetNamedInterface")); }
			ScriptFunction SetGameChatInterface() { mixin(MGF("mSetGameChatInterface", "Function Engine.OnlineSubsystem.SetGameChatInterface")); }
			ScriptFunction SetTitleFileInterface() { mixin(MGF("mSetTitleFileInterface", "Function Engine.OnlineSubsystem.SetTitleFileInterface")); }
			ScriptFunction SetPartyChatInterface() { mixin(MGF("mSetPartyChatInterface", "Function Engine.OnlineSubsystem.SetPartyChatInterface")); }
			ScriptFunction SetNewsInterface() { mixin(MGF("mSetNewsInterface", "Function Engine.OnlineSubsystem.SetNewsInterface")); }
			ScriptFunction SetStatsInterface() { mixin(MGF("mSetStatsInterface", "Function Engine.OnlineSubsystem.SetStatsInterface")); }
			ScriptFunction SetVoiceInterface() { mixin(MGF("mSetVoiceInterface", "Function Engine.OnlineSubsystem.SetVoiceInterface")); }
			ScriptFunction SetContentInterface() { mixin(MGF("mSetContentInterface", "Function Engine.OnlineSubsystem.SetContentInterface")); }
			ScriptFunction SetGameInterface() { mixin(MGF("mSetGameInterface", "Function Engine.OnlineSubsystem.SetGameInterface")); }
			ScriptFunction SetSystemInterface() { mixin(MGF("mSetSystemInterface", "Function Engine.OnlineSubsystem.SetSystemInterface")); }
			ScriptFunction SetPlayerInterfaceEx() { mixin(MGF("mSetPlayerInterfaceEx", "Function Engine.OnlineSubsystem.SetPlayerInterfaceEx")); }
			ScriptFunction SetPlayerInterface() { mixin(MGF("mSetPlayerInterface", "Function Engine.OnlineSubsystem.SetPlayerInterface")); }
			ScriptFunction SetAccountInterface() { mixin(MGF("mSetAccountInterface", "Function Engine.OnlineSubsystem.SetAccountInterface")); }
			ScriptFunction Exit() { mixin(MGF("mExit", "Function Engine.OnlineSubsystem.Exit")); }
			ScriptFunction PostInit() { mixin(MGF("mPostInit", "Function Engine.OnlineSubsystem.PostInit")); }
			ScriptFunction Init() { mixin(MGF("mInit", "Function Engine.OnlineSubsystem.Init")); }
		}
	}
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
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.OnlineSubsystem.NamedSession")); }
		@property final auto ref
		{
			OnlineGameSettings GameSettings() { mixin(MGPS("OnlineGameSettings", 12)); }
			ScriptArray!(OnlineSubsystem.OnlineRegistrant) Registrants() { mixin(MGPS("ScriptArray!(OnlineSubsystem.OnlineRegistrant)", 16)); }
			ScriptArray!(OnlineSubsystem.OnlineArbitrationRegistrant) ArbitrationRegistrants() { mixin(MGPS("ScriptArray!(OnlineSubsystem.OnlineArbitrationRegistrant)", 28)); }
			ScriptName SessionName() { mixin(MGPS("ScriptName", 0)); }
			Pointer SessionInfo() { mixin(MGPS("Pointer", 8)); }
		}
	}
	struct OnlineRegistrant
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.OnlineSubsystem.OnlineRegistrant")); }
		@property final auto ref OnlineSubsystem.UniqueNetId PlayerNetId() { mixin(MGPS("OnlineSubsystem.UniqueNetId", 0)); }
	}
	struct OnlineArbitrationRegistrant
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.OnlineSubsystem.OnlineArbitrationRegistrant")); }
		@property final auto ref OnlineSubsystem.UniqueNetId PlayerNetId() { mixin(MGPS("OnlineSubsystem.UniqueNetId", 0)); }
		@property final auto ref
		{
			QWord MachineId() { mixin(MGPS("QWord", 8)); }
			int Trustworthiness() { mixin(MGPS("int", 16)); }
		}
	}
	struct UniqueNetId
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.OnlineSubsystem.UniqueNetId")); }
		@property final auto ref QWord Uid() { mixin(MGPS("QWord", 0)); }
	}
	struct NamedInterface
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.OnlineSubsystem.NamedInterface")); }
		@property final auto ref
		{
			UObject InterfaceObject() { mixin(MGPS("UObject", 8)); }
			ScriptName InterfaceName() { mixin(MGPS("ScriptName", 0)); }
		}
	}
	struct OnlinePartyMember
	{
		private ubyte __buffer__[56];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.OnlineSubsystem.OnlinePartyMember")); }
		@property final
		{
			auto ref
			{
				OnlineSubsystem.UniqueNetId UniqueId() { mixin(MGPS("OnlineSubsystem.UniqueNetId", 0)); }
				ScriptString NickName() { mixin(MGPS("ScriptString", 8)); }
				ubyte LocalUserNum() { mixin(MGPS("ubyte", 20)); }
				OnlineSubsystem.ENATType NatType() { mixin(MGPS("OnlineSubsystem.ENATType", 21)); }
				int TitleId() { mixin(MGPS("int", 24)); }
				QWord SessionId() { mixin(MGPS("QWord", 32)); }
				int Data1() { mixin(MGPS("int", 40)); }
				int Data2() { mixin(MGPS("int", 44)); }
				int Data3() { mixin(MGPS("int", 48)); }
				int Data4() { mixin(MGPS("int", 52)); }
			}
			bool bIsLocal() { mixin(MGBPS(28, 0x1)); }
			bool bIsLocal(bool val) { mixin(MSBPS(28, 0x1)); }
			bool bIsInPartyVoice() { mixin(MGBPS(28, 0x2)); }
			bool bIsInPartyVoice(bool val) { mixin(MSBPS(28, 0x2)); }
			bool bIsTalking() { mixin(MGBPS(28, 0x4)); }
			bool bIsTalking(bool val) { mixin(MSBPS(28, 0x4)); }
			bool bIsInGameSession() { mixin(MGBPS(28, 0x8)); }
			bool bIsInGameSession(bool val) { mixin(MSBPS(28, 0x8)); }
			bool bIsPlayingThisGame() { mixin(MGBPS(28, 0x10)); }
			bool bIsPlayingThisGame(bool val) { mixin(MSBPS(28, 0x10)); }
		}
	}
	struct AchievementDetails
	{
		private ubyte __buffer__[52];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.OnlineSubsystem.AchievementDetails")); }
		@property final
		{
			auto ref
			{
				int Id() { mixin(MGPS("int", 0)); }
				ScriptString AchievementName() { mixin(MGPS("ScriptString", 4)); }
				ScriptString Description() { mixin(MGPS("ScriptString", 16)); }
				ScriptString HowTo() { mixin(MGPS("ScriptString", 28)); }
				Surface Image() { mixin(MGPS("Surface", 40)); }
				int GamerPoints() { mixin(MGPS("int", 44)); }
			}
			bool bIsSecret() { mixin(MGBPS(48, 0x1)); }
			bool bIsSecret(bool val) { mixin(MSBPS(48, 0x1)); }
			bool bWasAchievedOnline() { mixin(MGBPS(48, 0x2)); }
			bool bWasAchievedOnline(bool val) { mixin(MSBPS(48, 0x2)); }
			bool bWasAchievedOffline() { mixin(MGBPS(48, 0x4)); }
			bool bWasAchievedOffline(bool val) { mixin(MSBPS(48, 0x4)); }
		}
	}
	struct CommunityContentMetadata
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.OnlineSubsystem.CommunityContentMetadata")); }
		@property final auto ref
		{
			int ContentType() { mixin(MGPS("int", 0)); }
			ScriptArray!(Settings.SettingsProperty) MetadataItems() { mixin(MGPS("ScriptArray!(Settings.SettingsProperty)", 4)); }
		}
	}
	struct CommunityContentFile
	{
		private ubyte __buffer__[52];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.OnlineSubsystem.CommunityContentFile")); }
		@property final auto ref
		{
			int ContentId() { mixin(MGPS("int", 0)); }
			int FileId() { mixin(MGPS("int", 4)); }
			int ContentType() { mixin(MGPS("int", 8)); }
			int FileSize() { mixin(MGPS("int", 12)); }
			OnlineSubsystem.UniqueNetId Owner() { mixin(MGPS("OnlineSubsystem.UniqueNetId", 16)); }
			int DownloadCount() { mixin(MGPS("int", 24)); }
			float AverageRating() { mixin(MGPS("float", 28)); }
			int RatingCount() { mixin(MGPS("int", 32)); }
			int LastRatingGiven() { mixin(MGPS("int", 36)); }
			ScriptString LocalFilePath() { mixin(MGPS("ScriptString", 40)); }
		}
	}
	struct TitleFile
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.OnlineSubsystem.TitleFile")); }
		@property final auto ref
		{
			ScriptString Filename() { mixin(MGPS("ScriptString", 0)); }
			OnlineSubsystem.EOnlineEnumerationReadState AsyncState() { mixin(MGPS("OnlineSubsystem.EOnlineEnumerationReadState", 12)); }
			ScriptArray!(ubyte) Data() { mixin(MGPS("ScriptArray!(ubyte)", 16)); }
		}
	}
	struct NamedInterfaceDef
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.OnlineSubsystem.NamedInterfaceDef")); }
		@property final auto ref
		{
			ScriptName InterfaceName() { mixin(MGPS("ScriptName", 0)); }
			ScriptString InterfaceClassName() { mixin(MGPS("ScriptString", 8)); }
		}
	}
	struct OnlineFriendMessage
	{
		private ubyte __buffer__[36];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.OnlineSubsystem.OnlineFriendMessage")); }
		@property final
		{
			auto ref
			{
				OnlineSubsystem.UniqueNetId SendingPlayerId() { mixin(MGPS("OnlineSubsystem.UniqueNetId", 0)); }
				ScriptString SendingPlayerNick() { mixin(MGPS("ScriptString", 8)); }
				ScriptString Message() { mixin(MGPS("ScriptString", 24)); }
			}
			bool bIsFriendInvite() { mixin(MGBPS(20, 0x1)); }
			bool bIsFriendInvite(bool val) { mixin(MSBPS(20, 0x1)); }
			bool bIsGameInvite() { mixin(MGBPS(20, 0x2)); }
			bool bIsGameInvite(bool val) { mixin(MSBPS(20, 0x2)); }
			bool bWasAccepted() { mixin(MGBPS(20, 0x4)); }
			bool bWasAccepted(bool val) { mixin(MSBPS(20, 0x4)); }
			bool bWasDenied() { mixin(MGBPS(20, 0x8)); }
			bool bWasDenied(bool val) { mixin(MSBPS(20, 0x8)); }
		}
	}
	struct RemoteTalker
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.OnlineSubsystem.RemoteTalker")); }
		@property final
		{
			auto ref
			{
				OnlineSubsystem.UniqueNetId TalkerId() { mixin(MGPS("OnlineSubsystem.UniqueNetId", 0)); }
				float LastNotificationTime() { mixin(MGPS("float", 8)); }
			}
			bool bWasTalking() { mixin(MGBPS(12, 0x1)); }
			bool bWasTalking(bool val) { mixin(MSBPS(12, 0x1)); }
			bool bIsTalking() { mixin(MGBPS(12, 0x2)); }
			bool bIsTalking(bool val) { mixin(MSBPS(12, 0x2)); }
			bool bIsRegistered() { mixin(MGBPS(12, 0x4)); }
			bool bIsRegistered(bool val) { mixin(MSBPS(12, 0x4)); }
		}
	}
	struct LocalTalker
	{
		private ubyte __buffer__[4];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.OnlineSubsystem.LocalTalker")); }
		@property final
		{
			bool bHasVoice() { mixin(MGBPS(0, 0x1)); }
			bool bHasVoice(bool val) { mixin(MSBPS(0, 0x1)); }
			bool bHasNetworkedVoice() { mixin(MGBPS(0, 0x2)); }
			bool bHasNetworkedVoice(bool val) { mixin(MSBPS(0, 0x2)); }
			bool bIsRecognizingSpeech() { mixin(MGBPS(0, 0x4)); }
			bool bIsRecognizingSpeech(bool val) { mixin(MSBPS(0, 0x4)); }
			bool bWasTalking() { mixin(MGBPS(0, 0x8)); }
			bool bWasTalking(bool val) { mixin(MSBPS(0, 0x8)); }
			bool bIsTalking() { mixin(MGBPS(0, 0x10)); }
			bool bIsTalking(bool val) { mixin(MSBPS(0, 0x10)); }
			bool bIsRegistered() { mixin(MGBPS(0, 0x20)); }
			bool bIsRegistered(bool val) { mixin(MSBPS(0, 0x20)); }
		}
	}
	struct OnlinePlayerScore
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.OnlineSubsystem.OnlinePlayerScore")); }
		@property final auto ref
		{
			OnlineSubsystem.UniqueNetId PlayerID() { mixin(MGPS("OnlineSubsystem.UniqueNetId", 0)); }
			int TeamID() { mixin(MGPS("int", 8)); }
			int Score() { mixin(MGPS("int", 12)); }
		}
	}
	struct SpeechRecognizedWord
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.OnlineSubsystem.SpeechRecognizedWord")); }
		@property final auto ref
		{
			int WordId() { mixin(MGPS("int", 0)); }
			ScriptString WordText() { mixin(MGPS("ScriptString", 4)); }
			float Confidence() { mixin(MGPS("float", 16)); }
		}
	}
	struct OnlineContent
	{
		private ubyte __buffer__[68];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.OnlineSubsystem.OnlineContent")); }
		@property final auto ref
		{
			OnlineSubsystem.EOnlineContentType ContentType() { mixin(MGPS("OnlineSubsystem.EOnlineContentType", 0)); }
			ubyte UserIndex() { mixin(MGPS("ubyte", 1)); }
			int DeviceID() { mixin(MGPS("int", 4)); }
			ScriptString FriendlyName() { mixin(MGPS("ScriptString", 8)); }
			ScriptString Filename() { mixin(MGPS("ScriptString", 20)); }
			ScriptString ContentPath() { mixin(MGPS("ScriptString", 32)); }
			ScriptArray!(ScriptString) ContentPackages() { mixin(MGPS("ScriptArray!(ScriptString)", 44)); }
			ScriptArray!(ScriptString) ContentFiles() { mixin(MGPS("ScriptArray!(ScriptString)", 56)); }
		}
	}
	struct OnlineFriend
	{
		private ubyte __buffer__[48];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.OnlineSubsystem.OnlineFriend")); }
		@property final
		{
			auto ref
			{
				OnlineSubsystem.UniqueNetId UniqueId() { mixin(MGPS("OnlineSubsystem.UniqueNetId", 0)); }
				QWord SessionId() { mixin(MGPS("QWord", 8)); }
				ScriptString NickName() { mixin(MGPS("ScriptString", 16)); }
				ScriptString PresenceInfo() { mixin(MGPS("ScriptString", 28)); }
				OnlineSubsystem.EOnlineFriendState FriendState() { mixin(MGPS("OnlineSubsystem.EOnlineFriendState", 40)); }
			}
			bool bIsOnline() { mixin(MGBPS(44, 0x1)); }
			bool bIsOnline(bool val) { mixin(MSBPS(44, 0x1)); }
			bool bIsPlaying() { mixin(MGBPS(44, 0x2)); }
			bool bIsPlaying(bool val) { mixin(MSBPS(44, 0x2)); }
			bool bIsPlayingThisGame() { mixin(MGBPS(44, 0x4)); }
			bool bIsPlayingThisGame(bool val) { mixin(MSBPS(44, 0x4)); }
			bool bIsJoinable() { mixin(MGBPS(44, 0x8)); }
			bool bIsJoinable(bool val) { mixin(MSBPS(44, 0x8)); }
			bool bHasVoiceSupport() { mixin(MGBPS(44, 0x10)); }
			bool bHasVoiceSupport(bool val) { mixin(MSBPS(44, 0x10)); }
			bool bHaveInvited() { mixin(MGBPS(44, 0x20)); }
			bool bHaveInvited(bool val) { mixin(MSBPS(44, 0x20)); }
			bool bHasInvitedYou() { mixin(MGBPS(44, 0x40)); }
			bool bHasInvitedYou(bool val) { mixin(MSBPS(44, 0x40)); }
		}
	}
	struct FriendsQuery
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.OnlineSubsystem.FriendsQuery")); }
		@property final
		{
			@property final auto ref OnlineSubsystem.UniqueNetId UniqueId() { mixin(MGPS("OnlineSubsystem.UniqueNetId", 0)); }
			bool bIsFriend() { mixin(MGBPS(8, 0x1)); }
			bool bIsFriend(bool val) { mixin(MSBPS(8, 0x1)); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(OnlineSubsystem.NamedSession) Sessions() { mixin(MGPC("ScriptArray!(OnlineSubsystem.NamedSession)", 184)); }
			Pointer VfTable_FTickableObject() { mixin(MGPC("Pointer", 60)); }
			ScriptArray!(OnlineSubsystem.NamedInterface) NamedInterfaces() { mixin(MGPC("ScriptArray!(OnlineSubsystem.NamedInterface)", 160)); }
			// ERROR: Unsupported object class 'InterfaceProperty' for the property named 'ChatInterface'!
			// ERROR: Unsupported object class 'InterfaceProperty' for the property named 'TitleFileInterface'!
			// ERROR: Unsupported object class 'InterfaceProperty' for the property named 'PartyChatInterface'!
			// ERROR: Unsupported object class 'InterfaceProperty' for the property named 'NewsInterface'!
			// ERROR: Unsupported object class 'InterfaceProperty' for the property named 'StatsInterface'!
			// ERROR: Unsupported object class 'InterfaceProperty' for the property named 'VoiceInterface'!
			// ERROR: Unsupported object class 'InterfaceProperty' for the property named 'ContentInterface'!
			// ERROR: Unsupported object class 'InterfaceProperty' for the property named 'GameInterface'!
			// ERROR: Unsupported object class 'InterfaceProperty' for the property named 'SystemInterface'!
			// ERROR: Unsupported object class 'InterfaceProperty' for the property named 'PlayerInterfaceEx'!
			// ERROR: Unsupported object class 'InterfaceProperty' for the property named 'PlayerInterface'!
			// ERROR: Unsupported object class 'InterfaceProperty' for the property named 'AccountInterface'!
			ScriptString IniLocPatcherClassName() { mixin(MGPC("ScriptString", 204)); }
			IniLocPatcher Patcher() { mixin(MGPC("IniLocPatcher", 216)); }
			ScriptArray!(OnlineSubsystem.NamedInterfaceDef) NamedInterfaceDefs() { mixin(MGPC("ScriptArray!(OnlineSubsystem.NamedInterfaceDef)", 172)); }
			int BuildIdOverride() { mixin(MGPC("int", 200)); }
			float AsyncMinCompletionTime() { mixin(MGPC("float", 220)); }
		}
		bool bUseBuildIdOverride() { mixin(MGBPC(196, 0x1)); }
		bool bUseBuildIdOverride(bool val) { mixin(MSBPC(196, 0x1)); }
	}
final:
	void SetDebugSpewLevel(int DebugSpewLevel)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = DebugSpewLevel;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetDebugSpewLevel, params.ptr, cast(void*)0);
	}
	void DumpVoiceRegistration()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DumpVoiceRegistration, cast(void*)0, cast(void*)0);
	}
	void DumpSessionState()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DumpSessionState, cast(void*)0, cast(void*)0);
	}
	static void DumpGameSettings(in OnlineGameSettings GameSettings)
	{
		ubyte params[4];
		params[] = 0;
		*cast(OnlineGameSettings*)params.ptr = cast(OnlineGameSettings)GameSettings;
		StaticClass.ProcessEvent(Functions.DumpGameSettings, params.ptr, cast(void*)0);
	}
	static int GetNumSupportedLogins()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetNumSupportedLogins, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	int GetBuildUniqueId()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBuildUniqueId, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	static bool StringToUniqueNetId(ScriptString UniqueNetIdString, ref OnlineSubsystem.UniqueNetId out_UniqueId)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = UniqueNetIdString;
		*cast(OnlineSubsystem.UniqueNetId*)&params[12] = out_UniqueId;
		StaticClass.ProcessEvent(Functions.StringToUniqueNetId, params.ptr, cast(void*)0);
		out_UniqueId = *cast(OnlineSubsystem.UniqueNetId*)&params[12];
		return *cast(bool*)&params[20];
	}
	static ScriptString UniqueNetIdToString(ref in OnlineSubsystem.UniqueNetId IdToConvert)
	{
		ubyte params[20];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = cast(OnlineSubsystem.UniqueNetId)IdToConvert;
		StaticClass.ProcessEvent(Functions.UniqueNetIdToString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[8];
	}
	UObject GetNamedInterface(ScriptName InterfaceName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InterfaceName;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetNamedInterface, params.ptr, cast(void*)0);
		return *cast(UObject*)&params[8];
	}
	void SetNamedInterface(ScriptName InterfaceName, UObject NewInterface)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InterfaceName;
		*cast(UObject*)&params[8] = NewInterface;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetNamedInterface, params.ptr, cast(void*)0);
	}
	bool SetGameChatInterface(UObject NewInterface)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UObject*)params.ptr = NewInterface;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetGameChatInterface, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool SetTitleFileInterface(UObject NewInterface)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UObject*)params.ptr = NewInterface;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetTitleFileInterface, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool SetPartyChatInterface(UObject NewInterface)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UObject*)params.ptr = NewInterface;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPartyChatInterface, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool SetNewsInterface(UObject NewInterface)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UObject*)params.ptr = NewInterface;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetNewsInterface, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool SetStatsInterface(UObject NewInterface)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UObject*)params.ptr = NewInterface;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetStatsInterface, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool SetVoiceInterface(UObject NewInterface)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UObject*)params.ptr = NewInterface;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetVoiceInterface, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool SetContentInterface(UObject NewInterface)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UObject*)params.ptr = NewInterface;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetContentInterface, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool SetGameInterface(UObject NewInterface)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UObject*)params.ptr = NewInterface;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetGameInterface, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool SetSystemInterface(UObject NewInterface)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UObject*)params.ptr = NewInterface;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSystemInterface, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool SetPlayerInterfaceEx(UObject NewInterface)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UObject*)params.ptr = NewInterface;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPlayerInterfaceEx, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool SetPlayerInterface(UObject NewInterface)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UObject*)params.ptr = NewInterface;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPlayerInterface, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool SetAccountInterface(UObject NewInterface)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UObject*)params.ptr = NewInterface;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetAccountInterface, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void Exit()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Exit, cast(void*)0, cast(void*)0);
	}
	bool PostInit()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostInit, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool Init()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.Init, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
