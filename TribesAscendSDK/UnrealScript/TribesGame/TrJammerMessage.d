module UnrealScript.TribesGame.TrJammerMessage;

import ScriptClasses;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;

extern(C++) interface TrJammerMessage : UTLocalMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrJammerMessage")); }
	private static __gshared TrJammerMessage mDefaultProperties;
	@property final static TrJammerMessage DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrJammerMessage)("TrJammerMessage TribesGame.Default__TrJammerMessage")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetString;
		public @property static final ScriptFunction GetString() { return mGetString ? mGetString : (mGetString = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrJammerMessage.GetString")); }
	}
	@property final auto ref
	{
		ScriptString JammedByEnemyJammerPack() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 148); }
		ScriptString JammingViaOtherDropJammer() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 136); }
		ScriptString JammedByEnemyDropJammer() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 124); }
		ScriptString JammingForOther() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 112); }
		ScriptString JammingViaOther() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 100); }
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
