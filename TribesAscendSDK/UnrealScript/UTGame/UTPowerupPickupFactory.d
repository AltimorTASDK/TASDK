module UnrealScript.UTGame.UTPowerupPickupFactory;

import ScriptClasses;
import UnrealScript.UTGame.UTGameReplicationInfo;
import UnrealScript.Engine.Pawn;
import UnrealScript.UTGame.UTPickupFactory;

extern(C++) interface UTPowerupPickupFactory : UTPickupFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTPowerupPickupFactory")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAddWeaponOverlay;
			ScriptFunction mSpawnCopyFor;
		}
		public @property static final
		{
			ScriptFunction AddWeaponOverlay() { return mAddWeaponOverlay ? mAddWeaponOverlay : (mAddWeaponOverlay = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPowerupPickupFactory.AddWeaponOverlay")); }
			ScriptFunction SpawnCopyFor() { return mSpawnCopyFor ? mSpawnCopyFor : (mSpawnCopyFor = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTPowerupPickupFactory.SpawnCopyFor")); }
		}
	}
final:
	void AddWeaponOverlay(UTGameReplicationInfo GRI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTGameReplicationInfo*)params.ptr = GRI;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddWeaponOverlay, params.ptr, cast(void*)0);
	}
	void SpawnCopyFor(Pawn Recipient)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Recipient;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnCopyFor, params.ptr, cast(void*)0);
	}
}
