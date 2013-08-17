module UnrealScript.UTGame.UTVoice;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTVoice")()); }
	private static __gshared UTVoice mDefaultProperties;
	@property final static UTVoice DefaultProperties() { mixin(MGDPC!(UTVoice, "UTVoice UTGame.Default__UTVoice")()); }
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
			ScriptFunction GetAckMessageIndex() { mixin(MGF!("mGetAckMessageIndex", "Function UTGame.UTVoice.GetAckMessageIndex")()); }
			ScriptFunction GetFriendlyFireMessageIndex() { mixin(MGF!("mGetFriendlyFireMessageIndex", "Function UTGame.UTVoice.GetFriendlyFireMessageIndex")()); }
			ScriptFunction GetGotYourBackMessageIndex() { mixin(MGF!("mGetGotYourBackMessageIndex", "Function UTGame.UTVoice.GetGotYourBackMessageIndex")()); }
			ScriptFunction GetNeedOurFlagMessageIndex() { mixin(MGF!("mGetNeedOurFlagMessageIndex", "Function UTGame.UTVoice.GetNeedOurFlagMessageIndex")()); }
			ScriptFunction ClientReceive() { mixin(MGF!("mClientReceive", "Function UTGame.UTVoice.ClientReceive")()); }
			ScriptFunction AnnouncementSound() { mixin(MGF!("mAnnouncementSound", "Function UTGame.UTVoice.AnnouncementSound")()); }
			ScriptFunction EnemySound() { mixin(MGF!("mEnemySound", "Function UTGame.UTVoice.EnemySound")()); }
			ScriptFunction GetString() { mixin(MGF!("mGetString", "Function UTGame.UTVoice.GetString")()); }
			ScriptFunction AllowVoiceMessage() { mixin(MGF!("mAllowVoiceMessage", "Function UTGame.UTVoice.AllowVoiceMessage")()); }
			ScriptFunction SendVoiceMessage() { mixin(MGF!("mSendVoiceMessage", "Function UTGame.UTVoice.SendVoiceMessage")()); }
			ScriptFunction GetMessageIndex() { mixin(MGF!("mGetMessageIndex", "Function UTGame.UTVoice.GetMessageIndex")()); }
			ScriptFunction InitStatusUpdate() { mixin(MGF!("mInitStatusUpdate", "Function UTGame.UTVoice.InitStatusUpdate")()); }
			ScriptFunction InitCombatUpdate() { mixin(MGF!("mInitCombatUpdate", "Function UTGame.UTVoice.InitCombatUpdate")()); }
			ScriptFunction SetHoldingFlagUpdate() { mixin(MGF!("mSetHoldingFlagUpdate", "Function UTGame.UTVoice.SetHoldingFlagUpdate")()); }
			ScriptFunction SendLocalizedMessage() { mixin(MGF!("mSendLocalizedMessage", "Function UTGame.UTVoice.SendLocalizedMessage")()); }
			ScriptFunction SendEnemyFlagCarrierHereUpdate() { mixin(MGF!("mSendEnemyFlagCarrierHereUpdate", "Function UTGame.UTVoice.SendEnemyFlagCarrierHereUpdate")()); }
			ScriptFunction InitSniperUpdate() { mixin(MGF!("mInitSniperUpdate", "Function UTGame.UTVoice.InitSniperUpdate")()); }
			ScriptFunction SendEnemyStatusUpdate() { mixin(MGF!("mSendEnemyStatusUpdate", "Function UTGame.UTVoice.SendEnemyStatusUpdate")()); }
			ScriptFunction SendKilledVehicleMessage() { mixin(MGF!("mSendKilledVehicleMessage", "Function UTGame.UTVoice.SendKilledVehicleMessage")()); }
			ScriptFunction KilledVehicleSound() { mixin(MGF!("mKilledVehicleSound", "Function UTGame.UTVoice.KilledVehicleSound")()); }
			ScriptFunction SendLocationUpdate() { mixin(MGF!("mSendLocationUpdate", "Function UTGame.UTVoice.SendLocationUpdate")()); }
			ScriptFunction SendInPositionMessage() { mixin(MGF!("mSendInPositionMessage", "Function UTGame.UTVoice.SendInPositionMessage")()); }
			ScriptFunction ShouldBeRemoved() { mixin(MGF!("mShouldBeRemoved", "Function UTGame.UTVoice.ShouldBeRemoved")()); }
			ScriptFunction AddAnnouncement() { mixin(MGF!("mAddAnnouncement", "Function UTGame.UTVoice.AddAnnouncement")()); }
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
		ScriptArray!(SoundNodeWave) AckSounds() { mixin(MGPC!("ScriptArray!(SoundNodeWave)", 100)()); }
		ScriptArray!(SoundNodeWave) FriendlyFireSounds() { mixin(MGPC!("ScriptArray!(SoundNodeWave)", 112)()); }
		ScriptArray!(SoundNodeWave) GotYourBackSounds() { mixin(MGPC!("ScriptArray!(SoundNodeWave)", 124)()); }
		ScriptArray!(SoundNodeWave) NeedOurFlagSounds() { mixin(MGPC!("ScriptArray!(SoundNodeWave)", 136)()); }
		ScriptArray!(SoundNodeWave) SniperSounds() { mixin(MGPC!("ScriptArray!(SoundNodeWave)", 148)()); }
		ScriptArray!(SoundNodeWave) InPositionSounds() { mixin(MGPC!("ScriptArray!(SoundNodeWave)", 160)()); }
		ScriptArray!(SoundNodeWave) HaveFlagSounds() { mixin(MGPC!("ScriptArray!(SoundNodeWave)", 172)()); }
		ScriptArray!(SoundNodeWave) AreaSecureSounds() { mixin(MGPC!("ScriptArray!(SoundNodeWave)", 184)()); }
		int LocationSpeechOffset() { mixin(MGPC!("int", 224)()); }
		SoundNodeWave GotOurFlagSound() { mixin(MGPC!("SoundNodeWave", 220)()); }
		SoundNodeWave MidfieldSound() { mixin(MGPC!("SoundNodeWave", 216)()); }
		SoundNodeWave EnemyFlagCarrierLowSound() { mixin(MGPC!("SoundNodeWave", 212)()); }
		SoundNodeWave EnemyFlagCarrierHighSound() { mixin(MGPC!("SoundNodeWave", 208)()); }
		SoundNodeWave EnemyFlagCarrierHereSound() { mixin(MGPC!("SoundNodeWave", 204)()); }
		SoundNodeWave EnemyFlagCarrierSound() { mixin(MGPC!("SoundNodeWave", 200)()); }
		SoundNodeWave IncomingSound() { mixin(MGPC!("SoundNodeWave", 196)()); }
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
	static void ClientReceive(PlayerController P, int* Switch = null, PlayerReplicationInfo* RelatedPRI_1 = null, PlayerReplicationInfo* RelatedPRI_2 = null, UObject* OptionalObject = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PlayerController*)params.ptr = P;
		if (Switch !is null)
			*cast(int*)&params[4] = *Switch;
		if (RelatedPRI_1 !is null)
			*cast(PlayerReplicationInfo*)&params[8] = *RelatedPRI_1;
		if (RelatedPRI_2 !is null)
			*cast(PlayerReplicationInfo*)&params[12] = *RelatedPRI_2;
		if (OptionalObject !is null)
			*cast(UObject*)&params[16] = *OptionalObject;
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
	static ScriptString GetString(int* Switch = null, bool* bPRI1HUD = null, PlayerReplicationInfo* RelatedPRI_1 = null, PlayerReplicationInfo* RelatedPRI_2 = null, UObject* OptionalObject = null)
	{
		ubyte params[32];
		params[] = 0;
		if (Switch !is null)
			*cast(int*)params.ptr = *Switch;
		if (bPRI1HUD !is null)
			*cast(bool*)&params[4] = *bPRI1HUD;
		if (RelatedPRI_1 !is null)
			*cast(PlayerReplicationInfo*)&params[8] = *RelatedPRI_1;
		if (RelatedPRI_2 !is null)
			*cast(PlayerReplicationInfo*)&params[12] = *RelatedPRI_2;
		if (OptionalObject !is null)
			*cast(UObject*)&params[16] = *OptionalObject;
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
	static void SendLocalizedMessage(Controller Sender, PlayerReplicationInfo Recipient, ScriptName MessageType, int MessageIndex, UObject* LocationObject = null)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(PlayerReplicationInfo*)&params[4] = Recipient;
		*cast(ScriptName*)&params[8] = MessageType;
		*cast(int*)&params[16] = MessageIndex;
		if (LocationObject !is null)
			*cast(UObject*)&params[20] = *LocationObject;
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
	static bool SendLocationUpdate(Controller Sender, PlayerReplicationInfo Recipient, ScriptName MessageType, UTGame G, Pawn StatusPawn, bool* bDontSendMidfield = null)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Controller*)params.ptr = Sender;
		*cast(PlayerReplicationInfo*)&params[4] = Recipient;
		*cast(ScriptName*)&params[8] = MessageType;
		*cast(UTGame*)&params[16] = G;
		*cast(Pawn*)&params[20] = StatusPawn;
		if (bDontSendMidfield !is null)
			*cast(bool*)&params[24] = *bDontSendMidfield;
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
	static bool AddAnnouncement(UTAnnouncer Announcer, int MessageIndex, PlayerReplicationInfo* PRI = null, UObject* OptionalObject = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(UTAnnouncer*)params.ptr = Announcer;
		*cast(int*)&params[4] = MessageIndex;
		if (PRI !is null)
			*cast(PlayerReplicationInfo*)&params[8] = *PRI;
		if (OptionalObject !is null)
			*cast(UObject*)&params[12] = *OptionalObject;
		StaticClass.ProcessEvent(Functions.AddAnnouncement, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
}
