module UnrealScript.UTGame.UTArmorPickupFactory;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.UTGame.UTPawn;
import UnrealScript.Engine.Controller;
import UnrealScript.UTGame.UTItemPickupFactory;
import UnrealScript.UTGame.UTHUD;

extern(C++) interface UTArmorPickupFactory : UTItemPickupFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTArmorPickupFactory")); }
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
			ScriptFunction UpdateHUD() { return mUpdateHUD ? mUpdateHUD : (mUpdateHUD = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTArmorPickupFactory.UpdateHUD")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTArmorPickupFactory.PostBeginPlay")); }
			ScriptFunction SpawnCopyFor() { return mSpawnCopyFor ? mSpawnCopyFor : (mSpawnCopyFor = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTArmorPickupFactory.SpawnCopyFor")); }
			ScriptFunction CanUseShield() { return mCanUseShield ? mCanUseShield : (mCanUseShield = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTArmorPickupFactory.CanUseShield")); }
			ScriptFunction AddShieldStrength() { return mAddShieldStrength ? mAddShieldStrength : (mAddShieldStrength = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTArmorPickupFactory.AddShieldStrength")); }
			ScriptFunction BotDesireability() { return mBotDesireability ? mBotDesireability : (mBotDesireability = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTArmorPickupFactory.BotDesireability")); }
		}
	}
	@property final auto ref int ShieldAmount() { return *cast(int*)(cast(size_t)cast(void*)this + 976); }
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
