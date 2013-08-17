module UnrealScript.Engine.OnlineGameSearch;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.OnlineGameSettings;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Settings;

extern(C++) interface OnlineGameSearch : Settings
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.OnlineGameSearch")); }
	private static __gshared OnlineGameSearch mDefaultProperties;
	@property final static OnlineGameSearch DefaultProperties() { mixin(MGDPC("OnlineGameSearch", "OnlineGameSearch Engine.Default__OnlineGameSearch")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSortSearchResults;
			ScriptFunction mSetSkillOverride;
		}
		public @property static final
		{
			ScriptFunction SortSearchResults() { mixin(MGF("mSortSearchResults", "Function Engine.OnlineGameSearch.SortSearchResults")); }
			ScriptFunction SetSkillOverride() { mixin(MGF("mSetSkillOverride", "Function Engine.OnlineGameSearch.SetSkillOverride")); }
		}
	}
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
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.OnlineGameSearch.OnlineGameSearchQuery")); }
		@property final auto ref
		{
			ScriptArray!(OnlineGameSearch.OnlineGameSearchORClause) OrClauses() { mixin(MGPS("ScriptArray!(OnlineGameSearch.OnlineGameSearchORClause)", 0)); }
			ScriptArray!(OnlineGameSearch.OnlineGameSearchSortClause) SortClauses() { mixin(MGPS("ScriptArray!(OnlineGameSearch.OnlineGameSearchSortClause)", 12)); }
		}
	}
	struct OverrideSkill
	{
		private ubyte __buffer__[40];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.OnlineGameSearch.OverrideSkill")); }
		@property final auto ref
		{
			int LeaderboardId() { mixin(MGPS("int", 0)); }
			ScriptArray!(OnlineSubsystem.UniqueNetId) Players() { mixin(MGPS("ScriptArray!(OnlineSubsystem.UniqueNetId)", 4)); }
			ScriptArray!(UObject.Double) Mus() { mixin(MGPS("ScriptArray!(UObject.Double)", 16)); }
			ScriptArray!(UObject.Double) Sigmas() { mixin(MGPS("ScriptArray!(UObject.Double)", 28)); }
		}
	}
	struct OnlineGameSearchORClause
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.OnlineGameSearch.OnlineGameSearchORClause")); }
		@property final auto ref ScriptArray!(OnlineGameSearch.OnlineGameSearchParameter) OrParams() { mixin(MGPS("ScriptArray!(OnlineGameSearch.OnlineGameSearchParameter)", 0)); }
	}
	struct OnlineGameSearchSortClause
	{
		private ubyte __buffer__[14];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.OnlineGameSearch.OnlineGameSearchSortClause")); }
		@property final auto ref
		{
			int EntryId() { mixin(MGPS("int", 0)); }
			ScriptName ObjectPropertyName() { mixin(MGPS("ScriptName", 4)); }
			OnlineGameSearch.EOnlineGameSearchEntryType EntryType() { mixin(MGPS("OnlineGameSearch.EOnlineGameSearchEntryType", 12)); }
			OnlineGameSearch.EOnlineGameSearchSortType SortType() { mixin(MGPS("OnlineGameSearch.EOnlineGameSearchSortType", 13)); }
		}
	}
	struct OnlineGameSearchParameter
	{
		private ubyte __buffer__[14];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.OnlineGameSearch.OnlineGameSearchParameter")); }
		@property final auto ref
		{
			int EntryId() { mixin(MGPS("int", 0)); }
			ScriptName ObjectPropertyName() { mixin(MGPS("ScriptName", 4)); }
			OnlineGameSearch.EOnlineGameSearchEntryType EntryType() { mixin(MGPS("OnlineGameSearch.EOnlineGameSearchEntryType", 12)); }
			OnlineGameSearch.EOnlineGameSearchComparisonType ComparisonType() { mixin(MGPS("OnlineGameSearch.EOnlineGameSearchComparisonType", 13)); }
		}
	}
	struct NamedObjectProperty
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.OnlineGameSearch.NamedObjectProperty")); }
		@property final auto ref
		{
			ScriptName ObjectPropertyName() { mixin(MGPS("ScriptName", 0)); }
			ScriptString ObjectPropertyValue() { mixin(MGPS("ScriptString", 8)); }
		}
	}
	struct OnlineGameSearchResult
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.OnlineGameSearch.OnlineGameSearchResult")); }
		@property final auto ref
		{
			OnlineGameSettings GameSettings() { mixin(MGPS("OnlineGameSettings", 0)); }
			UObject.Pointer PlatformData() { mixin(MGPS("UObject.Pointer", 4)); }
		}
	}
	@property final
	{
		auto ref
		{
			OnlineGameSearch.OverrideSkill ManualSkillOverride() { mixin(MGPC("OnlineGameSearch.OverrideSkill", 144)); }
			int MaxSearchResults() { mixin(MGPC("int", 108)); }
			Settings.LocalizedStringSetting Query() { mixin(MGPC("Settings.LocalizedStringSetting", 112)); }
			ScriptClass GameSettingsClass() { mixin(MGPC("ScriptClass", 128)); }
			ScriptArray!(OnlineGameSearch.OnlineGameSearchResult) Results() { mixin(MGPC("ScriptArray!(OnlineGameSearch.OnlineGameSearchResult)", 132)); }
			ScriptArray!(OnlineGameSearch.NamedObjectProperty) NamedProperties() { mixin(MGPC("ScriptArray!(OnlineGameSearch.NamedObjectProperty)", 184)); }
			OnlineGameSearch.OnlineGameSearchQuery FilterQuery() { mixin(MGPC("OnlineGameSearch.OnlineGameSearchQuery", 196)); }
			ScriptString AdditionalSearchCriteria() { mixin(MGPC("ScriptString", 220)); }
			int PingBucketSize() { mixin(MGPC("int", 232)); }
		}
		bool bIsLanQuery() { mixin(MGBPC(124, 0x1)); }
		bool bIsLanQuery(bool val) { mixin(MSBPC(124, 0x1)); }
		bool bUsesArbitration() { mixin(MGBPC(124, 0x2)); }
		bool bUsesArbitration(bool val) { mixin(MSBPC(124, 0x2)); }
		bool bIsSearchInProgress() { mixin(MGBPC(124, 0x4)); }
		bool bIsSearchInProgress(bool val) { mixin(MSBPC(124, 0x4)); }
	}
final:
	void SortSearchResults()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SortSearchResults, cast(void*)0, cast(void*)0);
	}
	void SetSkillOverride(int LeaderboardId, ref in ScriptArray!(OnlineSubsystem.UniqueNetId) Players)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = LeaderboardId;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)&params[4] = cast(ScriptArray!(OnlineSubsystem.UniqueNetId))Players;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSkillOverride, params.ptr, cast(void*)0);
	}
}
