module UnrealScript.UTGame.UTAmmoPickupFactory;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Controller;
import UnrealScript.UTGame.UTItemPickupFactory;
import UnrealScript.UTGame.UTHUD;

extern(C++) interface UTAmmoPickupFactory : UTItemPickupFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTAmmoPickupFactory")()); }
	private static __gshared UTAmmoPickupFactory mDefaultProperties;
	@property final static UTAmmoPickupFactory DefaultProperties() { mixin(MGDPC!(UTAmmoPickupFactory, "UTAmmoPickupFactory UTGame.Default__UTAmmoPickupFactory")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSpawnCopyFor;
			ScriptFunction mUpdateHUD;
			ScriptFunction mBotDesireability;
		}
		public @property static final
		{
			ScriptFunction SpawnCopyFor() { mixin(MGF!("mSpawnCopyFor", "Function UTGame.UTAmmoPickupFactory.SpawnCopyFor")()); }
			ScriptFunction UpdateHUD() { mixin(MGF!("mUpdateHUD", "Function UTGame.UTAmmoPickupFactory.UpdateHUD")()); }
			ScriptFunction BotDesireability() { mixin(MGF!("mBotDesireability", "Function UTGame.UTAmmoPickupFactory.BotDesireability")()); }
		}
	}
	static struct Pickup
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTAmmoPickupFactory.Pickup")()); }
	}
	@property final auto ref
	{
		ScriptClass TargetWeapon() { mixin(MGPC!(ScriptClass, 980)()); }
		int AmmoAmount() { mixin(MGPC!(int, 976)()); }
	}
final:
	void SpawnCopyFor(Pawn Recipient)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Recipient;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnCopyFor, params.ptr, cast(void*)0);
	}
	static void UpdateHUD(UTHUD H)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTHUD*)params.ptr = H;
		StaticClass.ProcessEvent(Functions.UpdateHUD, params.ptr, cast(void*)0);
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
