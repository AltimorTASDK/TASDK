module UnrealScript.Engine.OnlineSubsystem;

import ScriptClasses;
import UnrealScript.Engine.OnlineGameSettings;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Surface;
import UnrealScript.Engine.IniLocPatcher;
import UnrealScript.Engine.Settings;

extern(C++) interface OnlineSubsystem : UObject
{
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
		public @property final auto ref OnlineGameSettings GameSettings() { return *cast(OnlineGameSettings*)(cast(size_t)&this + 12); }
		private ubyte __GameSettings[4];
		public @property final auto ref ScriptArray!(OnlineSubsystem.OnlineRegistrant) Registrants() { return *cast(ScriptArray!(OnlineSubsystem.OnlineRegistrant)*)(cast(size_t)&this + 16); }
		private ubyte __Registrants[12];
		public @property final auto ref ScriptArray!(OnlineSubsystem.OnlineArbitrationRegistrant) ArbitrationRegistrants() { return *cast(ScriptArray!(OnlineSubsystem.OnlineArbitrationRegistrant)*)(cast(size_t)&this + 28); }
		private ubyte __ArbitrationRegistrants[12];
		public @property final auto ref ScriptName SessionName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __SessionName[8];
		public @property final auto ref UObject.Pointer SessionInfo() { return *cast(UObject.Pointer*)(cast(size_t)&this + 8); }
		private ubyte __SessionInfo[4];
	}
	struct OnlineRegistrant
	{
		public @property final auto ref OnlineSubsystem.UniqueNetId PlayerNetId() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)&this + 0); }
		private ubyte __PlayerNetId[8];
	}
	struct OnlineArbitrationRegistrant
	{
		public @property final auto ref OnlineSubsystem.UniqueNetId PlayerNetId() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)&this + 0); }
		private ubyte __PlayerNetId[8];
		public @property final auto ref QWord MachineId() { return *cast(QWord*)(cast(size_t)&this + 8); }
		private ubyte __MachineId[8];
		public @property final auto ref int Trustworthiness() { return *cast(int*)(cast(size_t)&this + 16); }
		private ubyte __Trustworthiness[4];
	}
	struct UniqueNetId
	{
		public @property final auto ref QWord Uid() { return *cast(QWord*)(cast(size_t)&this + 0); }
		private ubyte __Uid[8];
	}
	struct NamedInterface
	{
		public @property final auto ref UObject InterfaceObject() { return *cast(UObject*)(cast(size_t)&this + 8); }
		private ubyte __InterfaceObject[4];
		public @property final auto ref ScriptName InterfaceName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __InterfaceName[8];
	}
	struct OnlinePartyMember
	{
		public @property final auto ref OnlineSubsystem.UniqueNetId UniqueId() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)&this + 0); }
		private ubyte __UniqueId[8];
		public @property final auto ref ScriptString NickName() { return *cast(ScriptString*)(cast(size_t)&this + 8); }
		private ubyte __NickName[12];
		public @property final auto ref ubyte LocalUserNum() { return *cast(ubyte*)(cast(size_t)&this + 20); }
		private ubyte __LocalUserNum[1];
		public @property final auto ref OnlineSubsystem.ENATType NatType() { return *cast(OnlineSubsystem.ENATType*)(cast(size_t)&this + 21); }
		private ubyte __NatType[1];
		public @property final auto ref int TitleId() { return *cast(int*)(cast(size_t)&this + 24); }
		private ubyte __TitleId[4];
		public @property final bool bIsLocal() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x1) != 0; }
		public @property final bool bIsLocal(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x1; } return val; }
		private ubyte __bIsLocal[4];
		public @property final bool bIsInPartyVoice() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x2) != 0; }
		public @property final bool bIsInPartyVoice(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x2; } return val; }
		private ubyte __bIsInPartyVoice[4];
		public @property final bool bIsTalking() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x4) != 0; }
		public @property final bool bIsTalking(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x4; } return val; }
		private ubyte __bIsTalking[4];
		public @property final bool bIsInGameSession() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x8) != 0; }
		public @property final bool bIsInGameSession(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x8; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x8; } return val; }
		private ubyte __bIsInGameSession[4];
		public @property final bool bIsPlayingThisGame() { return (*cast(uint*)(cast(size_t)&this + 28) & 0x10) != 0; }
		public @property final bool bIsPlayingThisGame(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 28) |= 0x10; } else { *cast(uint*)(cast(size_t)&this + 28) &= ~0x10; } return val; }
		private ubyte __bIsPlayingThisGame[4];
		public @property final auto ref QWord SessionId() { return *cast(QWord*)(cast(size_t)&this + 32); }
		private ubyte __SessionId[8];
		public @property final auto ref int Data1() { return *cast(int*)(cast(size_t)&this + 40); }
		private ubyte __Data1[4];
		public @property final auto ref int Data2() { return *cast(int*)(cast(size_t)&this + 44); }
		private ubyte __Data2[4];
		public @property final auto ref int Data3() { return *cast(int*)(cast(size_t)&this + 48); }
		private ubyte __Data3[4];
		public @property final auto ref int Data4() { return *cast(int*)(cast(size_t)&this + 52); }
		private ubyte __Data4[4];
	}
	struct AchievementDetails
	{
		public @property final auto ref int Id() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __Id[4];
		public @property final auto ref ScriptString AchievementName() { return *cast(ScriptString*)(cast(size_t)&this + 4); }
		private ubyte __AchievementName[12];
		public @property final auto ref ScriptString Description() { return *cast(ScriptString*)(cast(size_t)&this + 16); }
		private ubyte __Description[12];
		public @property final auto ref ScriptString HowTo() { return *cast(ScriptString*)(cast(size_t)&this + 28); }
		private ubyte __HowTo[12];
		public @property final auto ref Surface Image() { return *cast(Surface*)(cast(size_t)&this + 40); }
		private ubyte __Image[4];
		public @property final auto ref int GamerPoints() { return *cast(int*)(cast(size_t)&this + 44); }
		private ubyte __GamerPoints[4];
		public @property final bool bIsSecret() { return (*cast(uint*)(cast(size_t)&this + 48) & 0x1) != 0; }
		public @property final bool bIsSecret(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 48) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 48) &= ~0x1; } return val; }
		private ubyte __bIsSecret[4];
		public @property final bool bWasAchievedOnline() { return (*cast(uint*)(cast(size_t)&this + 48) & 0x2) != 0; }
		public @property final bool bWasAchievedOnline(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 48) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 48) &= ~0x2; } return val; }
		private ubyte __bWasAchievedOnline[4];
		public @property final bool bWasAchievedOffline() { return (*cast(uint*)(cast(size_t)&this + 48) & 0x4) != 0; }
		public @property final bool bWasAchievedOffline(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 48) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 48) &= ~0x4; } return val; }
		private ubyte __bWasAchievedOffline[4];
	}
	struct CommunityContentMetadata
	{
		public @property final auto ref int ContentType() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __ContentType[4];
		public @property final auto ref ScriptArray!(Settings.SettingsProperty) MetadataItems() { return *cast(ScriptArray!(Settings.SettingsProperty)*)(cast(size_t)&this + 4); }
		private ubyte __MetadataItems[12];
	}
	struct CommunityContentFile
	{
		public @property final auto ref int ContentId() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __ContentId[4];
		public @property final auto ref int FileId() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __FileId[4];
		public @property final auto ref int ContentType() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __ContentType[4];
		public @property final auto ref int FileSize() { return *cast(int*)(cast(size_t)&this + 12); }
		private ubyte __FileSize[4];
		public @property final auto ref OnlineSubsystem.UniqueNetId Owner() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)&this + 16); }
		private ubyte __Owner[8];
		public @property final auto ref int DownloadCount() { return *cast(int*)(cast(size_t)&this + 24); }
		private ubyte __DownloadCount[4];
		public @property final auto ref float AverageRating() { return *cast(float*)(cast(size_t)&this + 28); }
		private ubyte __AverageRating[4];
		public @property final auto ref int RatingCount() { return *cast(int*)(cast(size_t)&this + 32); }
		private ubyte __RatingCount[4];
		public @property final auto ref int LastRatingGiven() { return *cast(int*)(cast(size_t)&this + 36); }
		private ubyte __LastRatingGiven[4];
		public @property final auto ref ScriptString LocalFilePath() { return *cast(ScriptString*)(cast(size_t)&this + 40); }
		private ubyte __LocalFilePath[12];
	}
	struct TitleFile
	{
		public @property final auto ref ScriptString Filename() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		private ubyte __Filename[12];
		public @property final auto ref OnlineSubsystem.EOnlineEnumerationReadState AsyncState() { return *cast(OnlineSubsystem.EOnlineEnumerationReadState*)(cast(size_t)&this + 12); }
		private ubyte __AsyncState[1];
		public @property final auto ref ScriptArray!(ubyte) Data() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)&this + 16); }
		private ubyte __Data[12];
	}
	struct NamedInterfaceDef
	{
		public @property final auto ref ScriptName InterfaceName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __InterfaceName[8];
		public @property final auto ref ScriptString InterfaceClassName() { return *cast(ScriptString*)(cast(size_t)&this + 8); }
		private ubyte __InterfaceClassName[12];
	}
	struct OnlineFriendMessage
	{
		public @property final auto ref OnlineSubsystem.UniqueNetId SendingPlayerId() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)&this + 0); }
		private ubyte __SendingPlayerId[8];
		public @property final auto ref ScriptString SendingPlayerNick() { return *cast(ScriptString*)(cast(size_t)&this + 8); }
		private ubyte __SendingPlayerNick[12];
		public @property final bool bIsFriendInvite() { return (*cast(uint*)(cast(size_t)&this + 20) & 0x1) != 0; }
		public @property final bool bIsFriendInvite(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 20) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 20) &= ~0x1; } return val; }
		private ubyte __bIsFriendInvite[4];
		public @property final bool bIsGameInvite() { return (*cast(uint*)(cast(size_t)&this + 20) & 0x2) != 0; }
		public @property final bool bIsGameInvite(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 20) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 20) &= ~0x2; } return val; }
		private ubyte __bIsGameInvite[4];
		public @property final bool bWasAccepted() { return (*cast(uint*)(cast(size_t)&this + 20) & 0x4) != 0; }
		public @property final bool bWasAccepted(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 20) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 20) &= ~0x4; } return val; }
		private ubyte __bWasAccepted[4];
		public @property final bool bWasDenied() { return (*cast(uint*)(cast(size_t)&this + 20) & 0x8) != 0; }
		public @property final bool bWasDenied(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 20) |= 0x8; } else { *cast(uint*)(cast(size_t)&this + 20) &= ~0x8; } return val; }
		private ubyte __bWasDenied[4];
		public @property final auto ref ScriptString Message() { return *cast(ScriptString*)(cast(size_t)&this + 24); }
		private ubyte __Message[12];
	}
	struct RemoteTalker
	{
		public @property final auto ref OnlineSubsystem.UniqueNetId TalkerId() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)&this + 0); }
		private ubyte __TalkerId[8];
		public @property final auto ref float LastNotificationTime() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __LastNotificationTime[4];
		public @property final bool bWasTalking() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x1) != 0; }
		public @property final bool bWasTalking(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x1; } return val; }
		private ubyte __bWasTalking[4];
		public @property final bool bIsTalking() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x2) != 0; }
		public @property final bool bIsTalking(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x2; } return val; }
		private ubyte __bIsTalking[4];
		public @property final bool bIsRegistered() { return (*cast(uint*)(cast(size_t)&this + 12) & 0x4) != 0; }
		public @property final bool bIsRegistered(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 12) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 12) &= ~0x4; } return val; }
		private ubyte __bIsRegistered[4];
	}
	struct LocalTalker
	{
		public @property final bool bHasVoice() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
		public @property final bool bHasVoice(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		private ubyte __bHasVoice[4];
		public @property final bool bHasNetworkedVoice() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2) != 0; }
		public @property final bool bHasNetworkedVoice(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2; } return val; }
		private ubyte __bHasNetworkedVoice[4];
		public @property final bool bIsRecognizingSpeech() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x4) != 0; }
		public @property final bool bIsRecognizingSpeech(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x4; } return val; }
		private ubyte __bIsRecognizingSpeech[4];
		public @property final bool bWasTalking() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x8) != 0; }
		public @property final bool bWasTalking(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x8; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x8; } return val; }
		private ubyte __bWasTalking[4];
		public @property final bool bIsTalking() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x10) != 0; }
		public @property final bool bIsTalking(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x10; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x10; } return val; }
		private ubyte __bIsTalking[4];
		public @property final bool bIsRegistered() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x20) != 0; }
		public @property final bool bIsRegistered(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x20; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x20; } return val; }
		private ubyte __bIsRegistered[4];
	}
	struct OnlinePlayerScore
	{
		public @property final auto ref OnlineSubsystem.UniqueNetId PlayerID() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)&this + 0); }
		private ubyte __PlayerID[8];
		public @property final auto ref int TeamID() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __TeamID[4];
		public @property final auto ref int Score() { return *cast(int*)(cast(size_t)&this + 12); }
		private ubyte __Score[4];
	}
	struct SpeechRecognizedWord
	{
		public @property final auto ref int WordId() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __WordId[4];
		public @property final auto ref ScriptString WordText() { return *cast(ScriptString*)(cast(size_t)&this + 4); }
		private ubyte __WordText[12];
		public @property final auto ref float Confidence() { return *cast(float*)(cast(size_t)&this + 16); }
		private ubyte __Confidence[4];
	}
	struct OnlineContent
	{
		public @property final auto ref OnlineSubsystem.EOnlineContentType ContentType() { return *cast(OnlineSubsystem.EOnlineContentType*)(cast(size_t)&this + 0); }
		private ubyte __ContentType[1];
		public @property final auto ref ubyte UserIndex() { return *cast(ubyte*)(cast(size_t)&this + 1); }
		private ubyte __UserIndex[1];
		public @property final auto ref int DeviceID() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __DeviceID[4];
		public @property final auto ref ScriptString FriendlyName() { return *cast(ScriptString*)(cast(size_t)&this + 8); }
		private ubyte __FriendlyName[12];
		public @property final auto ref ScriptString Filename() { return *cast(ScriptString*)(cast(size_t)&this + 20); }
		private ubyte __Filename[12];
		public @property final auto ref ScriptString ContentPath() { return *cast(ScriptString*)(cast(size_t)&this + 32); }
		private ubyte __ContentPath[12];
		public @property final auto ref ScriptArray!(ScriptString) ContentPackages() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)&this + 44); }
		private ubyte __ContentPackages[12];
		public @property final auto ref ScriptArray!(ScriptString) ContentFiles() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)&this + 56); }
		private ubyte __ContentFiles[12];
	}
	struct OnlineFriend
	{
		public @property final auto ref OnlineSubsystem.UniqueNetId UniqueId() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)&this + 0); }
		private ubyte __UniqueId[8];
		public @property final auto ref QWord SessionId() { return *cast(QWord*)(cast(size_t)&this + 8); }
		private ubyte __SessionId[8];
		public @property final auto ref ScriptString NickName() { return *cast(ScriptString*)(cast(size_t)&this + 16); }
		private ubyte __NickName[12];
		public @property final auto ref ScriptString PresenceInfo() { return *cast(ScriptString*)(cast(size_t)&this + 28); }
		private ubyte __PresenceInfo[12];
		public @property final auto ref OnlineSubsystem.EOnlineFriendState FriendState() { return *cast(OnlineSubsystem.EOnlineFriendState*)(cast(size_t)&this + 40); }
		private ubyte __FriendState[1];
		public @property final bool bIsOnline() { return (*cast(uint*)(cast(size_t)&this + 44) & 0x1) != 0; }
		public @property final bool bIsOnline(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 44) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 44) &= ~0x1; } return val; }
		private ubyte __bIsOnline[4];
		public @property final bool bIsPlaying() { return (*cast(uint*)(cast(size_t)&this + 44) & 0x2) != 0; }
		public @property final bool bIsPlaying(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 44) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 44) &= ~0x2; } return val; }
		private ubyte __bIsPlaying[4];
		public @property final bool bIsPlayingThisGame() { return (*cast(uint*)(cast(size_t)&this + 44) & 0x4) != 0; }
		public @property final bool bIsPlayingThisGame(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 44) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 44) &= ~0x4; } return val; }
		private ubyte __bIsPlayingThisGame[4];
		public @property final bool bIsJoinable() { return (*cast(uint*)(cast(size_t)&this + 44) & 0x8) != 0; }
		public @property final bool bIsJoinable(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 44) |= 0x8; } else { *cast(uint*)(cast(size_t)&this + 44) &= ~0x8; } return val; }
		private ubyte __bIsJoinable[4];
		public @property final bool bHasVoiceSupport() { return (*cast(uint*)(cast(size_t)&this + 44) & 0x10) != 0; }
		public @property final bool bHasVoiceSupport(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 44) |= 0x10; } else { *cast(uint*)(cast(size_t)&this + 44) &= ~0x10; } return val; }
		private ubyte __bHasVoiceSupport[4];
		public @property final bool bHaveInvited() { return (*cast(uint*)(cast(size_t)&this + 44) & 0x20) != 0; }
		public @property final bool bHaveInvited(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 44) |= 0x20; } else { *cast(uint*)(cast(size_t)&this + 44) &= ~0x20; } return val; }
		private ubyte __bHaveInvited[4];
		public @property final bool bHasInvitedYou() { return (*cast(uint*)(cast(size_t)&this + 44) & 0x40) != 0; }
		public @property final bool bHasInvitedYou(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 44) |= 0x40; } else { *cast(uint*)(cast(size_t)&this + 44) &= ~0x40; } return val; }
		private ubyte __bHasInvitedYou[4];
	}
	struct FriendsQuery
	{
		public @property final auto ref OnlineSubsystem.UniqueNetId UniqueId() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)&this + 0); }
		private ubyte __UniqueId[8];
		public @property final bool bIsFriend() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x1) != 0; }
		public @property final bool bIsFriend(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x1; } return val; }
		private ubyte __bIsFriend[4];
	}
	public @property final auto ref ScriptArray!(OnlineSubsystem.NamedSession) Sessions() { return *cast(ScriptArray!(OnlineSubsystem.NamedSession)*)(cast(size_t)cast(void*)this + 184); }
	public @property final auto ref UObject.Pointer VfTable_FTickableObject() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 60); }
	public @property final auto ref ScriptArray!(OnlineSubsystem.NamedInterface) NamedInterfaces() { return *cast(ScriptArray!(OnlineSubsystem.NamedInterface)*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref ScriptString IniLocPatcherClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 204); }
	public @property final auto ref IniLocPatcher Patcher() { return *cast(IniLocPatcher*)(cast(size_t)cast(void*)this + 216); }
	public @property final auto ref ScriptArray!(OnlineSubsystem.NamedInterfaceDef) NamedInterfaceDefs() { return *cast(ScriptArray!(OnlineSubsystem.NamedInterfaceDef)*)(cast(size_t)cast(void*)this + 172); }
	public @property final bool bUseBuildIdOverride() { return (*cast(uint*)(cast(size_t)cast(void*)this + 196) & 0x1) != 0; }
	public @property final bool bUseBuildIdOverride(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 196) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 196) &= ~0x1; } return val; }
	public @property final auto ref int BuildIdOverride() { return *cast(int*)(cast(size_t)cast(void*)this + 200); }
	public @property final auto ref float AsyncMinCompletionTime() { return *cast(float*)(cast(size_t)cast(void*)this + 220); }
	final void SetDebugSpewLevel(int DebugSpewLevel)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = DebugSpewLevel;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5436], params.ptr, cast(void*)0);
	}
	final void DumpVoiceRegistration()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5437], cast(void*)0, cast(void*)0);
	}
	final void DumpSessionState()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5439], cast(void*)0, cast(void*)0);
	}
	final void DumpGameSettings(OnlineGameSettings GameSettings)
	{
		ubyte params[4];
		params[] = 0;
		*cast(OnlineGameSettings*)params.ptr = GameSettings;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5440], params.ptr, cast(void*)0);
	}
	final int GetNumSupportedLogins()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5456], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final int GetBuildUniqueId()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5458], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final bool StringToUniqueNetId(ScriptString UniqueNetIdString, OnlineSubsystem.UniqueNetId* out_UniqueId)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = UniqueNetIdString;
		*cast(OnlineSubsystem.UniqueNetId*)&params[12] = *out_UniqueId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5460], params.ptr, cast(void*)0);
		*out_UniqueId = *cast(OnlineSubsystem.UniqueNetId*)&params[12];
		return *cast(bool*)&params[20];
	}
	final ScriptString UniqueNetIdToString(OnlineSubsystem.UniqueNetId* IdToConvert)
	{
		ubyte params[20];
		params[] = 0;
		*cast(OnlineSubsystem.UniqueNetId*)params.ptr = *IdToConvert;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5462], params.ptr, cast(void*)0);
		*IdToConvert = *cast(OnlineSubsystem.UniqueNetId*)params.ptr;
		return *cast(ScriptString*)&params[8];
	}
	final UObject GetNamedInterface(ScriptName InterfaceName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InterfaceName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5466], params.ptr, cast(void*)0);
		return *cast(UObject*)&params[8];
	}
	final void SetNamedInterface(ScriptName InterfaceName, UObject NewInterface)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = InterfaceName;
		*cast(UObject*)&params[8] = NewInterface;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5469], params.ptr, cast(void*)0);
	}
	final bool SetGameChatInterface(UObject NewInterface)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UObject*)params.ptr = NewInterface;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5476], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool SetTitleFileInterface(UObject NewInterface)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UObject*)params.ptr = NewInterface;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5481], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool SetPartyChatInterface(UObject NewInterface)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UObject*)params.ptr = NewInterface;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5486], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool SetNewsInterface(UObject NewInterface)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UObject*)params.ptr = NewInterface;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5491], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool SetStatsInterface(UObject NewInterface)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UObject*)params.ptr = NewInterface;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5496], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool SetVoiceInterface(UObject NewInterface)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UObject*)params.ptr = NewInterface;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5501], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool SetContentInterface(UObject NewInterface)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UObject*)params.ptr = NewInterface;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5506], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool SetGameInterface(UObject NewInterface)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UObject*)params.ptr = NewInterface;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5511], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool SetSystemInterface(UObject NewInterface)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UObject*)params.ptr = NewInterface;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5516], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool SetPlayerInterfaceEx(UObject NewInterface)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UObject*)params.ptr = NewInterface;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5521], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool SetPlayerInterface(UObject NewInterface)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UObject*)params.ptr = NewInterface;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5526], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool SetAccountInterface(UObject NewInterface)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UObject*)params.ptr = NewInterface;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5531], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void Exit()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5536], cast(void*)0, cast(void*)0);
	}
	final bool PostInit()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5541], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool Init()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[5542], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
