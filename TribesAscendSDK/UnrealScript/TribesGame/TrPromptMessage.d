module UnrealScript.TribesGame.TrPromptMessage;

import ScriptClasses;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;
import UnrealScript.TribesGame.TrPlayerController;

extern(C++) interface TrPromptMessage : UTLocalMessage
{
	public @property final auto ref ScriptString YourJackalGrenadesHaveBeenDestroyed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 176); }
	public @property final auto ref ScriptString EnterVehicle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref ScriptString ObjectiveUpgradeDeniedMaxLevel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 152); }
	public @property final auto ref ScriptString ObjectiveUpgradeDeniedNoCredits() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref ScriptString KickWarning() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref ScriptString UpgradeObjective() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref ScriptString EquipRepairGun() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref SoundCue UpgradeDeniedSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 100); }
	final ScriptString GetString(int Switch, bool bPRI1HUD, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
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
	final ScriptString FormatText(ScriptString InString, TrPlayerController TrPC)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = InString;
		*cast(TrPlayerController*)&params[12] = TrPC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109465], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[16];
	}
}
