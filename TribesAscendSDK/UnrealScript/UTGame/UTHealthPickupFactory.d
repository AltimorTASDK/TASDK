module UnrealScript.UTGame.UTHealthPickupFactory;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Controller;
import UnrealScript.UTGame.UTItemPickupFactory;
import UnrealScript.UTGame.UTHUD;

extern(C++) interface UTHealthPickupFactory : UTItemPickupFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTHealthPickupFactory")); }
	private static __gshared UTHealthPickupFactory mDefaultProperties;
	@property final static UTHealthPickupFactory DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTHealthPickupFactory)("UTHealthPickupFactory UTGame.Default__UTHealthPickupFactory")); }
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
			ScriptFunction UpdateHUD() { return mUpdateHUD ? mUpdateHUD : (mUpdateHUD = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTHealthPickupFactory.UpdateHUD")); }
			ScriptFunction SpawnCopyFor() { return mSpawnCopyFor ? mSpawnCopyFor : (mSpawnCopyFor = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTHealthPickupFactory.SpawnCopyFor")); }
			ScriptFunction HealAmount() { return mHealAmount ? mHealAmount : (mHealAmount = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTHealthPickupFactory.HealAmount")); }
			ScriptFunction BotDesireability() { return mBotDesireability ? mBotDesireability : (mBotDesireability = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTHealthPickupFactory.BotDesireability")); }
		}
	}
	@property final
	{
		@property final auto ref int HealingAmount() { return *cast(int*)(cast(size_t)cast(void*)this + 976); }
		bool bSuperHeal() { return (*cast(uint*)(cast(size_t)cast(void*)this + 980) & 0x1) != 0; }
		bool bSuperHeal(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 980) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 980) &= ~0x1; } return val; }
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
