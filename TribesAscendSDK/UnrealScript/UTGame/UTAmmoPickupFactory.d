module UnrealScript.UTGame.UTAmmoPickupFactory;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Controller;
import UnrealScript.UTGame.UTItemPickupFactory;
import UnrealScript.UTGame.UTHUD;

extern(C++) interface UTAmmoPickupFactory : UTItemPickupFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTAmmoPickupFactory")); }
	private static __gshared UTAmmoPickupFactory mDefaultProperties;
	@property final static UTAmmoPickupFactory DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTAmmoPickupFactory)("UTAmmoPickupFactory UTGame.Default__UTAmmoPickupFactory")); }
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
			ScriptFunction SpawnCopyFor() { return mSpawnCopyFor ? mSpawnCopyFor : (mSpawnCopyFor = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTAmmoPickupFactory.SpawnCopyFor")); }
			ScriptFunction UpdateHUD() { return mUpdateHUD ? mUpdateHUD : (mUpdateHUD = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTAmmoPickupFactory.UpdateHUD")); }
			ScriptFunction BotDesireability() { return mBotDesireability ? mBotDesireability : (mBotDesireability = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTAmmoPickupFactory.BotDesireability")); }
		}
	}
	@property final auto ref
	{
		ScriptClass TargetWeapon() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 980); }
		int AmmoAmount() { return *cast(int*)(cast(size_t)cast(void*)this + 976); }
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
