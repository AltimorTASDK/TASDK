module UnrealScript.TribesGame.GFxTrScene_PlayerSummary;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrScene;
import UnrealScript.PlatformCommon.TgPlayerProfile;
import UnrealScript.TribesGame.TrSummaryHelper;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrScene_PlayerSummary : GFxTrScene
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.GFxTrScene_PlayerSummary")()); }
	private static __gshared GFxTrScene_PlayerSummary mDefaultProperties;
	@property final static GFxTrScene_PlayerSummary DefaultProperties() { mixin(MGDPC!(GFxTrScene_PlayerSummary, "GFxTrScene_PlayerSummary TribesGame.Default__GFxTrScene_PlayerSummary")()); }
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
			ScriptFunction Initialize() { mixin(MGF!("mInitialize", "Function TribesGame.GFxTrScene_PlayerSummary.Initialize")()); }
			ScriptFunction ClearSummary() { mixin(MGF!("mClearSummary", "Function TribesGame.GFxTrScene_PlayerSummary.ClearSummary")()); }
			ScriptFunction ClearEarnedBadgeValue() { mixin(MGF!("mClearEarnedBadgeValue", "Function TribesGame.GFxTrScene_PlayerSummary.ClearEarnedBadgeValue")()); }
			ScriptFunction SummaryReady() { mixin(MGF!("mSummaryReady", "Function TribesGame.GFxTrScene_PlayerSummary.SummaryReady")()); }
			ScriptFunction LoadXPData() { mixin(MGF!("mLoadXPData", "Function TribesGame.GFxTrScene_PlayerSummary.LoadXPData")()); }
			ScriptFunction LoadPlayerStatsData() { mixin(MGF!("mLoadPlayerStatsData", "Function TribesGame.GFxTrScene_PlayerSummary.LoadPlayerStatsData")()); }
			ScriptFunction LoadPlayerAccoladeData() { mixin(MGF!("mLoadPlayerAccoladeData", "Function TribesGame.GFxTrScene_PlayerSummary.LoadPlayerAccoladeData")()); }
			ScriptFunction LoadPlayerMiscData() { mixin(MGF!("mLoadPlayerMiscData", "Function TribesGame.GFxTrScene_PlayerSummary.LoadPlayerMiscData")()); }
			ScriptFunction AddAward() { mixin(MGF!("mAddAward", "Function TribesGame.GFxTrScene_PlayerSummary.AddAward")()); }
			ScriptFunction AddBadge() { mixin(MGF!("mAddBadge", "Function TribesGame.GFxTrScene_PlayerSummary.AddBadge")()); }
			ScriptFunction AddAccolade() { mixin(MGF!("mAddAccolade", "Function TribesGame.GFxTrScene_PlayerSummary.AddAccolade")()); }
			ScriptFunction AddMiscData() { mixin(MGF!("mAddMiscData", "Function TribesGame.GFxTrScene_PlayerSummary.AddMiscData")()); }
			ScriptFunction GetFlagGrabCount() { mixin(MGF!("mGetFlagGrabCount", "Function TribesGame.GFxTrScene_PlayerSummary.GetFlagGrabCount")()); }
			ScriptFunction GetFlagReturnCount() { mixin(MGF!("mGetFlagReturnCount", "Function TribesGame.GFxTrScene_PlayerSummary.GetFlagReturnCount")()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(TgPlayerProfile.PropertyPair) AwardData() { mixin(MGPC!("ScriptArray!(TgPlayerProfile.PropertyPair)", 232)()); }
			ScriptArray!(TgPlayerProfile.PropertyPair) accoladeData() { mixin(MGPC!("ScriptArray!(TgPlayerProfile.PropertyPair)", 244)()); }
			ScriptArray!(TgPlayerProfile.BadgeStruct) EarnedBadges() { mixin(MGPC!("ScriptArray!(TgPlayerProfile.BadgeStruct)", 256)()); }
			TrSummaryHelper SummaryHelper() { mixin(MGPC!("TrSummaryHelper", 268)()); }
			int EarnedBadgeValue() { mixin(MGPC!("int", 224)()); }
			int XPBoost() { mixin(MGPC!("int", 220)()); }
			int XPVIP() { mixin(MGPC!("int", 216)()); }
			int XPPerf() { mixin(MGPC!("int", 212)()); }
			int XPBase() { mixin(MGPC!("int", 208)()); }
			ScriptString PlayerName() { mixin(MGPC!("ScriptString", 196)()); }
			int RankGained() { mixin(MGPC!("int", 192)()); }
			int RankBase() { mixin(MGPC!("int", 188)()); }
			int TopPlayedClass() { mixin(MGPC!("int", 184)()); }
			int Credits() { mixin(MGPC!("int", 180)()); }
			int Assists() { mixin(MGPC!("int", 176)()); }
			int Deaths() { mixin(MGPC!("int", 172)()); }
			int Kills() { mixin(MGPC!("int", 168)()); }
			int PlayerID() { mixin(MGPC!("int", 164)()); }
			GFxObject AccoladeDataList() { mixin(MGPC!("GFxObject", 160)()); }
			GFxObject AwardDataList() { mixin(MGPC!("GFxObject", 156)()); }
			GFxObject MiscDataList() { mixin(MGPC!("GFxObject", 152)()); }
			int AccoladeDataCount() { mixin(MGPC!("int", 148)()); }
			int AwardDataCount() { mixin(MGPC!("int", 144)()); }
			int MiscDataCount() { mixin(MGPC!("int", 140)()); }
			int SkillClassId() { mixin(MGPC!("int", 136)()); }
			int AWARD_TIER_SIZE() { mixin(MGPC!("int", 132)()); }
		}
		bool bSummaryReady() { mixin(MGBPC!(228, 0x4)()); }
		bool bSummaryReady(bool val) { mixin(MSBPC!(228, 0x4)()); }
		bool bSummaryTweened() { mixin(MGBPC!(228, 0x8)()); }
		bool bSummaryTweened(bool val) { mixin(MSBPC!(228, 0x8)()); }
		bool bSummaryXPTweened() { mixin(MGBPC!(228, 0x10)()); }
		bool bSummaryXPTweened(bool val) { mixin(MSBPC!(228, 0x10)()); }
		bool bFirstWin() { mixin(MGBPC!(228, 0x2)()); }
		bool bFirstWin(bool val) { mixin(MSBPC!(228, 0x2)()); }
		bool bUseSNS() { mixin(MGBPC!(228, 0x1)()); }
		bool bUseSNS(bool val) { mixin(MSBPC!(228, 0x1)()); }
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
