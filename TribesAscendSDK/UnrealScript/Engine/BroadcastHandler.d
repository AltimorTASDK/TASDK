module UnrealScript.Engine.BroadcastHandler;

import ScriptClasses;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Info;

extern(C++) interface BroadcastHandler : Info
{
public extern(D):
	@property final
	{
		@property final auto ref int SentText() { return *cast(int*)(cast(size_t)cast(void*)this + 476); }
		bool bMuteSpectators() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x1) != 0; }
		bool bMuteSpectators(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x1; } return val; }
	}
final:
	void UpdateSentText()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12018], cast(void*)0, cast(void*)0);
	}
	bool AllowsBroadcast(Actor broadcaster, int InLen)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Actor*)params.ptr = broadcaster;
		*cast(int*)&params[4] = InLen;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12019], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void BroadcastText(PlayerReplicationInfo SenderPRI, PlayerController Receiver, ScriptString msg, ScriptName Type)
	{
		ubyte params[28];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = SenderPRI;
		*cast(PlayerController*)&params[4] = Receiver;
		*cast(ScriptString*)&params[8] = msg;
		*cast(ScriptName*)&params[20] = Type;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12023], params.ptr, cast(void*)0);
	}
	void BroadcastLocalized(Actor Sender, PlayerController Receiver, ScriptClass Message, int Switch, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Actor*)params.ptr = Sender;
		*cast(PlayerController*)&params[4] = Receiver;
		*cast(ScriptClass*)&params[8] = Message;
		*cast(int*)&params[12] = Switch;
		*cast(PlayerReplicationInfo*)&params[16] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[20] = RelatedPRI_2;
		*cast(UObject*)&params[24] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12028], params.ptr, cast(void*)0);
	}
	void Broadcast(Actor Sender, ScriptString msg, ScriptName Type)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Actor*)params.ptr = Sender;
		*cast(ScriptString*)&params[4] = msg;
		*cast(ScriptName*)&params[16] = Type;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12036], params.ptr, cast(void*)0);
	}
	void BroadcastTeam(Controller Sender, ScriptString msg, ScriptName Type)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(ScriptString*)&params[4] = msg;
		*cast(ScriptName*)&params[16] = Type;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12042], params.ptr, cast(void*)0);
	}
	void AllowBroadcastLocalized(Actor Sender, ScriptClass Message, int Switch, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Actor*)params.ptr = Sender;
		*cast(ScriptClass*)&params[4] = Message;
		*cast(int*)&params[8] = Switch;
		*cast(PlayerReplicationInfo*)&params[12] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[16] = RelatedPRI_2;
		*cast(UObject*)&params[20] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12047], params.ptr, cast(void*)0);
	}
	void AllowBroadcastLocalizedTeam(int TeamIndex, Actor Sender, ScriptClass Message, int Switch, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[28];
		params[] = 0;
		*cast(int*)params.ptr = TeamIndex;
		*cast(Actor*)&params[4] = Sender;
		*cast(ScriptClass*)&params[8] = Message;
		*cast(int*)&params[12] = Switch;
		*cast(PlayerReplicationInfo*)&params[16] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[20] = RelatedPRI_2;
		*cast(UObject*)&params[24] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12055], params.ptr, cast(void*)0);
	}
}
