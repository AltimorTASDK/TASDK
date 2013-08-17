module UnrealScript.UTGame.UTPowerupPickupFactory;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTGameReplicationInfo;
import UnrealScript.Engine.Pawn;
import UnrealScript.UTGame.UTPickupFactory;

extern(C++) interface UTPowerupPickupFactory : UTPickupFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTPowerupPickupFactory")); }
	private static __gshared UTPowerupPickupFactory mDefaultProperties;
	@property final static UTPowerupPickupFactory DefaultProperties() { mixin(MGDPC("UTPowerupPickupFactory", "UTPowerupPickupFactory UTGame.Default__UTPowerupPickupFactory")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAddWeaponOverlay;
			ScriptFunction mSpawnCopyFor;
		}
		public @property static final
		{
			ScriptFunction AddWeaponOverlay() { mixin(MGF("mAddWeaponOverlay", "Function UTGame.UTPowerupPickupFactory.AddWeaponOverlay")); }
			ScriptFunction SpawnCopyFor() { mixin(MGF("mSpawnCopyFor", "Function UTGame.UTPowerupPickupFactory.SpawnCopyFor")); }
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
