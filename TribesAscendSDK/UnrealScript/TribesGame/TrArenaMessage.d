module UnrealScript.TribesGame.TrArenaMessage;

import ScriptClasses;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerController;

extern(C++) interface TrArenaMessage : UTLocalMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrArenaMessage")); }
	private static __gshared TrArenaMessage mDefaultProperties;
	@property final static TrArenaMessage DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrArenaMessage)("TrArenaMessage TribesGame.Default__TrArenaMessage")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetString;
			ScriptFunction mClientReceive;
		}
		public @property static final
		{
			ScriptFunction GetString() { return mGetString ? mGetString : (mGetString = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrArenaMessage.GetString")); }
			ScriptFunction ClientReceive() { return mClientReceive ? mClientReceive : (mClientReceive = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrArenaMessage.ClientReceive")); }
		}
	}
	@property final auto ref
	{
		ScriptString WeLostTheRound() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 196); }
		ScriptString WeWonTheRound() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 184); }
		ScriptString CannotSwitchTeam() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 172); }
		ScriptString NoRespawnsRemain() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 160); }
		ScriptString Fight() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 148); }
		ScriptString YouAreLastManStanding() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 136); }
		ScriptString TeamRespawnsDepleted() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 124); }
		ScriptString FiveTeamRespawnsRemain() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 112); }
		ScriptString TenTeamRespawnsRemain() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 100); }
	}
final:
	static ScriptString GetString(int Switch, bool bPRI1HUD, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
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
	static void ClientReceive(PlayerController P, int Switch, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerController*)params.ptr = P;
		*cast(int*)&params[4] = Switch;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[12] = RelatedPRI_2;
		*cast(UObject*)&params[16] = OptionalObject;
		StaticClass.ProcessEvent(Functions.ClientReceive, params.ptr, cast(void*)0);
	}
}
