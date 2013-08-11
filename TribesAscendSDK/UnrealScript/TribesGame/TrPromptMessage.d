module UnrealScript.TribesGame.TrPromptMessage;

import ScriptClasses;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;
import UnrealScript.TribesGame.TrPlayerController;

extern(C++) interface TrPromptMessage : UTLocalMessage
{
public extern(D):
	@property final auto ref
	{
		ScriptString YourJackalGrenadesHaveBeenDestroyed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 176); }
		ScriptString EnterVehicle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 164); }
		ScriptString ObjectiveUpgradeDeniedMaxLevel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 152); }
		ScriptString ObjectiveUpgradeDeniedNoCredits() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 140); }
		ScriptString KickWarning() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 128); }
		ScriptString UpgradeObjective() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 116); }
		ScriptString EquipRepairGun() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 104); }
		SoundCue UpgradeDeniedSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 100); }
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74599], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[20];
	}
	ScriptString FormatText(ScriptString InString, TrPlayerController TrPC)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = InString;
		*cast(TrPlayerController*)&params[12] = TrPC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109465], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[16];
	}
}
