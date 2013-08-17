module UnrealScript.TribesGame.GfxTrHudTeam;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.UTGame.UTPlayerReplicationInfo;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.TribesGame.GfxTrHud;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GfxTrHudTeam : GfxTrHud
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.GfxTrHudTeam")()); }
	private static __gshared GfxTrHudTeam mDefaultProperties;
	@property final static GfxTrHudTeam DefaultProperties() { mixin(MGDPC!(GfxTrHudTeam, "GfxTrHudTeam TribesGame.Default__GfxTrHudTeam")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInit;
			ScriptFunction mInitMessageRow;
			ScriptFunction mClearStats;
			ScriptFunction mUpdateGameHUD;
			ScriptFunction mGetRank;
		}
		public @property static final
		{
			ScriptFunction Init() { mixin(MGF!("mInit", "Function TribesGame.GfxTrHudTeam.Init")()); }
			ScriptFunction InitMessageRow() { mixin(MGF!("mInitMessageRow", "Function TribesGame.GfxTrHudTeam.InitMessageRow")()); }
			ScriptFunction ClearStats() { mixin(MGF!("mClearStats", "Function TribesGame.GfxTrHudTeam.ClearStats")()); }
			ScriptFunction UpdateGameHUD() { mixin(MGF!("mUpdateGameHUD", "Function TribesGame.GfxTrHudTeam.UpdateGameHUD")()); }
			ScriptFunction GetRank() { mixin(MGF!("mGetRank", "Function TribesGame.GfxTrHudTeam.GetRank")()); }
		}
	}
	@property final auto ref
	{
		GFxObject FlagCarrierTF() { mixin(MGPC!("GFxObject", 3132)()); }
		GFxObject ScoreTF() { mixin(MGPC!("GFxObject", 3124)()); }
		GFxObject ScoreBarMC() { mixin(MGPC!("GFxObject", 3116)()); }
	}
final:
	void Init(LocalPlayer* pPlayer = null)
	{
		ubyte params[4];
		params[] = 0;
		if (pPlayer !is null)
			*cast(LocalPlayer*)params.ptr = *pPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.Init, params.ptr, cast(void*)0);
	}
	GFxObject InitMessageRow()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitMessageRow, params.ptr, cast(void*)0);
		return *cast(GFxObject*)params.ptr;
	}
	void ClearStats(bool* clearScores = null)
	{
		ubyte params[4];
		params[] = 0;
		if (clearScores !is null)
			*cast(bool*)params.ptr = *clearScores;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearStats, params.ptr, cast(void*)0);
	}
	void UpdateGameHUD(UTPlayerReplicationInfo PRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTPlayerReplicationInfo*)params.ptr = PRI;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateGameHUD, params.ptr, cast(void*)0);
	}
	ScriptString GetRank(PlayerReplicationInfo PRI)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = PRI;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetRank, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
}
