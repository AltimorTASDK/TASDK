module UnrealScript.TribesGame.TrVictoryMessage;

import ScriptClasses;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerController;

extern(C++) interface TrVictoryMessage : UTLocalMessage
{
public extern(D):
	@property final auto ref
	{
		ScriptString TrainingComplete() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 228); }
		ScriptString DrawGame() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 216); }
		ScriptString PlayerWonRound() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 204); }
		ScriptString DiamondSwordVictory() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 192); }
		ScriptString BloodEagleVictory() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 180); }
		ScriptString NormalDefeat() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 168); }
		ScriptString NormalVictory() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 156); }
		ScriptString DominantDefeat() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 144); }
		ScriptString DominantVictory() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 132); }
		SoundCue BloodEagleSounds() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 116); }
		SoundCue DiamondSwordSounds() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 100); }
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115507], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115515], params.ptr, cast(void*)0);
	}
}
