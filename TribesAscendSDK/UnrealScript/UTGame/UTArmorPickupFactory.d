module UnrealScript.UTGame.UTArmorPickupFactory;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.UTGame.UTPawn;
import UnrealScript.Engine.Controller;
import UnrealScript.UTGame.UTItemPickupFactory;
import UnrealScript.UTGame.UTHUD;

extern(C++) interface UTArmorPickupFactory : UTItemPickupFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTArmorPickupFactory")()); }
	private static __gshared UTArmorPickupFactory mDefaultProperties;
	@property final static UTArmorPickupFactory DefaultProperties() { mixin(MGDPC!(UTArmorPickupFactory, "UTArmorPickupFactory UTGame.Default__UTArmorPickupFactory")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mUpdateHUD;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mSpawnCopyFor;
			ScriptFunction mCanUseShield;
			ScriptFunction mAddShieldStrength;
			ScriptFunction mBotDesireability;
		}
		public @property static final
		{
			ScriptFunction UpdateHUD() { mixin(MGF!("mUpdateHUD", "Function UTGame.UTArmorPickupFactory.UpdateHUD")()); }
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function UTGame.UTArmorPickupFactory.PostBeginPlay")()); }
			ScriptFunction SpawnCopyFor() { mixin(MGF!("mSpawnCopyFor", "Function UTGame.UTArmorPickupFactory.SpawnCopyFor")()); }
			ScriptFunction CanUseShield() { mixin(MGF!("mCanUseShield", "Function UTGame.UTArmorPickupFactory.CanUseShield")()); }
			ScriptFunction AddShieldStrength() { mixin(MGF!("mAddShieldStrength", "Function UTGame.UTArmorPickupFactory.AddShieldStrength")()); }
			ScriptFunction BotDesireability() { mixin(MGF!("mBotDesireability", "Function UTGame.UTArmorPickupFactory.BotDesireability")()); }
		}
	}
	static struct Pickup
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTArmorPickupFactory.Pickup")()); }
	}
	@property final auto ref int ShieldAmount() { mixin(MGPC!(int, 976)()); }
final:
	static void UpdateHUD(UTHUD H)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTHUD*)params.ptr = H;
		StaticClass.ProcessEvent(Functions.UpdateHUD, params.ptr, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void SpawnCopyFor(Pawn Recipient)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Recipient;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnCopyFor, params.ptr, cast(void*)0);
	}
	int CanUseShield(UTPawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UTPawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanUseShield, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	void AddShieldStrength(UTPawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTPawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddShieldStrength, params.ptr, cast(void*)0);
	}
	float BotDesireability(Pawn Bot, Controller C)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = Bot;
		*cast(Controller*)&params[4] = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.BotDesireability, params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
}
