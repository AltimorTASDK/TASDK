module UnrealScript.TribesGame.TrMiscellaneousMessage;

import ScriptClasses;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerController;

extern(C++) interface TrMiscellaneousMessage : UTLocalMessage
{
public extern(D):
	@property final auto ref
	{
		ScriptString EnemyTeamBoughtHerc() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 144); }
		ScriptString OurTeamBoughtHerc() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 132); }
		SoundCue DiamondSwordCloseToLoss() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 128); }
		SoundCue DiamondSwordCloseToWin() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 124); }
		SoundCue BloodEagleCloseToLoss() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 120); }
		SoundCue BloodEagleCloseToWin() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 116); }
		SoundCue FriendDiamondSwordBoughtHerc() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 112); }
		SoundCue FriendBloodEagleBoughtHerc() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 108); }
		SoundCue EnemyDiamondSwordBoughtHerc() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 104); }
		SoundCue EnemyBloodEagleBoughtHerc() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 100); }
	}
final:
	ScriptString GetString(int Switch, bool bPRI1HUD, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		*cast(bool*)&params[4] = bPRI1HUD;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[12] = RelatedPRI_2;
		*cast(UObject*)&params[16] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100185], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[20];
	}
	void ClientReceive(PlayerController P, int Switch, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerController*)params.ptr = P;
		*cast(int*)&params[4] = Switch;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[12] = RelatedPRI_2;
		*cast(UObject*)&params[16] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[100192], params.ptr, cast(void*)0);
	}
}
