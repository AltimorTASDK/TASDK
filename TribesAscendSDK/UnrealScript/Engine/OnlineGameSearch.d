module UnrealScript.Engine.OnlineGameSearch;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.OnlineGameSettings;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Settings;

extern(C++) interface OnlineGameSearch : Settings
{
	enum EOnlineGameSearchComparisonType : ubyte
	{
		OGSCT_Equals = 0,
		OGSCT_NotEquals = 1,
		OGSCT_GreaterThan = 2,
		OGSCT_GreaterThanEquals = 3,
		OGSCT_LessThan = 4,
		OGSCT_LessThanEquals = 5,
		OGSCT_MAX = 6,
	}
	enum EOnlineGameSearchEntryType : ubyte
	{
		OGSET_Property = 0,
		OGSET_LocalizedSetting = 1,
		OGSET_ObjectProperty = 2,
		OGSET_MAX = 3,
	}
	enum EOnlineGameSearchSortType : ubyte
	{
		OGSSO_Ascending = 0,
		OGSSO_Descending = 1,
		OGSSO_MAX = 2,
	}
	struct OnlineGameSearchQuery
	{
		public @property final auto ref ScriptArray!(OnlineGameSearch.OnlineGameSearchORClause) OrClauses() { return *cast(ScriptArray!(OnlineGameSearch.OnlineGameSearchORClause)*)(cast(size_t)&this + 0); }
		private ubyte __OrClauses[12];
		public @property final auto ref ScriptArray!(OnlineGameSearch.OnlineGameSearchSortClause) SortClauses() { return *cast(ScriptArray!(OnlineGameSearch.OnlineGameSearchSortClause)*)(cast(size_t)&this + 12); }
		private ubyte __SortClauses[12];
	}
	struct OverrideSkill
	{
		public @property final auto ref int LeaderboardId() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __LeaderboardId[4];
		public @property final auto ref ScriptArray!(OnlineSubsystem.UniqueNetId) Players() { return *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)(cast(size_t)&this + 4); }
		private ubyte __Players[12];
		public @property final auto ref ScriptArray!(UObject.Double) Mus() { return *cast(ScriptArray!(UObject.Double)*)(cast(size_t)&this + 16); }
		private ubyte __Mus[12];
		public @property final auto ref ScriptArray!(UObject.Double) Sigmas() { return *cast(ScriptArray!(UObject.Double)*)(cast(size_t)&this + 28); }
		private ubyte __Sigmas[12];
	}
	struct OnlineGameSearchORClause
	{
		public @property final auto ref ScriptArray!(OnlineGameSearch.OnlineGameSearchParameter) OrParams() { return *cast(ScriptArray!(OnlineGameSearch.OnlineGameSearchParameter)*)(cast(size_t)&this + 0); }
		private ubyte __OrParams[12];
	}
	struct OnlineGameSearchSortClause
	{
		public @property final auto ref int EntryId() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __EntryId[4];
		public @property final auto ref ScriptName ObjectPropertyName() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
		private ubyte __ObjectPropertyName[8];
		public @property final auto ref OnlineGameSearch.EOnlineGameSearchEntryType EntryType() { return *cast(OnlineGameSearch.EOnlineGameSearchEntryType*)(cast(size_t)&this + 12); }
		private ubyte __EntryType[1];
		public @property final auto ref OnlineGameSearch.EOnlineGameSearchSortType SortType() { return *cast(OnlineGameSearch.EOnlineGameSearchSortType*)(cast(size_t)&this + 13); }
		private ubyte __SortType[1];
	}
	struct OnlineGameSearchParameter
	{
		public @property final auto ref int EntryId() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __EntryId[4];
		public @property final auto ref ScriptName ObjectPropertyName() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
		private ubyte __ObjectPropertyName[8];
		public @property final auto ref OnlineGameSearch.EOnlineGameSearchEntryType EntryType() { return *cast(OnlineGameSearch.EOnlineGameSearchEntryType*)(cast(size_t)&this + 12); }
		private ubyte __EntryType[1];
		public @property final auto ref OnlineGameSearch.EOnlineGameSearchComparisonType ComparisonType() { return *cast(OnlineGameSearch.EOnlineGameSearchComparisonType*)(cast(size_t)&this + 13); }
		private ubyte __ComparisonType[1];
	}
	struct NamedObjectProperty
	{
		public @property final auto ref ScriptName ObjectPropertyName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __ObjectPropertyName[8];
		public @property final auto ref ScriptString ObjectPropertyValue() { return *cast(ScriptString*)(cast(size_t)&this + 8); }
		private ubyte __ObjectPropertyValue[12];
	}
	struct OnlineGameSearchResult
	{
		public @property final auto ref OnlineGameSettings GameSettings() { return *cast(OnlineGameSettings*)(cast(size_t)&this + 0); }
		private ubyte __GameSettings[4];
		public @property final auto ref UObject.Pointer PlatformData() { return *cast(UObject.Pointer*)(cast(size_t)&this + 4); }
		private ubyte __PlatformData[4];
	}
	public @property final auto ref OnlineGameSearch.OverrideSkill ManualSkillOverride() { return *cast(OnlineGameSearch.OverrideSkill*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref int MaxSearchResults() { return *cast(int*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref Settings.LocalizedStringSetting Query() { return *cast(Settings.LocalizedStringSetting*)(cast(size_t)cast(void*)this + 112); }
	public @property final bool bIsLanQuery() { return (*cast(uint*)(cast(size_t)cast(void*)this + 124) & 0x1) != 0; }
	public @property final bool bIsLanQuery(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 124) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 124) &= ~0x1; } return val; }
	public @property final bool bUsesArbitration() { return (*cast(uint*)(cast(size_t)cast(void*)this + 124) & 0x2) != 0; }
	public @property final bool bUsesArbitration(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 124) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 124) &= ~0x2; } return val; }
	public @property final bool bIsSearchInProgress() { return (*cast(uint*)(cast(size_t)cast(void*)this + 124) & 0x4) != 0; }
	public @property final bool bIsSearchInProgress(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 124) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 124) &= ~0x4; } return val; }
	public @property final auto ref ScriptClass GameSettingsClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref ScriptArray!(OnlineGameSearch.OnlineGameSearchResult) Results() { return *cast(ScriptArray!(OnlineGameSearch.OnlineGameSearchResult)*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref ScriptArray!(OnlineGameSearch.NamedObjectProperty) NamedProperties() { return *cast(ScriptArray!(OnlineGameSearch.NamedObjectProperty)*)(cast(size_t)cast(void*)this + 184); }
	public @property final auto ref OnlineGameSearch.OnlineGameSearchQuery FilterQuery() { return *cast(OnlineGameSearch.OnlineGameSearchQuery*)(cast(size_t)cast(void*)this + 196); }
	public @property final auto ref ScriptString AdditionalSearchCriteria() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 220); }
	public @property final auto ref int PingBucketSize() { return *cast(int*)(cast(size_t)cast(void*)this + 232); }
	final void SortSearchResults()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6865], cast(void*)0, cast(void*)0);
	}
	final void SetSkillOverride(int LeaderboardId, ScriptArray!(OnlineSubsystem.UniqueNetId)* Players)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = LeaderboardId;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)&params[4] = *Players;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[6866], params.ptr, cast(void*)0);
		*Players = *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)&params[4];
	}
}
