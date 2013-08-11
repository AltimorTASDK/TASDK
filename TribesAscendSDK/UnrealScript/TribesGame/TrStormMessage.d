module UnrealScript.TribesGame.TrStormMessage;

import ScriptClasses;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;

extern(C++) interface TrStormMessage : UTLocalMessage
{
	public @property final auto ref ScriptString FriendlyCoreDestroyed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 268); }
	public @property final auto ref ScriptString FriendlyCore25Percent() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 256); }
	public @property final auto ref ScriptString FriendlyCore50Percent() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref ScriptString FriendlyCore75Percent() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 232); }
	public @property final auto ref ScriptString EnemyCoreDestroyed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 220); }
	public @property final auto ref ScriptString EnemyCore25Percent() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 208); }
	public @property final auto ref ScriptString EnemyCore50Percent() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 196); }
	public @property final auto ref ScriptString EnemyCore75Percent() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 184); }
	public @property final auto ref ScriptString EnemyCarrierShieldsDown() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 172); }
	public @property final auto ref ScriptString FriendlyCarrierShieldsDown() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref ScriptString EnemyCarrierShields50Percent() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref ScriptString FriendlyCarrierShields50Percent() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref ScriptString ControlPointTransitioning() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref ScriptString ControlPointLost() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref ScriptString ControlPointWon() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 100); }
	final ScriptString GetString(int Switch, bool bPRI1HUD, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		*cast(bool*)&params[4] = bPRI1HUD;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[12] = RelatedPRI_2;
		*cast(UObject*)&params[16] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112919], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[20];
	}
}
