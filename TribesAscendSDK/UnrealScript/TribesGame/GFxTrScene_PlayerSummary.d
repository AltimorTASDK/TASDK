module UnrealScript.TribesGame.GFxTrScene_PlayerSummary;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrScene;
import UnrealScript.PlatformCommon.TgPlayerProfile;
import UnrealScript.TribesGame.TrSummaryHelper;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrScene_PlayerSummary : GFxTrScene
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrScene_PlayerSummary")); }
	private static __gshared GFxTrScene_PlayerSummary mDefaultProperties;
	@property final static GFxTrScene_PlayerSummary DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxTrScene_PlayerSummary)("GFxTrScene_PlayerSummary TribesGame.Default__GFxTrScene_PlayerSummary")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitialize;
			ScriptFunction mClearSummary;
			ScriptFunction mClearEarnedBadgeValue;
			ScriptFunction mSummaryReady;
			ScriptFunction mLoadXPData;
			ScriptFunction mLoadPlayerStatsData;
			ScriptFunction mLoadPlayerAccoladeData;
			ScriptFunction mLoadPlayerMiscData;
			ScriptFunction mAddAward;
			ScriptFunction mAddBadge;
			ScriptFunction mAddAccolade;
			ScriptFunction mAddMiscData;
			ScriptFunction mGetFlagGrabCount;
			ScriptFunction mGetFlagReturnCount;
		}
		public @property static final
		{
			ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrScene_PlayerSummary.Initialize")); }
			ScriptFunction ClearSummary() { return mClearSummary ? mClearSummary : (mClearSummary = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrScene_PlayerSummary.ClearSummary")); }
			ScriptFunction ClearEarnedBadgeValue() { return mClearEarnedBadgeValue ? mClearEarnedBadgeValue : (mClearEarnedBadgeValue = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrScene_PlayerSummary.ClearEarnedBadgeValue")); }
			ScriptFunction SummaryReady() { return mSummaryReady ? mSummaryReady : (mSummaryReady = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrScene_PlayerSummary.SummaryReady")); }
			ScriptFunction LoadXPData() { return mLoadXPData ? mLoadXPData : (mLoadXPData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrScene_PlayerSummary.LoadXPData")); }
			ScriptFunction LoadPlayerStatsData() { return mLoadPlayerStatsData ? mLoadPlayerStatsData : (mLoadPlayerStatsData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrScene_PlayerSummary.LoadPlayerStatsData")); }
			ScriptFunction LoadPlayerAccoladeData() { return mLoadPlayerAccoladeData ? mLoadPlayerAccoladeData : (mLoadPlayerAccoladeData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrScene_PlayerSummary.LoadPlayerAccoladeData")); }
			ScriptFunction LoadPlayerMiscData() { return mLoadPlayerMiscData ? mLoadPlayerMiscData : (mLoadPlayerMiscData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrScene_PlayerSummary.LoadPlayerMiscData")); }
			ScriptFunction AddAward() { return mAddAward ? mAddAward : (mAddAward = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrScene_PlayerSummary.AddAward")); }
			ScriptFunction AddBadge() { return mAddBadge ? mAddBadge : (mAddBadge = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrScene_PlayerSummary.AddBadge")); }
			ScriptFunction AddAccolade() { return mAddAccolade ? mAddAccolade : (mAddAccolade = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrScene_PlayerSummary.AddAccolade")); }
			ScriptFunction AddMiscData() { return mAddMiscData ? mAddMiscData : (mAddMiscData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrScene_PlayerSummary.AddMiscData")); }
			ScriptFunction GetFlagGrabCount() { return mGetFlagGrabCount ? mGetFlagGrabCount : (mGetFlagGrabCount = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrScene_PlayerSummary.GetFlagGrabCount")); }
			ScriptFunction GetFlagReturnCount() { return mGetFlagReturnCount ? mGetFlagReturnCount : (mGetFlagReturnCount = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrScene_PlayerSummary.GetFlagReturnCount")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(TgPlayerProfile.PropertyPair) AwardData() { return *cast(ScriptArray!(TgPlayerProfile.PropertyPair)*)(cast(size_t)cast(void*)this + 232); }
			ScriptArray!(TgPlayerProfile.PropertyPair) accoladeData() { return *cast(ScriptArray!(TgPlayerProfile.PropertyPair)*)(cast(size_t)cast(void*)this + 244); }
			ScriptArray!(TgPlayerProfile.BadgeStruct) EarnedBadges() { return *cast(ScriptArray!(TgPlayerProfile.BadgeStruct)*)(cast(size_t)cast(void*)this + 256); }
			TrSummaryHelper SummaryHelper() { return *cast(TrSummaryHelper*)(cast(size_t)cast(void*)this + 268); }
			int EarnedBadgeValue() { return *cast(int*)(cast(size_t)cast(void*)this + 224); }
			int XPBoost() { return *cast(int*)(cast(size_t)cast(void*)this + 220); }
			int XPVIP() { return *cast(int*)(cast(size_t)cast(void*)this + 216); }
			int XPPerf() { return *cast(int*)(cast(size_t)cast(void*)this + 212); }
			int XPBase() { return *cast(int*)(cast(size_t)cast(void*)this + 208); }
			ScriptString PlayerName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 196); }
			int RankGained() { return *cast(int*)(cast(size_t)cast(void*)this + 192); }
			int RankBase() { return *cast(int*)(cast(size_t)cast(void*)this + 188); }
			int TopPlayedClass() { return *cast(int*)(cast(size_t)cast(void*)this + 184); }
			int Credits() { return *cast(int*)(cast(size_t)cast(void*)this + 180); }
			int Assists() { return *cast(int*)(cast(size_t)cast(void*)this + 176); }
			int Deaths() { return *cast(int*)(cast(size_t)cast(void*)this + 172); }
			int Kills() { return *cast(int*)(cast(size_t)cast(void*)this + 168); }
			int PlayerID() { return *cast(int*)(cast(size_t)cast(void*)this + 164); }
			GFxObject AccoladeDataList() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 160); }
			GFxObject AwardDataList() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 156); }
			GFxObject MiscDataList() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 152); }
			int AccoladeDataCount() { return *cast(int*)(cast(size_t)cast(void*)this + 148); }
			int AwardDataCount() { return *cast(int*)(cast(size_t)cast(void*)this + 144); }
			int MiscDataCount() { return *cast(int*)(cast(size_t)cast(void*)this + 140); }
			int SkillClassId() { return *cast(int*)(cast(size_t)cast(void*)this + 136); }
			int AWARD_TIER_SIZE() { return *cast(int*)(cast(size_t)cast(void*)this + 132); }
		}
		bool bSummaryReady() { return (*cast(uint*)(cast(size_t)cast(void*)this + 228) & 0x4) != 0; }
		bool bSummaryReady(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 228) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 228) &= ~0x4; } return val; }
		bool bSummaryTweened() { return (*cast(uint*)(cast(size_t)cast(void*)this + 228) & 0x8) != 0; }
		bool bSummaryTweened(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 228) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 228) &= ~0x8; } return val; }
		bool bSummaryXPTweened() { return (*cast(uint*)(cast(size_t)cast(void*)this + 228) & 0x10) != 0; }
		bool bSummaryXPTweened(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 228) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 228) &= ~0x10; } return val; }
		bool bFirstWin() { return (*cast(uint*)(cast(size_t)cast(void*)this + 228) & 0x2) != 0; }
		bool bFirstWin(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 228) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 228) &= ~0x2; } return val; }
		bool bUseSNS() { return (*cast(uint*)(cast(size_t)cast(void*)this + 228) & 0x1) != 0; }
		bool bUseSNS(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 228) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 228) &= ~0x1; } return val; }
	}
final:
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
	void ClearSummary()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearSummary, cast(void*)0, cast(void*)0);
	}
	void ClearEarnedBadgeValue()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearEarnedBadgeValue, cast(void*)0, cast(void*)0);
	}
	void SummaryReady()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SummaryReady, cast(void*)0, cast(void*)0);
	}
	void LoadXPData(GFxObject List)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = List;
		(cast(ScriptObject)this).ProcessEvent(Functions.LoadXPData, params.ptr, cast(void*)0);
	}
	void LoadPlayerStatsData(GFxObject List)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = List;
		(cast(ScriptObject)this).ProcessEvent(Functions.LoadPlayerStatsData, params.ptr, cast(void*)0);
	}
	void LoadPlayerAccoladeData(GFxObject List)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = List;
		(cast(ScriptObject)this).ProcessEvent(Functions.LoadPlayerAccoladeData, params.ptr, cast(void*)0);
	}
	void LoadPlayerMiscData(GFxObject List)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = List;
		(cast(ScriptObject)this).ProcessEvent(Functions.LoadPlayerMiscData, params.ptr, cast(void*)0);
	}
	void AddAward(int AwardId, int val)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = AwardId;
		*cast(int*)&params[4] = val;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddAward, params.ptr, cast(void*)0);
	}
	void AddBadge(TgPlayerProfile.BadgeStruct Badge)
	{
		ubyte params[52];
		params[] = 0;
		*cast(TgPlayerProfile.BadgeStruct*)params.ptr = Badge;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddBadge, params.ptr, cast(void*)0);
	}
	void AddAccolade(int AccoladeId, int val)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = AccoladeId;
		*cast(int*)&params[4] = val;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddAccolade, params.ptr, cast(void*)0);
	}
	void AddMiscData()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.AddMiscData, cast(void*)0, cast(void*)0);
	}
	int GetFlagGrabCount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFlagGrabCount, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	int GetFlagReturnCount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFlagReturnCount, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
