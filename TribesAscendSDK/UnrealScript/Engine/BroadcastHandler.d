module UnrealScript.Engine.BroadcastHandler;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Info;

extern(C++) interface BroadcastHandler : Info
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.BroadcastHandler")()); }
	private static __gshared BroadcastHandler mDefaultProperties;
	@property final static BroadcastHandler DefaultProperties() { mixin(MGDPC!(BroadcastHandler, "BroadcastHandler Engine.Default__BroadcastHandler")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mUpdateSentText;
			ScriptFunction mAllowsBroadcast;
			ScriptFunction mBroadcastText;
			ScriptFunction mBroadcastLocalized;
			ScriptFunction mBroadcast;
			ScriptFunction mBroadcastTeam;
			ScriptFunction mAllowBroadcastLocalized;
			ScriptFunction mAllowBroadcastLocalizedTeam;
		}
		public @property static final
		{
			ScriptFunction UpdateSentText() { mixin(MGF!("mUpdateSentText", "Function Engine.BroadcastHandler.UpdateSentText")()); }
			ScriptFunction AllowsBroadcast() { mixin(MGF!("mAllowsBroadcast", "Function Engine.BroadcastHandler.AllowsBroadcast")()); }
			ScriptFunction BroadcastText() { mixin(MGF!("mBroadcastText", "Function Engine.BroadcastHandler.BroadcastText")()); }
			ScriptFunction BroadcastLocalized() { mixin(MGF!("mBroadcastLocalized", "Function Engine.BroadcastHandler.BroadcastLocalized")()); }
			ScriptFunction Broadcast() { mixin(MGF!("mBroadcast", "Function Engine.BroadcastHandler.Broadcast")()); }
			ScriptFunction BroadcastTeam() { mixin(MGF!("mBroadcastTeam", "Function Engine.BroadcastHandler.BroadcastTeam")()); }
			ScriptFunction AllowBroadcastLocalized() { mixin(MGF!("mAllowBroadcastLocalized", "Function Engine.BroadcastHandler.AllowBroadcastLocalized")()); }
			ScriptFunction AllowBroadcastLocalizedTeam() { mixin(MGF!("mAllowBroadcastLocalizedTeam", "Function Engine.BroadcastHandler.AllowBroadcastLocalizedTeam")()); }
		}
	}
	@property final
	{
		@property final auto ref int SentText() { mixin(MGPC!("int", 476)()); }
		bool bMuteSpectators() { mixin(MGBPC!(480, 0x1)()); }
		bool bMuteSpectators(bool val) { mixin(MSBPC!(480, 0x1)()); }
	}
final:
	void UpdateSentText()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateSentText, cast(void*)0, cast(void*)0);
	}
	bool AllowsBroadcast(Actor broadcaster, int InLen)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Actor*)params.ptr = broadcaster;
		*cast(int*)&params[4] = InLen;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllowsBroadcast, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void BroadcastText(PlayerReplicationInfo SenderPRI, PlayerController Receiver, ScriptString msg, ScriptName* Type = null)
	{
		ubyte params[28];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = SenderPRI;
		*cast(PlayerController*)&params[4] = Receiver;
		*cast(ScriptString*)&params[8] = msg;
		if (Type !is null)
			*cast(ScriptName*)&params[20] = *Type;
		(cast(ScriptObject)this).ProcessEvent(Functions.BroadcastText, params.ptr, cast(void*)0);
	}
	void BroadcastLocalized(Actor Sender, PlayerController Receiver, ScriptClass Message, int* Switch = null, PlayerReplicationInfo* RelatedPRI_1 = null, PlayerReplicationInfo* RelatedPRI_2 = null, UObject* OptionalObject = null)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Actor*)params.ptr = Sender;
		*cast(PlayerController*)&params[4] = Receiver;
		*cast(ScriptClass*)&params[8] = Message;
		if (Switch !is null)
			*cast(int*)&params[12] = *Switch;
		if (RelatedPRI_1 !is null)
			*cast(PlayerReplicationInfo*)&params[16] = *RelatedPRI_1;
		if (RelatedPRI_2 !is null)
			*cast(PlayerReplicationInfo*)&params[20] = *RelatedPRI_2;
		if (OptionalObject !is null)
			*cast(UObject*)&params[24] = *OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(Functions.BroadcastLocalized, params.ptr, cast(void*)0);
	}
	void Broadcast(Actor Sender, ScriptString msg, ScriptName* Type = null)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Actor*)params.ptr = Sender;
		*cast(ScriptString*)&params[4] = msg;
		if (Type !is null)
			*cast(ScriptName*)&params[16] = *Type;
		(cast(ScriptObject)this).ProcessEvent(Functions.Broadcast, params.ptr, cast(void*)0);
	}
	void BroadcastTeam(Controller Sender, ScriptString msg, ScriptName* Type = null)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(ScriptString*)&params[4] = msg;
		if (Type !is null)
			*cast(ScriptName*)&params[16] = *Type;
		(cast(ScriptObject)this).ProcessEvent(Functions.BroadcastTeam, params.ptr, cast(void*)0);
	}
	void AllowBroadcastLocalized(Actor Sender, ScriptClass Message, int* Switch = null, PlayerReplicationInfo* RelatedPRI_1 = null, PlayerReplicationInfo* RelatedPRI_2 = null, UObject* OptionalObject = null)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Actor*)params.ptr = Sender;
		*cast(ScriptClass*)&params[4] = Message;
		if (Switch !is null)
			*cast(int*)&params[8] = *Switch;
		if (RelatedPRI_1 !is null)
			*cast(PlayerReplicationInfo*)&params[12] = *RelatedPRI_1;
		if (RelatedPRI_2 !is null)
			*cast(PlayerReplicationInfo*)&params[16] = *RelatedPRI_2;
		if (OptionalObject !is null)
			*cast(UObject*)&params[20] = *OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllowBroadcastLocalized, params.ptr, cast(void*)0);
	}
	void AllowBroadcastLocalizedTeam(int TeamIndex, Actor Sender, ScriptClass Message, int* Switch = null, PlayerReplicationInfo* RelatedPRI_1 = null, PlayerReplicationInfo* RelatedPRI_2 = null, UObject* OptionalObject = null)
	{
		ubyte params[28];
		params[] = 0;
		*cast(int*)params.ptr = TeamIndex;
		*cast(Actor*)&params[4] = Sender;
		*cast(ScriptClass*)&params[8] = Message;
		if (Switch !is null)
			*cast(int*)&params[12] = *Switch;
		if (RelatedPRI_1 !is null)
			*cast(PlayerReplicationInfo*)&params[16] = *RelatedPRI_1;
		if (RelatedPRI_2 !is null)
			*cast(PlayerReplicationInfo*)&params[20] = *RelatedPRI_2;
		if (OptionalObject !is null)
			*cast(UObject*)&params[24] = *OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(Functions.AllowBroadcastLocalizedTeam, params.ptr, cast(void*)0);
	}
}
