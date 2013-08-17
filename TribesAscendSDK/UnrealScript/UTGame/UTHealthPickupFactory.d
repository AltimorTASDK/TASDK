module UnrealScript.UTGame.UTHealthPickupFactory;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Controller;
import UnrealScript.UTGame.UTItemPickupFactory;
import UnrealScript.UTGame.UTHUD;

extern(C++) interface UTHealthPickupFactory : UTItemPickupFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTHealthPickupFactory")); }
	private static __gshared UTHealthPickupFactory mDefaultProperties;
	@property final static UTHealthPickupFactory DefaultProperties() { mixin(MGDPC("UTHealthPickupFactory", "UTHealthPickupFactory UTGame.Default__UTHealthPickupFactory")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mUpdateHUD;
			ScriptFunction mSpawnCopyFor;
			ScriptFunction mHealAmount;
			ScriptFunction mBotDesireability;
		}
		public @property static final
		{
			ScriptFunction UpdateHUD() { mixin(MGF("mUpdateHUD", "Function UTGame.UTHealthPickupFactory.UpdateHUD")); }
			ScriptFunction SpawnCopyFor() { mixin(MGF("mSpawnCopyFor", "Function UTGame.UTHealthPickupFactory.SpawnCopyFor")); }
			ScriptFunction HealAmount() { mixin(MGF("mHealAmount", "Function UTGame.UTHealthPickupFactory.HealAmount")); }
			ScriptFunction BotDesireability() { mixin(MGF("mBotDesireability", "Function UTGame.UTHealthPickupFactory.BotDesireability")); }
		}
	}
	static struct Pickup
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State UTGame.UTHealthPickupFactory.Pickup")); }
	}
	@property final
	{
		@property final auto ref int HealingAmount() { mixin(MGPC("int", 976)); }
		bool bSuperHeal() { mixin(MGBPC(980, 0x1)); }
		bool bSuperHeal(bool val) { mixin(MSBPC(980, 0x1)); }
	}
final:
	static void UpdateHUD(UTHUD H)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTHUD*)params.ptr = H;
		StaticClass.ProcessEvent(Functions.UpdateHUD, params.ptr, cast(void*)0);
	}
	void SpawnCopyFor(Pawn Recipient)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Recipient;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnCopyFor, params.ptr, cast(void*)0);
	}
	int HealAmount(Pawn Recipient)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Recipient;
		(cast(ScriptObject)this).ProcessEvent(Functions.HealAmount, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
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
