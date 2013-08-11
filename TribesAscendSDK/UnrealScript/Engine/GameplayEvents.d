module UnrealScript.Engine.GameplayEvents;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Core.UObject;

extern(C++) interface GameplayEvents : UObject
{
	public static immutable auto HeaderFlags_NoEventStrings = 1;
	enum EGameStatGroups : ubyte
	{
		GSG_EngineStats = 0,
		GSG_Game = 1,
		GSG_Team = 2,
		GSG_Player = 3,
		GSG_Weapon = 4,
		GSG_Damage = 5,
		GSG_Projectile = 6,
		GSG_Pawn = 7,
		GSG_GameSpecific = 8,
		GSG_Aggregate = 9,
		GSG_MAX = 10,
	}
	struct PlayerInformationNew
	{
		public @property final bool bIsBot() { return (*cast(uint*)(cast(size_t)&this + 32) & 0x1) != 0; }
		public @property final bool bIsBot(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 32) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 32) &= ~0x1; } return val; }
		private ubyte __bIsBot[4];
		public @property final auto ref OnlineSubsystem.UniqueNetId UniqueId() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)&this + 24); }
		private ubyte __UniqueId[8];
		public @property final auto ref ScriptString PlayerName() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
		private ubyte __PlayerName[12];
		public @property final auto ref ScriptString ControllerName() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		private ubyte __ControllerName[12];
	}
	struct TeamInformation
	{
		public @property final auto ref int MaxSize() { return *cast(int*)(cast(size_t)&this + 20); }
		private ubyte __MaxSize[4];
		public @property final auto ref UObject.Color TeamColor() { return *cast(UObject.Color*)(cast(size_t)&this + 16); }
		private ubyte __TeamColor[4];
		public @property final auto ref ScriptString TeamName() { return *cast(ScriptString*)(cast(size_t)&this + 4); }
		private ubyte __TeamName[12];
		public @property final auto ref int TeamIndex() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __TeamIndex[4];
	}
	struct GameplayEventMetaData
	{
		public @property final auto ref int EventDataType() { return *cast(int*)(cast(size_t)&this + 20); }
		private ubyte __EventDataType[4];
		public @property final auto ref GameplayEvents.GameStatGroup StatGroup() { return *cast(GameplayEvents.GameStatGroup*)(cast(size_t)&this + 12); }
		private ubyte __StatGroup[8];
		public @property final auto ref ScriptName EventName() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
		private ubyte __EventName[8];
		public @property final auto ref int EventID() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __EventID[4];
	}
	struct WeaponClassEventData
	{
		public @property final auto ref ScriptString WeaponClassName() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		private ubyte __WeaponClassName[12];
	}
	struct DamageClassEventData
	{
		public @property final auto ref ScriptString DamageClassName() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		private ubyte __DamageClassName[12];
	}
	struct ProjectileClassEventData
	{
		public @property final auto ref ScriptString ProjectileClassName() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		private ubyte __ProjectileClassName[12];
	}
	struct PawnClassEventData
	{
		public @property final auto ref ScriptString PawnClassName() { return *cast(ScriptString*)(cast(size_t)&this + 0); }
		private ubyte __PawnClassName[12];
	}
	struct GameStatGroup
	{
		// WARNING: Property 'Level' has the same name as a defined type!
		public @property final auto ref GameplayEvents.EGameStatGroups Group() { return *cast(GameplayEvents.EGameStatGroups*)(cast(size_t)&this + 0); }
		private ubyte __Group[1];
	}
	struct GameplayEventsHeader
	{
		public @property final auto ref int Flags() { return *cast(int*)(cast(size_t)&this + 40); }
		private ubyte __Flags[4];
		public @property final auto ref ScriptString FilterClass() { return *cast(ScriptString*)(cast(size_t)&this + 28); }
		private ubyte __FilterClass[12];
		public @property final auto ref int FileSize() { return *cast(int*)(cast(size_t)&this + 24); }
		private ubyte __FileSize[4];
		public @property final auto ref int TotalStreamSize() { return *cast(int*)(cast(size_t)&this + 20); }
		private ubyte __TotalStreamSize[4];
		public @property final auto ref int FooterOffset() { return *cast(int*)(cast(size_t)&this + 16); }
		private ubyte __FooterOffset[4];
		public @property final auto ref int AggregateOffset() { return *cast(int*)(cast(size_t)&this + 12); }
		private ubyte __AggregateOffset[4];
		public @property final auto ref int StreamOffset() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __StreamOffset[4];
		public @property final auto ref int StatsWriterVersion() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __StatsWriterVersion[4];
		public @property final auto ref int EngineVersion() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __EngineVersion[4];
	}
	struct GameSessionInformation
	{
		public @property final auto ref OnlineSubsystem.UniqueNetId OwningNetId() { return *cast(OnlineSubsystem.UniqueNetId*)(cast(size_t)&this + 100); }
		private ubyte __OwningNetId[8];
		public @property final auto ref int GameTypeId() { return *cast(int*)(cast(size_t)&this + 96); }
		private ubyte __GameTypeId[4];
		public @property final auto ref int SessionInstance() { return *cast(int*)(cast(size_t)&this + 92); }
		private ubyte __SessionInstance[4];
		public @property final auto ref ScriptString MapURL() { return *cast(ScriptString*)(cast(size_t)&this + 80); }
		private ubyte __MapURL[12];
		public @property final auto ref ScriptString MapName() { return *cast(ScriptString*)(cast(size_t)&this + 68); }
		private ubyte __MapName[12];
		public @property final auto ref ScriptString GameClassName() { return *cast(ScriptString*)(cast(size_t)&this + 56); }
		private ubyte __GameClassName[12];
		public @property final auto ref ScriptString GameplaySessionID() { return *cast(ScriptString*)(cast(size_t)&this + 44); }
		private ubyte __GameplaySessionID[12];
		public @property final bool bGameplaySessionInProgress() { return (*cast(uint*)(cast(size_t)&this + 40) & 0x1) != 0; }
		public @property final bool bGameplaySessionInProgress(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 40) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 40) &= ~0x1; } return val; }
		private ubyte __bGameplaySessionInProgress[4];
		public @property final auto ref float GameplaySessionEndTime() { return *cast(float*)(cast(size_t)&this + 36); }
		private ubyte __GameplaySessionEndTime[4];
		public @property final auto ref float GameplaySessionStartTime() { return *cast(float*)(cast(size_t)&this + 32); }
		private ubyte __GameplaySessionStartTime[4];
		public @property final auto ref ScriptString GameplaySessionTimestamp() { return *cast(ScriptString*)(cast(size_t)&this + 20); }
		private ubyte __GameplaySessionTimestamp[12];
		public @property final auto ref ScriptString Language() { return *cast(ScriptString*)(cast(size_t)&this + 8); }
		private ubyte __Language[12];
		public @property final auto ref int PlatformType() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __PlatformType[4];
		public @property final auto ref int AppTitleID() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __AppTitleID[4];
	}
	public @property final auto ref ScriptArray!(GameplayEvents.PlayerInformationNew) PlayerList() { return *cast(ScriptArray!(GameplayEvents.PlayerInformationNew)*)(cast(size_t)cast(void*)this + 228); }
	public @property final auto ref ScriptArray!(GameplayEvents.TeamInformation) TeamList() { return *cast(ScriptArray!(GameplayEvents.TeamInformation)*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref ScriptArray!(GameplayEvents.GameplayEventMetaData) SupportedEvents() { return *cast(ScriptArray!(GameplayEvents.GameplayEventMetaData)*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref ScriptArray!(GameplayEvents.WeaponClassEventData) WeaponClassArray() { return *cast(ScriptArray!(GameplayEvents.WeaponClassEventData)*)(cast(size_t)cast(void*)this + 264); }
	public @property final auto ref ScriptArray!(GameplayEvents.DamageClassEventData) DamageClassArray() { return *cast(ScriptArray!(GameplayEvents.DamageClassEventData)*)(cast(size_t)cast(void*)this + 276); }
	public @property final auto ref ScriptArray!(GameplayEvents.ProjectileClassEventData) ProjectileClassArray() { return *cast(ScriptArray!(GameplayEvents.ProjectileClassEventData)*)(cast(size_t)cast(void*)this + 288); }
	public @property final auto ref ScriptArray!(GameplayEvents.PawnClassEventData) PawnClassArray() { return *cast(ScriptArray!(GameplayEvents.PawnClassEventData)*)(cast(size_t)cast(void*)this + 300); }
	public @property final auto ref ScriptArray!(ScriptString) ActorArray() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 312); }
	public @property final auto ref ScriptArray!(ScriptString) SoundCueArray() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 324); }
	public @property final auto ref GameplayEvents.GameSessionInformation CurrentSessionInfo() { return *cast(GameplayEvents.GameSessionInformation*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref GameplayEvents.GameplayEventsHeader Header() { return *cast(GameplayEvents.GameplayEventsHeader*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref ScriptString StatsFileName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref UObject.Pointer Archive() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 60); }
	final bool OpenStatsFile(ScriptString Filename)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Filename;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17548], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final void CloseStatsFile()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17551], cast(void*)0, cast(void*)0);
	}
	final ScriptString GetFilename()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17552], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
