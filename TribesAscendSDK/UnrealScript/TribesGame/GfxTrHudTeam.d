module UnrealScript.TribesGame.GfxTrHudTeam;

import ScriptClasses;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.UTGame.UTPlayerReplicationInfo;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.TribesGame.GfxTrHud;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GfxTrHudTeam : GfxTrHud
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GfxTrHudTeam")); }
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
			ScriptFunction Init() { return mInit ? mInit : (mInit = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHudTeam.Init")); }
			ScriptFunction InitMessageRow() { return mInitMessageRow ? mInitMessageRow : (mInitMessageRow = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHudTeam.InitMessageRow")); }
			ScriptFunction ClearStats() { return mClearStats ? mClearStats : (mClearStats = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHudTeam.ClearStats")); }
			ScriptFunction UpdateGameHUD() { return mUpdateGameHUD ? mUpdateGameHUD : (mUpdateGameHUD = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHudTeam.UpdateGameHUD")); }
			ScriptFunction GetRank() { return mGetRank ? mGetRank : (mGetRank = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GfxTrHudTeam.GetRank")); }
		}
	}
	@property final auto ref
	{
		GFxObject FlagCarrierTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 3132); }
		GFxObject ScoreTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 3124); }
		GFxObject ScoreBarMC() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 3116); }
	}
final:
	void Init(LocalPlayer pPlayer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = pPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.Init, params.ptr, cast(void*)0);
	}
	GFxObject InitMessageRow()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitMessageRow, params.ptr, cast(void*)0);
		return *cast(GFxObject*)params.ptr;
	}
	void ClearStats(bool clearScores)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = clearScores;
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
