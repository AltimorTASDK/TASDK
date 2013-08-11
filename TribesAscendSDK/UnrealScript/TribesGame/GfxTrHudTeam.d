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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54270], params.ptr, cast(void*)0);
	}
	GFxObject InitMessageRow()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54272], params.ptr, cast(void*)0);
		return *cast(GFxObject*)params.ptr;
	}
	void ClearStats(bool clearScores)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = clearScores;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54274], params.ptr, cast(void*)0);
	}
	void UpdateGameHUD(UTPlayerReplicationInfo PRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTPlayerReplicationInfo*)params.ptr = PRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54277], params.ptr, cast(void*)0);
	}
	ScriptString GetRank(PlayerReplicationInfo PRI)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = PRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54284], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
}
