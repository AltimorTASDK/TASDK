module UnrealScript.UTGame.UTVoice;

import ScriptClasses;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Core.UObject;
import UnrealScript.UTGame.UTPlayerController;
import UnrealScript.UTGame.UTAnnouncer;
import UnrealScript.Engine.SoundNodeWave;
import UnrealScript.UTGame.UTGame;
import UnrealScript.UTGame.UTQueuedAnnouncement;

extern(C++) interface UTVoice : UTLocalMessage
{
	public static immutable auto ACKINDEXSTART = 600;
	public static immutable auto FRIENDLYFIREINDEXSTART = 700;
	public static immutable auto GOTYOURBACKINDEXSTART = 800;
	public static immutable auto NEEDOURFLAGINDEXSTART = 900;
	public static immutable auto SNIPERINDEXINDEXSTART = 1000;
	public static immutable auto LOCATIONUPDATEINDEXSTART = 1100;
	public static immutable auto INPOSITIONINDEXSTART = 1200;
	public static immutable auto ENEMYSTATUSINDEXSTART = 1300;
	public static immutable auto KILLEDVEHICLEINDEXSTART = 1400;
	public static immutable auto ENEMYFLAGCARRIERINDEXSTART = 1500;
	public static immutable auto HOLDINGFLAGINDEXSTART = 1600;
	public static immutable auto AREASECUREINDEXSTART = 1700;
	public static immutable auto GOTOURFLAGINDEXSTART = 1900;
	public static immutable auto NODECONSTRUCTEDINDEXSTART = 2000;
	public @property final auto ref ScriptArray!(SoundNodeWave) AckSounds() { return *cast(ScriptArray!(SoundNodeWave)*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref ScriptArray!(SoundNodeWave) FriendlyFireSounds() { return *cast(ScriptArray!(SoundNodeWave)*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref ScriptArray!(SoundNodeWave) GotYourBackSounds() { return *cast(ScriptArray!(SoundNodeWave)*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref ScriptArray!(SoundNodeWave) NeedOurFlagSounds() { return *cast(ScriptArray!(SoundNodeWave)*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref ScriptArray!(SoundNodeWave) SniperSounds() { return *cast(ScriptArray!(SoundNodeWave)*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref ScriptArray!(SoundNodeWave) InPositionSounds() { return *cast(ScriptArray!(SoundNodeWave)*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref ScriptArray!(SoundNodeWave) HaveFlagSounds() { return *cast(ScriptArray!(SoundNodeWave)*)(cast(size_t)cast(void*)this + 172); }
	public @property final auto ref ScriptArray!(SoundNodeWave) AreaSecureSounds() { return *cast(ScriptArray!(SoundNodeWave)*)(cast(size_t)cast(void*)this + 184); }
	public @property final auto ref int LocationSpeechOffset() { return *cast(int*)(cast(size_t)cast(void*)this + 224); }
	public @property final auto ref SoundNodeWave GotOurFlagSound() { return *cast(SoundNodeWave*)(cast(size_t)cast(void*)this + 220); }
	public @property final auto ref SoundNodeWave MidfieldSound() { return *cast(SoundNodeWave*)(cast(size_t)cast(void*)this + 216); }
	public @property final auto ref SoundNodeWave EnemyFlagCarrierLowSound() { return *cast(SoundNodeWave*)(cast(size_t)cast(void*)this + 212); }
	public @property final auto ref SoundNodeWave EnemyFlagCarrierHighSound() { return *cast(SoundNodeWave*)(cast(size_t)cast(void*)this + 208); }
	public @property final auto ref SoundNodeWave EnemyFlagCarrierHereSound() { return *cast(SoundNodeWave*)(cast(size_t)cast(void*)this + 204); }
	public @property final auto ref SoundNodeWave EnemyFlagCarrierSound() { return *cast(SoundNodeWave*)(cast(size_t)cast(void*)this + 200); }
	public @property final auto ref SoundNodeWave IncomingSound() { return *cast(SoundNodeWave*)(cast(size_t)cast(void*)this + 196); }
	final int GetAckMessageIndex(Controller Sender, PlayerReplicationInfo Recipient, ScriptName MessageType)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(PlayerReplicationInfo*)&params[4] = Recipient;
		*cast(ScriptName*)&params[8] = MessageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50021], params.ptr, cast(void*)0);
		return *cast(int*)&params[16];
	}
	final int GetFriendlyFireMessageIndex(Controller Sender, PlayerReplicationInfo Recipient, ScriptName MessageType)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(PlayerReplicationInfo*)&params[4] = Recipient;
		*cast(ScriptName*)&params[8] = MessageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50026], params.ptr, cast(void*)0);
		return *cast(int*)&params[16];
	}
	final int GetGotYourBackMessageIndex(Controller Sender, PlayerReplicationInfo Recipient, ScriptName MessageType)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(PlayerReplicationInfo*)&params[4] = Recipient;
		*cast(ScriptName*)&params[8] = MessageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50031], params.ptr, cast(void*)0);
		return *cast(int*)&params[16];
	}
	final int GetNeedOurFlagMessageIndex(Controller Sender, PlayerReplicationInfo Recipient, ScriptName MessageType)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(PlayerReplicationInfo*)&params[4] = Recipient;
		*cast(ScriptName*)&params[8] = MessageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50036], params.ptr, cast(void*)0);
		return *cast(int*)&params[16];
	}
	final void ClientReceive(PlayerController P, int Switch, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerController*)params.ptr = P;
		*cast(int*)&params[4] = Switch;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[12] = RelatedPRI_2;
		*cast(UObject*)&params[16] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50041], params.ptr, cast(void*)0);
	}
	final SoundNodeWave AnnouncementSound(int MessageIndex, UObject OptionalObject, PlayerController PC)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = MessageIndex;
		*cast(UObject*)&params[4] = OptionalObject;
		*cast(PlayerController*)&params[8] = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50047], params.ptr, cast(void*)0);
		return *cast(SoundNodeWave*)&params[12];
	}
	final SoundNodeWave EnemySound(PlayerController PC, UObject OptionalObject)
	{
		ubyte params[12];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(UObject*)&params[4] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50055], params.ptr, cast(void*)0);
		return *cast(SoundNodeWave*)&params[8];
	}
	final ScriptString GetString(int Switch, bool bPRI1HUD, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		*cast(bool*)&params[4] = bPRI1HUD;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[12] = RelatedPRI_2;
		*cast(UObject*)&params[16] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50063], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[20];
	}
	final bool AllowVoiceMessage(ScriptName MessageType, UTPlayerController PC, PlayerController Recipient)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = MessageType;
		*cast(UTPlayerController*)&params[8] = PC;
		*cast(PlayerController*)&params[12] = Recipient;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50070], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	final void SendVoiceMessage(Controller Sender, PlayerReplicationInfo Recipient, ScriptName MessageType, ScriptClass DamageType)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(PlayerReplicationInfo*)&params[4] = Recipient;
		*cast(ScriptName*)&params[8] = MessageType;
		*cast(ScriptClass*)&params[16] = DamageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50076], params.ptr, cast(void*)0);
	}
	final int GetMessageIndex(Controller Sender, PlayerReplicationInfo Recipient, ScriptName MessageType, ScriptClass DamageType)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(PlayerReplicationInfo*)&params[4] = Recipient;
		*cast(ScriptName*)&params[8] = MessageType;
		*cast(ScriptClass*)&params[16] = DamageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50087], params.ptr, cast(void*)0);
		return *cast(int*)&params[20];
	}
	final void InitStatusUpdate(Controller Sender, PlayerReplicationInfo Recipient, ScriptName MessageType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(PlayerReplicationInfo*)&params[4] = Recipient;
		*cast(ScriptName*)&params[8] = MessageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50093], params.ptr, cast(void*)0);
	}
	final void InitCombatUpdate(Controller Sender, PlayerReplicationInfo Recipient, ScriptName MessageType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(PlayerReplicationInfo*)&params[4] = Recipient;
		*cast(ScriptName*)&params[8] = MessageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50099], params.ptr, cast(void*)0);
	}
	final void SetHoldingFlagUpdate(Controller Sender, PlayerReplicationInfo Recipient, ScriptName MessageType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(PlayerReplicationInfo*)&params[4] = Recipient;
		*cast(ScriptName*)&params[8] = MessageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50104], params.ptr, cast(void*)0);
	}
	final void SendLocalizedMessage(Controller Sender, PlayerReplicationInfo Recipient, ScriptName MessageType, int MessageIndex, UObject LocationObject)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(PlayerReplicationInfo*)&params[4] = Recipient;
		*cast(ScriptName*)&params[8] = MessageType;
		*cast(int*)&params[16] = MessageIndex;
		*cast(UObject*)&params[20] = LocationObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50109], params.ptr, cast(void*)0);
	}
	final void SendEnemyFlagCarrierHereUpdate(Controller Sender, PlayerReplicationInfo Recipient, ScriptName MessageType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(PlayerReplicationInfo*)&params[4] = Recipient;
		*cast(ScriptName*)&params[8] = MessageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50117], params.ptr, cast(void*)0);
	}
	final void InitSniperUpdate(Controller Sender, PlayerReplicationInfo Recipient, ScriptName MessageType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(PlayerReplicationInfo*)&params[4] = Recipient;
		*cast(ScriptName*)&params[8] = MessageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50126], params.ptr, cast(void*)0);
	}
	final void SendEnemyStatusUpdate(Controller Sender, PlayerReplicationInfo Recipient, ScriptName MessageType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(PlayerReplicationInfo*)&params[4] = Recipient;
		*cast(ScriptName*)&params[8] = MessageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50132], params.ptr, cast(void*)0);
	}
	final void SendKilledVehicleMessage(Controller Sender, PlayerReplicationInfo Recipient, ScriptName MessageType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(PlayerReplicationInfo*)&params[4] = Recipient;
		*cast(ScriptName*)&params[8] = MessageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50140], params.ptr, cast(void*)0);
	}
	final SoundNodeWave KilledVehicleSound(PlayerController PC, UObject OptionalObject)
	{
		ubyte params[12];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(UObject*)&params[4] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50145], params.ptr, cast(void*)0);
		return *cast(SoundNodeWave*)&params[8];
	}
	final bool SendLocationUpdate(Controller Sender, PlayerReplicationInfo Recipient, ScriptName MessageType, UTGame G, Pawn StatusPawn, bool bDontSendMidfield)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(PlayerReplicationInfo*)&params[4] = Recipient;
		*cast(ScriptName*)&params[8] = MessageType;
		*cast(UTGame*)&params[16] = G;
		*cast(Pawn*)&params[20] = StatusPawn;
		*cast(bool*)&params[24] = bDontSendMidfield;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50150], params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	final void SendInPositionMessage(Controller Sender, PlayerReplicationInfo Recipient, ScriptName MessageType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(PlayerReplicationInfo*)&params[4] = Recipient;
		*cast(ScriptName*)&params[8] = MessageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50160], params.ptr, cast(void*)0);
	}
	final bool ShouldBeRemoved(UTQueuedAnnouncement MyAnnouncement, ScriptClass NewAnnouncementClass, int NewMessageIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTQueuedAnnouncement*)params.ptr = MyAnnouncement;
		*cast(ScriptClass*)&params[4] = NewAnnouncementClass;
		*cast(int*)&params[8] = NewMessageIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50164], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final bool AddAnnouncement(UTAnnouncer Announcer, int MessageIndex, PlayerReplicationInfo PRI, UObject OptionalObject)
	{
		ubyte params[20];
		params[] = 0;
		*cast(UTAnnouncer*)params.ptr = Announcer;
		*cast(int*)&params[4] = MessageIndex;
		*cast(PlayerReplicationInfo*)&params[8] = PRI;
		*cast(UObject*)&params[12] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50172], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
}
