module UnrealScript.Engine.GameMessage;

import ScriptClasses;
import UnrealScript.Engine.LocalMessage;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;

extern(C++) interface GameMessage : LocalMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.GameMessage")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetString;
		public @property static final ScriptFunction GetString() { return mGetString ? mGetString : (mGetString = ScriptObject.Find!(ScriptFunction)("Function Engine.GameMessage.GetString")); }
	}
	@property final auto ref
	{
		ScriptString MaxedOutMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 152); }
		ScriptString SpecEnteredMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 344); }
		ScriptString NewSpecMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 332); }
		ScriptString KickWarning() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 320); }
		ScriptString NewPlayerMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 308); }
		ScriptString BecameSpectator() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 296); }
		ScriptString CantBePlayer() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 284); }
		ScriptString CantBeSpectator() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 272); }
		ScriptString MustHaveStats() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 260); }
		ScriptString VotePassed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 248); }
		ScriptString VoteStarted() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 236); }
		ScriptString NoNameChange() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 224); }
		ScriptString NewTeamMessageTrailer() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 212); }
		ScriptString NewTeamMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 200); }
		ScriptString GlobalNameChange() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 188); }
		ScriptString OvertimeMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 176); }
		ScriptString ArbitrationMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 164); }
		ScriptString EnteredMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 140); }
		ScriptString FailedSpawnMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 128); }
		ScriptString FailedPlaceMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 116); }
		ScriptString FailedTeamMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 104); }
		ScriptString LeftMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 92); }
		ScriptString SwitchLevelMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 80); }
	}
	final static ScriptString GetString(int Switch, bool bPRI1HUD, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		*cast(bool*)&params[4] = bPRI1HUD;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[12] = RelatedPRI_2;
		*cast(UObject*)&params[16] = OptionalObject;
		StaticClass.ProcessEvent(Functions.GetString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[20];
	}
}
