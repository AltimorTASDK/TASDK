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
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTVoice")); }
	private static __gshared UTVoice mDefaultProperties;
	@property final static UTVoice DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTVoice)("UTVoice UTGame.Default__UTVoice")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetAckMessageIndex;
			ScriptFunction mGetFriendlyFireMessageIndex;
			ScriptFunction mGetGotYourBackMessageIndex;
			ScriptFunction mGetNeedOurFlagMessageIndex;
			ScriptFunction mClientReceive;
			ScriptFunction mAnnouncementSound;
			ScriptFunction mEnemySound;
			ScriptFunction mGetString;
			ScriptFunction mAllowVoiceMessage;
			ScriptFunction mSendVoiceMessage;
			ScriptFunction mGetMessageIndex;
			ScriptFunction mInitStatusUpdate;
			ScriptFunction mInitCombatUpdate;
			ScriptFunction mSetHoldingFlagUpdate;
			ScriptFunction mSendLocalizedMessage;
			ScriptFunction mSendEnemyFlagCarrierHereUpdate;
			ScriptFunction mInitSniperUpdate;
			ScriptFunction mSendEnemyStatusUpdate;
			ScriptFunction mSendKilledVehicleMessage;
			ScriptFunction mKilledVehicleSound;
			ScriptFunction mSendLocationUpdate;
			ScriptFunction mSendInPositionMessage;
			ScriptFunction mShouldBeRemoved;
			ScriptFunction mAddAnnouncement;
		}
		public @property static final
		{
			ScriptFunction GetAckMessageIndex() { return mGetAckMessageIndex ? mGetAckMessageIndex : (mGetAckMessageIndex = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVoice.GetAckMessageIndex")); }
			ScriptFunction GetFriendlyFireMessageIndex() { return mGetFriendlyFireMessageIndex ? mGetFriendlyFireMessageIndex : (mGetFriendlyFireMessageIndex = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVoice.GetFriendlyFireMessageIndex")); }
			ScriptFunction GetGotYourBackMessageIndex() { return mGetGotYourBackMessageIndex ? mGetGotYourBackMessageIndex : (mGetGotYourBackMessageIndex = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVoice.GetGotYourBackMessageIndex")); }
			ScriptFunction GetNeedOurFlagMessageIndex() { return mGetNeedOurFlagMessageIndex ? mGetNeedOurFlagMessageIndex : (mGetNeedOurFlagMessageIndex = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVoice.GetNeedOurFlagMessageIndex")); }
			ScriptFunction ClientReceive() { return mClientReceive ? mClientReceive : (mClientReceive = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVoice.ClientReceive")); }
			ScriptFunction AnnouncementSound() { return mAnnouncementSound ? mAnnouncementSound : (mAnnouncementSound = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVoice.AnnouncementSound")); }
			ScriptFunction EnemySound() { return mEnemySound ? mEnemySound : (mEnemySound = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVoice.EnemySound")); }
			ScriptFunction GetString() { return mGetString ? mGetString : (mGetString = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVoice.GetString")); }
			ScriptFunction AllowVoiceMessage() { return mAllowVoiceMessage ? mAllowVoiceMessage : (mAllowVoiceMessage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVoice.AllowVoiceMessage")); }
			ScriptFunction SendVoiceMessage() { return mSendVoiceMessage ? mSendVoiceMessage : (mSendVoiceMessage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVoice.SendVoiceMessage")); }
			ScriptFunction GetMessageIndex() { return mGetMessageIndex ? mGetMessageIndex : (mGetMessageIndex = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVoice.GetMessageIndex")); }
			ScriptFunction InitStatusUpdate() { return mInitStatusUpdate ? mInitStatusUpdate : (mInitStatusUpdate = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVoice.InitStatusUpdate")); }
			ScriptFunction InitCombatUpdate() { return mInitCombatUpdate ? mInitCombatUpdate : (mInitCombatUpdate = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVoice.InitCombatUpdate")); }
			ScriptFunction SetHoldingFlagUpdate() { return mSetHoldingFlagUpdate ? mSetHoldingFlagUpdate : (mSetHoldingFlagUpdate = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVoice.SetHoldingFlagUpdate")); }
			ScriptFunction SendLocalizedMessage() { return mSendLocalizedMessage ? mSendLocalizedMessage : (mSendLocalizedMessage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVoice.SendLocalizedMessage")); }
			ScriptFunction SendEnemyFlagCarrierHereUpdate() { return mSendEnemyFlagCarrierHereUpdate ? mSendEnemyFlagCarrierHereUpdate : (mSendEnemyFlagCarrierHereUpdate = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVoice.SendEnemyFlagCarrierHereUpdate")); }
			ScriptFunction InitSniperUpdate() { return mInitSniperUpdate ? mInitSniperUpdate : (mInitSniperUpdate = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVoice.InitSniperUpdate")); }
			ScriptFunction SendEnemyStatusUpdate() { return mSendEnemyStatusUpdate ? mSendEnemyStatusUpdate : (mSendEnemyStatusUpdate = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVoice.SendEnemyStatusUpdate")); }
			ScriptFunction SendKilledVehicleMessage() { return mSendKilledVehicleMessage ? mSendKilledVehicleMessage : (mSendKilledVehicleMessage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVoice.SendKilledVehicleMessage")); }
			ScriptFunction KilledVehicleSound() { return mKilledVehicleSound ? mKilledVehicleSound : (mKilledVehicleSound = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVoice.KilledVehicleSound")); }
			ScriptFunction SendLocationUpdate() { return mSendLocationUpdate ? mSendLocationUpdate : (mSendLocationUpdate = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVoice.SendLocationUpdate")); }
			ScriptFunction SendInPositionMessage() { return mSendInPositionMessage ? mSendInPositionMessage : (mSendInPositionMessage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVoice.SendInPositionMessage")); }
			ScriptFunction ShouldBeRemoved() { return mShouldBeRemoved ? mShouldBeRemoved : (mShouldBeRemoved = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVoice.ShouldBeRemoved")); }
			ScriptFunction AddAnnouncement() { return mAddAnnouncement ? mAddAnnouncement : (mAddAnnouncement = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTVoice.AddAnnouncement")); }
		}
	}
	static struct Constants
	{
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
	static int GetAckMessageIndex(Controller Sender, PlayerReplicationInfo Recipient, ScriptName MessageType)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(PlayerReplicationInfo*)&params[4] = Recipient;
		*cast(ScriptName*)&params[8] = MessageType;
		StaticClass.ProcessEvent(Functions.GetAckMessageIndex, params.ptr, cast(void*)0);
		return *cast(int*)&params[16];
	}
	static int GetFriendlyFireMessageIndex(Controller Sender, PlayerReplicationInfo Recipient, ScriptName MessageType)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(PlayerReplicationInfo*)&params[4] = Recipient;
		*cast(ScriptName*)&params[8] = MessageType;
		StaticClass.ProcessEvent(Functions.GetFriendlyFireMessageIndex, params.ptr, cast(void*)0);
		return *cast(int*)&params[16];
	}
	static int GetGotYourBackMessageIndex(Controller Sender, PlayerReplicationInfo Recipient, ScriptName MessageType)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(PlayerReplicationInfo*)&params[4] = Recipient;
		*cast(ScriptName*)&params[8] = MessageType;
		StaticClass.ProcessEvent(Functions.GetGotYourBackMessageIndex, params.ptr, cast(void*)0);
		return *cast(int*)&params[16];
	}
	static int GetNeedOurFlagMessageIndex(Controller Sender, PlayerReplicationInfo Recipient, ScriptName MessageType)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(PlayerReplicationInfo*)&params[4] = Recipient;
		*cast(ScriptName*)&params[8] = MessageType;
		StaticClass.ProcessEvent(Functions.GetNeedOurFlagMessageIndex, params.ptr, cast(void*)0);
		return *cast(int*)&params[16];
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
	static SoundNodeWave AnnouncementSound(int MessageIndex, UObject OptionalObject, PlayerController PC)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = MessageIndex;
		*cast(UObject*)&params[4] = OptionalObject;
		*cast(PlayerController*)&params[8] = PC;
		StaticClass.ProcessEvent(Functions.AnnouncementSound, params.ptr, cast(void*)0);
		return *cast(SoundNodeWave*)&params[12];
	}
	static SoundNodeWave EnemySound(PlayerController PC, UObject OptionalObject)
	{
		ubyte params[12];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(UObject*)&params[4] = OptionalObject;
		StaticClass.ProcessEvent(Functions.EnemySound, params.ptr, cast(void*)0);
		return *cast(SoundNodeWave*)&params[8];
	}
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
	static bool AllowVoiceMessage(ScriptName MessageType, UTPlayerController PC, PlayerController Recipient)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = MessageType;
		*cast(UTPlayerController*)&params[8] = PC;
		*cast(PlayerController*)&params[12] = Recipient;
		StaticClass.ProcessEvent(Functions.AllowVoiceMessage, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	static void SendVoiceMessage(Controller Sender, PlayerReplicationInfo Recipient, ScriptName MessageType, ScriptClass pDamageType)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(PlayerReplicationInfo*)&params[4] = Recipient;
		*cast(ScriptName*)&params[8] = MessageType;
		*cast(ScriptClass*)&params[16] = pDamageType;
		StaticClass.ProcessEvent(Functions.SendVoiceMessage, params.ptr, cast(void*)0);
	}
	static int GetMessageIndex(Controller Sender, PlayerReplicationInfo Recipient, ScriptName MessageType, ScriptClass pDamageType)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(PlayerReplicationInfo*)&params[4] = Recipient;
		*cast(ScriptName*)&params[8] = MessageType;
		*cast(ScriptClass*)&params[16] = pDamageType;
		StaticClass.ProcessEvent(Functions.GetMessageIndex, params.ptr, cast(void*)0);
		return *cast(int*)&params[20];
	}
	static void InitStatusUpdate(Controller Sender, PlayerReplicationInfo Recipient, ScriptName MessageType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(PlayerReplicationInfo*)&params[4] = Recipient;
		*cast(ScriptName*)&params[8] = MessageType;
		StaticClass.ProcessEvent(Functions.InitStatusUpdate, params.ptr, cast(void*)0);
	}
	static void InitCombatUpdate(Controller Sender, PlayerReplicationInfo Recipient, ScriptName MessageType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(PlayerReplicationInfo*)&params[4] = Recipient;
		*cast(ScriptName*)&params[8] = MessageType;
		StaticClass.ProcessEvent(Functions.InitCombatUpdate, params.ptr, cast(void*)0);
	}
	static void SetHoldingFlagUpdate(Controller Sender, PlayerReplicationInfo Recipient, ScriptName MessageType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(PlayerReplicationInfo*)&params[4] = Recipient;
		*cast(ScriptName*)&params[8] = MessageType;
		StaticClass.ProcessEvent(Functions.SetHoldingFlagUpdate, params.ptr, cast(void*)0);
	}
	static void SendLocalizedMessage(Controller Sender, PlayerReplicationInfo Recipient, ScriptName MessageType, int MessageIndex, UObject LocationObject)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(PlayerReplicationInfo*)&params[4] = Recipient;
		*cast(ScriptName*)&params[8] = MessageType;
		*cast(int*)&params[16] = MessageIndex;
		*cast(UObject*)&params[20] = LocationObject;
		StaticClass.ProcessEvent(Functions.SendLocalizedMessage, params.ptr, cast(void*)0);
	}
	static void SendEnemyFlagCarrierHereUpdate(Controller Sender, PlayerReplicationInfo Recipient, ScriptName MessageType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(PlayerReplicationInfo*)&params[4] = Recipient;
		*cast(ScriptName*)&params[8] = MessageType;
		StaticClass.ProcessEvent(Functions.SendEnemyFlagCarrierHereUpdate, params.ptr, cast(void*)0);
	}
	static void InitSniperUpdate(Controller Sender, PlayerReplicationInfo Recipient, ScriptName MessageType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(PlayerReplicationInfo*)&params[4] = Recipient;
		*cast(ScriptName*)&params[8] = MessageType;
		StaticClass.ProcessEvent(Functions.InitSniperUpdate, params.ptr, cast(void*)0);
	}
	static void SendEnemyStatusUpdate(Controller Sender, PlayerReplicationInfo Recipient, ScriptName MessageType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(PlayerReplicationInfo*)&params[4] = Recipient;
		*cast(ScriptName*)&params[8] = MessageType;
		StaticClass.ProcessEvent(Functions.SendEnemyStatusUpdate, params.ptr, cast(void*)0);
	}
	static void SendKilledVehicleMessage(Controller Sender, PlayerReplicationInfo Recipient, ScriptName MessageType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(PlayerReplicationInfo*)&params[4] = Recipient;
		*cast(ScriptName*)&params[8] = MessageType;
		StaticClass.ProcessEvent(Functions.SendKilledVehicleMessage, params.ptr, cast(void*)0);
	}
	static SoundNodeWave KilledVehicleSound(PlayerController PC, UObject OptionalObject)
	{
		ubyte params[12];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(UObject*)&params[4] = OptionalObject;
		StaticClass.ProcessEvent(Functions.KilledVehicleSound, params.ptr, cast(void*)0);
		return *cast(SoundNodeWave*)&params[8];
	}
	static bool SendLocationUpdate(Controller Sender, PlayerReplicationInfo Recipient, ScriptName MessageType, UTGame G, Pawn StatusPawn, bool bDontSendMidfield)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(PlayerReplicationInfo*)&params[4] = Recipient;
		*cast(ScriptName*)&params[8] = MessageType;
		*cast(UTGame*)&params[16] = G;
		*cast(Pawn*)&params[20] = StatusPawn;
		*cast(bool*)&params[24] = bDontSendMidfield;
		StaticClass.ProcessEvent(Functions.SendLocationUpdate, params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	static void SendInPositionMessage(Controller Sender, PlayerReplicationInfo Recipient, ScriptName MessageType)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(PlayerReplicationInfo*)&params[4] = Recipient;
		*cast(ScriptName*)&params[8] = MessageType;
		StaticClass.ProcessEvent(Functions.SendInPositionMessage, params.ptr, cast(void*)0);
	}
	static bool ShouldBeRemoved(UTQueuedAnnouncement MyAnnouncement, ScriptClass NewAnnouncementClass, int NewMessageIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(UTQueuedAnnouncement*)params.ptr = MyAnnouncement;
		*cast(ScriptClass*)&params[4] = NewAnnouncementClass;
		*cast(int*)&params[8] = NewMessageIndex;
		StaticClass.ProcessEvent(Functions.ShouldBeRemoved, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	static bool AddAnnouncement(UTAnnouncer Announcer, int MessageIndex, PlayerReplicationInfo PRI, UObject OptionalObject)
	{
		ubyte params[20];
		params[] = 0;
		*cast(UTAnnouncer*)params.ptr = Announcer;
		*cast(int*)&params[4] = MessageIndex;
		*cast(PlayerReplicationInfo*)&params[8] = PRI;
		*cast(UObject*)&params[12] = OptionalObject;
		StaticClass.ProcessEvent(Functions.AddAnnouncement, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
}
