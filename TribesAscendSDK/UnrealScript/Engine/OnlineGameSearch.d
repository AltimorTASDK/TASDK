module UnrealScript.Engine.OnlineGameSearch;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.OnlineGameSettings;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Settings;

extern(C++) interface OnlineGameSearch : Settings
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.OnlineGameSearch")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSortSearchResults;
			ScriptFunction mSetSkillOverride;
		}
		public @property static final
		{
			ScriptFunction SortSearchResults() { return mSortSearchResults ? mSortSearchResults : (mSortSearchResults = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameSearch.SortSearchResults")); }
			ScriptFunction SetSkillOverride() { return mSetSkillOverride ? mSetSkillOverride : (mSetSkillOverride = ScriptObject.Find!(ScriptFunction)("Function Engine.OnlineGameSearch.SetSkillOverride")); }
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
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.OnlineGameSearch.OnlineGameSearchQuery")); }
		@property final auto ref
		{
			ScriptArray!(OnlineGameSearch.OnlineGameSearchORClause) OrClauses() { return *cast(ScriptArray!(OnlineGameSearch.OnlineGameSearchORClause)*)(cast(size_t)&this + 0); }
			ScriptArray!(OnlineGameSearch.OnlineGameSearchSortClause) SortClauses() { return *cast(ScriptArray!(OnlineGameSearch.OnlineGameSearchSortClause)*)(cast(size_t)&this + 12); }
		}
	}
	struct OverrideSkill
	{
		private ubyte __buffer__[40];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.OnlineGameSearch.OverrideSkill")); }
		@property final auto ref
		{
			int LeaderboardId() { return *cast(int*)(cast(size_t)&this + 0); }
			ScriptArray!(OnlineSubsystem.UniqueNetId) Players() { return *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)(cast(size_t)&this + 4); }
			ScriptArray!(UObject.Double) Mus() { return *cast(ScriptArray!(UObject.Double)*)(cast(size_t)&this + 16); }
			ScriptArray!(UObject.Double) Sigmas() { return *cast(ScriptArray!(UObject.Double)*)(cast(size_t)&this + 28); }
		}
	}
	struct OnlineGameSearchORClause
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.OnlineGameSearch.OnlineGameSearchORClause")); }
		@property final auto ref ScriptArray!(OnlineGameSearch.OnlineGameSearchParameter) OrParams() { return *cast(ScriptArray!(OnlineGameSearch.OnlineGameSearchParameter)*)(cast(size_t)&this + 0); }
	}
	struct OnlineGameSearchSortClause
	{
		private ubyte __buffer__[14];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.OnlineGameSearch.OnlineGameSearchSortClause")); }
		@property final auto ref
		{
			int EntryId() { return *cast(int*)(cast(size_t)&this + 0); }
			ScriptName ObjectPropertyName() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
			OnlineGameSearch.EOnlineGameSearchEntryType EntryType() { return *cast(OnlineGameSearch.EOnlineGameSearchEntryType*)(cast(size_t)&this + 12); }
			OnlineGameSearch.EOnlineGameSearchSortType SortType() { return *cast(OnlineGameSearch.EOnlineGameSearchSortType*)(cast(size_t)&this + 13); }
		}
	}
	struct OnlineGameSearchParameter
	{
		private ubyte __buffer__[14];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.OnlineGameSearch.OnlineGameSearchParameter")); }
		@property final auto ref
		{
			int EntryId() { return *cast(int*)(cast(size_t)&this + 0); }
			ScriptName ObjectPropertyName() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
			OnlineGameSearch.EOnlineGameSearchEntryType EntryType() { return *cast(OnlineGameSearch.EOnlineGameSearchEntryType*)(cast(size_t)&this + 12); }
			OnlineGameSearch.EOnlineGameSearchComparisonType ComparisonType() { return *cast(OnlineGameSearch.EOnlineGameSearchComparisonType*)(cast(size_t)&this + 13); }
		}
	}
	struct NamedObjectProperty
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.OnlineGameSearch.NamedObjectProperty")); }
		@property final auto ref
		{
			ScriptName ObjectPropertyName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
			ScriptString ObjectPropertyValue() { return *cast(ScriptString*)(cast(size_t)&this + 8); }
		}
	}
	struct OnlineGameSearchResult
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.OnlineGameSearch.OnlineGameSearchResult")); }
		@property final auto ref
		{
			OnlineGameSettings GameSettings() { return *cast(OnlineGameSettings*)(cast(size_t)&this + 0); }
			UObject.Pointer PlatformData() { return *cast(UObject.Pointer*)(cast(size_t)&this + 4); }
		}
	}
	@property final
	{
		auto ref
		{
			OnlineGameSearch.OverrideSkill ManualSkillOverride() { return *cast(OnlineGameSearch.OverrideSkill*)(cast(size_t)cast(void*)this + 144); }
			int MaxSearchResults() { return *cast(int*)(cast(size_t)cast(void*)this + 108); }
			Settings.LocalizedStringSetting Query() { return *cast(Settings.LocalizedStringSetting*)(cast(size_t)cast(void*)this + 112); }
			ScriptClass GameSettingsClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 128); }
			ScriptArray!(OnlineGameSearch.OnlineGameSearchResult) Results() { return *cast(ScriptArray!(OnlineGameSearch.OnlineGameSearchResult)*)(cast(size_t)cast(void*)this + 132); }
			ScriptArray!(OnlineGameSearch.NamedObjectProperty) NamedProperties() { return *cast(ScriptArray!(OnlineGameSearch.NamedObjectProperty)*)(cast(size_t)cast(void*)this + 184); }
			OnlineGameSearch.OnlineGameSearchQuery FilterQuery() { return *cast(OnlineGameSearch.OnlineGameSearchQuery*)(cast(size_t)cast(void*)this + 196); }
			ScriptString AdditionalSearchCriteria() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 220); }
			int PingBucketSize() { return *cast(int*)(cast(size_t)cast(void*)this + 232); }
		}
		bool bIsLanQuery() { return (*cast(uint*)(cast(size_t)cast(void*)this + 124) & 0x1) != 0; }
		bool bIsLanQuery(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 124) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 124) &= ~0x1; } return val; }
		bool bUsesArbitration() { return (*cast(uint*)(cast(size_t)cast(void*)this + 124) & 0x2) != 0; }
		bool bUsesArbitration(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 124) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 124) &= ~0x2; } return val; }
		bool bIsSearchInProgress() { return (*cast(uint*)(cast(size_t)cast(void*)this + 124) & 0x4) != 0; }
		bool bIsSearchInProgress(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 124) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 124) &= ~0x4; } return val; }
	}
final:
	void SortSearchResults()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SortSearchResults, cast(void*)0, cast(void*)0);
	}
	void SetSkillOverride(int LeaderboardId, ScriptArray!(OnlineSubsystem.UniqueNetId)* Players)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = LeaderboardId;
		*cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)&params[4] = *Players;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSkillOverride, params.ptr, cast(void*)0);
		*Players = *cast(ScriptArray!(OnlineSubsystem.UniqueNetId)*)&params[4];
	}
}
