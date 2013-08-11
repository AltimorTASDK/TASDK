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
public extern(D):
	enum
	{
		ACKINDEXSTART = 600,
		FRIENDLYFIREINDEXSTART = 700,
		GOTYOURBACKINDEXSTART = 800,
		NEEDOURFLAGINDEXSTART = 900,
		SNIPERINDEXINDEXSTART = 1000,
		LOCATIONUPDATEINDEXSTART = 1100,
		INPOSITIONINDEXSTART = 1200,
		ENEMYSTATUSINDEXSTART = 1300,
		KILLEDVEHICLEINDEXSTART = 1400,
		ENEMYFLAGCARRIERINDEXSTART = 1500,
		HOLDINGFLAGINDEXSTART = 1600,
		AREASECUREINDEXSTART = 1700,
		GOTOURFLAGINDEXSTART = 1900,
		NODECONSTRUCTEDINDEXSTART = 2000,
	}
	@property final auto ref
	{
		ScriptArray!(SoundNodeWave) AckSounds() { return *cast(ScriptArray!(SoundNodeWave)*)(cast(size_t)cast(void*)this + 100); }
		ScriptArray!(SoundNodeWave) FriendlyFireSounds() { return *cast(ScriptArray!(SoundNodeWave)*)(cast(size_t)cast(void*)this + 112); }
		ScriptArray!(SoundNodeWave) GotYourBackSounds() { return *cast(ScriptArray!(SoundNodeWave)*)(cast(size_t)cast(void*)this + 124); }
		ScriptArray!(SoundNodeWave) NeedOurFlagSounds() { return *cast(ScriptArray!(SoundNodeWave)*)(cast(size_t)cast(void*)this + 136); }
		ScriptArray!(SoundNodeWave) SniperSounds() { return *cast(ScriptArray!(SoundNodeWave)*)(cast(size_t)cast(void*)this + 148); }
		ScriptArray!(SoundNodeWave) InPositionSounds() { return *cast(ScriptArray!(SoundNodeWave)*)(cast(size_t)cast(void*)this + 160); }
		ScriptArray!(SoundNodeWave) HaveFlagSounds() { return *cast(ScriptArray!(SoundNodeWave)*)(cast(size_t)cast(void*)this + 172); }
		ScriptArray!(SoundNodeWave) AreaSecureSounds() { return *cast(ScriptArray!(SoundNodeWave)*)(cast(size_t)cast(void*)this + 184); }
		int LocationSpeechOffset() { return *cast(int*)(cast(size_t)cast(void*)this + 224); }
		SoundNodeWave GotOurFlagSound() { return *cast(SoundNodeWave*)(cast(size_t)cast(void*)this + 220); }
		SoundNodeWave MidfieldSound() { return *cast(SoundNodeWave*)(cast(size_t)cast(void*)this + 216); }
		SoundNodeWave EnemyFlagCarrierLowSound() { return *cast(SoundNodeWave*)(cast(size_t)cast(void*)this + 212); }
		SoundNodeWave EnemyFlagCarrierHighSound() { return *cast(SoundNodeWave*)(cast(size_t)cast(void*)this + 208); }
		SoundNodeWave EnemyFlagCarrierHereSound() { return *cast(SoundNodeWave*)(cast(size_t)cast(void*)this + 204); }
		SoundNodeWave EnemyFlagCarrierSound() { return *cast(SoundNodeWave*)(cast(size_t)cast(void*)this + 200); }
		SoundNodeWave IncomingSound() { return *cast(SoundNodeWave*)(cast(size_t)cast(void*)this + 196); }
	}
final:
	int GetAckMessageIndex(Controller Sender, PlayerReplicationInfo Recipient, ScriptName MessageType)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(PlayerReplicationInfo*)&params[4] = Recipient;
		*cast(ScriptName*)&params[8] = MessageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50021], params.ptr, cast(void*)0);
		return *cast(int*)&params[16];
	}
	int GetFriendlyFireMessageIndex(Controller Sender, PlayerReplicationInfo Recipient, ScriptName MessageType)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(PlayerReplicationInfo*)&params[4] = Recipient;
		*cast(ScriptName*)&params[8] = MessageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50026], params.ptr, cast(void*)0);
		return *cast(int*)&params[16];
	}
	int GetGotYourBackMessageIndex(Controller Sender, PlayerReplicationInfo Recipient, ScriptName MessageType)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(PlayerReplicationInfo*)&params[4] = Recipient;
		*cast(ScriptName*)&params[8] = MessageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50031], params.ptr, cast(void*)0);
		return *cast(int*)&params[16];
	}
	int GetNeedOurFlagMessageIndex(Controller Sender, PlayerReplicationInfo Recipient, ScriptName MessageType)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(PlayerReplicationInfo*)&params[4] = Recipient;
		*cast(ScriptName*)&params[8] = MessageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50036], params.ptr, cast(void*)0);
		return *cast(int*)&params[16];
	}
	void ClientReceive(PlayerController P, int Switch, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
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
	SoundNodeWave AnnouncementSound(int MessageIndex, UObject OptionalObject, PlayerController PC)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = MessageIndex;
		*cast(UObject*)&params[4] = OptionalObject;
		*cast(PlayerController*)&params[8] = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50047], params.ptr, cast(void*)0);
		return *cast(SoundNodeWave*)&params[12];
	}
	SoundNodeWave EnemySound(PlayerController PC, UObject OptionalObject)
	{
		ubyte params[12];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(UObject*)&params[4] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50055], params.ptr, cast(void*)0);
		return *cast(SoundNodeWave*)&params[8];
	}
	ScriptString GetString(int Switch, bool bPRI1HUD, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
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
	bool AllowVoiceMessage(ScriptName MessageType, UTPlayerController PC, PlayerController Recipient)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = MessageType;
		*cast(UTPlayerController*)&params[8] = PC;
		*cast(PlayerController*)&params[12] = Recipient;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50070], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void SendVoiceMessage(Controller Sender, PlayerReplicationInfo Recipient, ScriptName MessageType, ScriptClass pDamageType)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(PlayerReplicationInfo*)&params[4] = Recipient;
		*cast(ScriptName*)&params[8] = MessageType;
		*cast(ScriptClass*)&params[16] = pDamageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50076], params.ptr, cast(void*)0);
	}
	int GetMessageIndex(Controller Sender, PlayerReplicationInfo Recipient, ScriptName MessageType, ScriptClass pDamageType)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(PlayerReplicationInfo*)&params[4] = Recipient;
		*cast(ScriptName*)&params[8] = MessageType;
		*cast(ScriptClass*)&params[16] = pDamageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50087], params.ptr, cast(void*)0);
		return *cast(int*)&params[20];
	}
	void InitStatusUpdate(Controller Sender, PlayerReplicationInfo Recipient, ScriptName MessageType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(PlayerReplicationInfo*)&params[4] = Recipient;
		*cast(ScriptName*)&params[8] = MessageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50093], params.ptr, cast(void*)0);
	}
	void InitCombatUpdate(Controller Sender, PlayerReplicationInfo Recipient, ScriptName MessageType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(PlayerReplicationInfo*)&params[4] = Recipient;
		*cast(ScriptName*)&params[8] = MessageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50099], params.ptr, cast(void*)0);
	}
	void SetHoldingFlagUpdate(Controller Sender, PlayerReplicationInfo Recipient, ScriptName MessageType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(PlayerReplicationInfo*)&params[4] = Recipient;
		*cast(ScriptName*)&params[8] = MessageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50104], params.ptr, cast(void*)0);
	}
	void SendLocalizedMessage(Controller Sender, PlayerReplicationInfo Recipient, ScriptName MessageType, int MessageIndex, UObject LocationObject)
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
	void SendEnemyFlagCarrierHereUpdate(Controller Sender, PlayerReplicationInfo Recipient, ScriptName MessageType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(PlayerReplicationInfo*)&params[4] = Recipient;
		*cast(ScriptName*)&params[8] = MessageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50117], params.ptr, cast(void*)0);
	}
	void InitSniperUpdate(Controller Sender, PlayerReplicationInfo Recipient, ScriptName MessageType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(PlayerReplicationInfo*)&params[4] = Recipient;
		*cast(ScriptName*)&params[8] = MessageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50126], params.ptr, cast(void*)0);
	}
	void SendEnemyStatusUpdate(Controller Sender, PlayerReplicationInfo Recipient, ScriptName MessageType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(PlayerReplicationInfo*)&params[4] = Recipient;
		*cast(ScriptName*)&params[8] = MessageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50132], params.ptr, cast(void*)0);
	}
	void SendKilledVehicleMessage(Controller Sender, PlayerReplicationInfo Recipient, ScriptName MessageType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(PlayerReplicationInfo*)&params[4] = Recipient;
		*cast(ScriptName*)&params[8] = MessageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50140], params.ptr, cast(void*)0);
	}
	SoundNodeWave KilledVehicleSound(PlayerController PC, UObject OptionalObject)
	{
		ubyte params[12];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(UObject*)&params[4] = OptionalObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50145], params.ptr, cast(void*)0);
		return *cast(SoundNodeWave*)&params[8];
	}
	bool SendLocationUpdate(Controller Sender, PlayerReplicationInfo Recipient, ScriptName MessageType, UTGame G, Pawn StatusPawn, bool bDontSendMidfield)
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
	void SendInPositionMessage(Controller Sender, PlayerReplicationInfo Recipient, ScriptName MessageType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(PlayerReplicationInfo*)&params[4] = Recipient;
		*cast(ScriptName*)&params[8] = MessageType;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50160], params.ptr, cast(void*)0);
	}
	bool ShouldBeRemoved(UTQueuedAnnouncement MyAnnouncement, ScriptClass NewAnnouncementClass, int NewMessageIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTQueuedAnnouncement*)params.ptr = MyAnnouncement;
		*cast(ScriptClass*)&params[4] = NewAnnouncementClass;
		*cast(int*)&params[8] = NewMessageIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[50164], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool AddAnnouncement(UTAnnouncer Announcer, int MessageIndex, PlayerReplicationInfo PRI, UObject OptionalObject)
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
