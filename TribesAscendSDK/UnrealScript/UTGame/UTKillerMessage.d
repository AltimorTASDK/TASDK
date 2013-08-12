module UnrealScript.UTGame.UTKillerMessage;

import ScriptClasses;
import UnrealScript.UTGame.UTWeaponKillMessage;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;

extern(C++) interface UTKillerMessage : UTWeaponKillMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTKillerMessage")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetString;
		public @property static final ScriptFunction GetString() { return mGetString ? mGetString : (mGetString = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTKillerMessage.GetString")); }
	}
	@property final auto ref
	{
		ScriptString OtherKilledTrailer() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 172); }
		ScriptString OtherKilled() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 160); }
		ScriptString OtherKilledPrefix() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 148); }
		ScriptString YouTeamKilledTrailer() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 136); }
		ScriptString YouTeamKilled() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 124); }
		ScriptString YouKilledTrailer() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 112); }
		ScriptString YouKilled() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 100); }
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
