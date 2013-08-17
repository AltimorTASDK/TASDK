module UnrealScript.UTGame.UTItemPickupFactory;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.UTGame.UTPickupFactory;

extern(C++) interface UTItemPickupFactory : UTPickupFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTItemPickupFactory")()); }
	private static __gshared UTItemPickupFactory mDefaultProperties;
	@property final static UTItemPickupFactory DefaultProperties() { mixin(MGDPC!(UTItemPickupFactory, "UTItemPickupFactory UTGame.Default__UTItemPickupFactory")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitializePickup;
			ScriptFunction mGetLocalString;
			ScriptFunction mSpawnCopyFor;
			ScriptFunction mSetRespawn;
			ScriptFunction mGetRespawnTime;
			ScriptFunction mBotDesireability;
		}
		public @property static final
		{
			ScriptFunction InitializePickup() { mixin(MGF!("mInitializePickup", "Function UTGame.UTItemPickupFactory.InitializePickup")()); }
			ScriptFunction GetLocalString() { mixin(MGF!("mGetLocalString", "Function UTGame.UTItemPickupFactory.GetLocalString")()); }
			ScriptFunction SpawnCopyFor() { mixin(MGF!("mSpawnCopyFor", "Function UTGame.UTItemPickupFactory.SpawnCopyFor")()); }
			ScriptFunction SetRespawn() { mixin(MGF!("mSetRespawn", "Function UTGame.UTItemPickupFactory.SetRespawn")()); }
			ScriptFunction GetRespawnTime() { mixin(MGF!("mGetRespawnTime", "Function UTGame.UTItemPickupFactory.GetRespawnTime")()); }
			ScriptFunction BotDesireability() { mixin(MGF!("mBotDesireability", "Function UTGame.UTItemPickupFactory.BotDesireability")()); }
		}
	}
	@property final auto ref
	{
		ScriptString PickupMessage() { mixin(MGPC!("ScriptString", 948)()); }
		ScriptString UseHintMessage() { mixin(MGPC!("ScriptString", 964)()); }
		float RespawnTime() { mixin(MGPC!("float", 960)()); }
		SoundCue PickupSound() { mixin(MGPC!("SoundCue", 944)()); }
	}
final:
	void InitializePickup()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitializePickup, cast(void*)0, cast(void*)0);
	}
	static ScriptString GetLocalString(int* Switch = null, PlayerReplicationInfo* RelatedPRI_1 = null, PlayerReplicationInfo* RelatedPRI_2 = null)
	{
		ubyte params[24];
		params[] = 0;
		if (Switch !is null)
			*cast(int*)params.ptr = *Switch;
		if (RelatedPRI_1 !is null)
			*cast(PlayerReplicationInfo*)&params[4] = *RelatedPRI_1;
		if (RelatedPRI_2 !is null)
			*cast(PlayerReplicationInfo*)&params[8] = *RelatedPRI_2;
		StaticClass.ProcessEvent(Functions.GetLocalString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[12];
	}
	void SpawnCopyFor(Pawn Recipient)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Recipient;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnCopyFor, params.ptr, cast(void*)0);
	}
	void SetRespawn()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetRespawn, cast(void*)0, cast(void*)0);
	}
	float GetRespawnTime()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetRespawnTime, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float BotDesireability(Pawn P, Controller C)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(Controller*)&params[4] = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.BotDesireability, params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
}
