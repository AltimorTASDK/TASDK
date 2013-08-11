module UnrealScript.TribesGame.GFxTrScene_PlayerSummary;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrScene;
import UnrealScript.PlatformCommon.TgPlayerProfile;
import UnrealScript.TribesGame.TrSummaryHelper;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrScene_PlayerSummary : GFxTrScene
{
	public @property final bool bSummaryReady() { return (*cast(uint*)(cast(size_t)cast(void*)this + 228) & 0x4) != 0; }
	public @property final bool bSummaryReady(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 228) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 228) &= ~0x4; } return val; }
	public @property final bool bSummaryTweened() { return (*cast(uint*)(cast(size_t)cast(void*)this + 228) & 0x8) != 0; }
	public @property final bool bSummaryTweened(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 228) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 228) &= ~0x8; } return val; }
	public @property final bool bSummaryXPTweened() { return (*cast(uint*)(cast(size_t)cast(void*)this + 228) & 0x10) != 0; }
	public @property final bool bSummaryXPTweened(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 228) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 228) &= ~0x10; } return val; }
	public @property final bool bFirstWin() { return (*cast(uint*)(cast(size_t)cast(void*)this + 228) & 0x2) != 0; }
	public @property final bool bFirstWin(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 228) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 228) &= ~0x2; } return val; }
	public @property final bool bUseSNS() { return (*cast(uint*)(cast(size_t)cast(void*)this + 228) & 0x1) != 0; }
	public @property final bool bUseSNS(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 228) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 228) &= ~0x1; } return val; }
	public @property final auto ref ScriptArray!(TgPlayerProfile.PropertyPair) AwardData() { return *cast(ScriptArray!(TgPlayerProfile.PropertyPair)*)(cast(size_t)cast(void*)this + 232); }
	public @property final auto ref ScriptArray!(TgPlayerProfile.PropertyPair) accoladeData() { return *cast(ScriptArray!(TgPlayerProfile.PropertyPair)*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref ScriptArray!(TgPlayerProfile.BadgeStruct) EarnedBadges() { return *cast(ScriptArray!(TgPlayerProfile.BadgeStruct)*)(cast(size_t)cast(void*)this + 256); }
	public @property final auto ref TrSummaryHelper SummaryHelper() { return *cast(TrSummaryHelper*)(cast(size_t)cast(void*)this + 268); }
	public @property final auto ref int EarnedBadgeValue() { return *cast(int*)(cast(size_t)cast(void*)this + 224); }
	public @property final auto ref int XPBoost() { return *cast(int*)(cast(size_t)cast(void*)this + 220); }
	public @property final auto ref int XPVIP() { return *cast(int*)(cast(size_t)cast(void*)this + 216); }
	public @property final auto ref int XPPerf() { return *cast(int*)(cast(size_t)cast(void*)this + 212); }
	public @property final auto ref int XPBase() { return *cast(int*)(cast(size_t)cast(void*)this + 208); }
	public @property final auto ref ScriptString PlayerName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 196); }
	public @property final auto ref int RankGained() { return *cast(int*)(cast(size_t)cast(void*)this + 192); }
	public @property final auto ref int RankBase() { return *cast(int*)(cast(size_t)cast(void*)this + 188); }
	public @property final auto ref int TopPlayedClass() { return *cast(int*)(cast(size_t)cast(void*)this + 184); }
	public @property final auto ref int Credits() { return *cast(int*)(cast(size_t)cast(void*)this + 180); }
	public @property final auto ref int Assists() { return *cast(int*)(cast(size_t)cast(void*)this + 176); }
	public @property final auto ref int Deaths() { return *cast(int*)(cast(size_t)cast(void*)this + 172); }
	public @property final auto ref int Kills() { return *cast(int*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref int PlayerID() { return *cast(int*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref GFxObject AccoladeDataList() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref GFxObject AwardDataList() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref GFxObject MiscDataList() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 152); }
	public @property final auto ref int AccoladeDataCount() { return *cast(int*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref int AwardDataCount() { return *cast(int*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref int MiscDataCount() { return *cast(int*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref int SkillClassId() { return *cast(int*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref int AWARD_TIER_SIZE() { return *cast(int*)(cast(size_t)cast(void*)this + 132); }
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63709], cast(void*)0, cast(void*)0);
	}
	final void ClearSummary()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63710], cast(void*)0, cast(void*)0);
	}
	final void ClearEarnedBadgeValue()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63712], cast(void*)0, cast(void*)0);
	}
	final void SummaryReady()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63714], cast(void*)0, cast(void*)0);
	}
	final void LoadXPData(GFxObject List)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = List;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63716], params.ptr, cast(void*)0);
	}
	final void LoadPlayerStatsData(GFxObject List)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = List;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63718], params.ptr, cast(void*)0);
	}
	final void LoadPlayerAccoladeData(GFxObject List)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = List;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63723], params.ptr, cast(void*)0);
	}
	final void LoadPlayerMiscData(GFxObject List)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = List;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63726], params.ptr, cast(void*)0);
	}
	final void AddAward(int AwardId, int val)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = AwardId;
		*cast(int*)&params[4] = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63728], params.ptr, cast(void*)0);
	}
	final void AddBadge(TgPlayerProfile.BadgeStruct Badge)
	{
		ubyte params[52];
		params[] = 0;
		*cast(TgPlayerProfile.BadgeStruct*)params.ptr = Badge;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63734], params.ptr, cast(void*)0);
	}
	final void AddAccolade(int AccoladeId, int val)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = AccoladeId;
		*cast(int*)&params[4] = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63737], params.ptr, cast(void*)0);
	}
	final void AddMiscData()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63742], cast(void*)0, cast(void*)0);
	}
	final int GetFlagGrabCount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63756], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final int GetFlagReturnCount()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[63760], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
