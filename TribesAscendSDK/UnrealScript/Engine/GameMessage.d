module UnrealScript.Engine.GameMessage;

import ScriptClasses;
import UnrealScript.Engine.LocalMessage;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;

extern(C++) interface GameMessage : LocalMessage
{
	public @property final auto ref ScriptString MaxedOutMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 152); }
	public @property final auto ref ScriptString SpecEnteredMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 344); }
	public @property final auto ref ScriptString NewSpecMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 332); }
	public @property final auto ref ScriptString KickWarning() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 320); }
	public @property final auto ref ScriptString NewPlayerMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 308); }
	public @property final auto ref ScriptString BecameSpectator() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 296); }
	public @property final auto ref ScriptString CantBePlayer() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 284); }
	public @property final auto ref ScriptString CantBeSpectator() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 272); }
	public @property final auto ref ScriptString MustHaveStats() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 260); }
	public @property final auto ref ScriptString VotePassed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 248); }
	public @property final auto ref ScriptString VoteStarted() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 236); }
	public @property final auto ref ScriptString NoNameChange() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 224); }
	public @property final auto ref ScriptString NewTeamMessageTrailer() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 212); }
	public @property final auto ref ScriptString NewTeamMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 200); }
	public @property final auto ref ScriptString GlobalNameChange() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 188); }
	public @property final auto ref ScriptString OvertimeMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 176); }
	public @property final auto ref ScriptString ArbitrationMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref ScriptString EnteredMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref ScriptString FailedSpawnMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref ScriptString FailedPlaceMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref ScriptString FailedTeamMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref ScriptString LeftMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref ScriptString SwitchLevelMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 80); }
	final ScriptString GetString(int Switch, bool bPRI1HUD, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		*cast(bool*)&params[4] = bPRI1HUD;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[12] = RelatedPRI_2;
		*cast(UObject*)&params[16] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17462], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[20];
	}
}
