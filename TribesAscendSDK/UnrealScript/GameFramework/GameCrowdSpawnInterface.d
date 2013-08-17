module UnrealScript.GameFramework.GameCrowdSpawnInterface;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UInterface;
import UnrealScript.GameFramework.SeqAct_GameCrowdSpawner;

extern(C++) interface GameCrowdSpawnInterface : UInterface
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class GameFramework.GameCrowdSpawnInterface")); }
	private static __gshared GameCrowdSpawnInterface mDefaultProperties;
	@property final static GameCrowdSpawnInterface DefaultProperties() { mixin(MGDPC("GameCrowdSpawnInterface", "GameCrowdSpawnInterface GameFramework.Default__GameCrowdSpawnInterface")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetSpawnPosition;
		public @property static final ScriptFunction GetSpawnPosition() { mixin(MGF("mGetSpawnPosition", "Function GameFramework.GameCrowdSpawnInterface.GetSpawnPosition")); }
	}
	final void GetSpawnPosition(SeqAct_GameCrowdSpawner Spawner, ref Vector SpawnPos, ref Rotator SpawnRot)
	{
		ubyte params[28];
		params[] = 0;
		*cast(SeqAct_GameCrowdSpawner*)params.ptr = Spawner;
		*cast(Vector*)&params[4] = SpawnPos;
		*cast(Rotator*)&params[16] = SpawnRot;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSpawnPosition, params.ptr, cast(void*)0);
		SpawnPos = *cast(Vector*)&params[4];
		SpawnRot = *cast(Rotator*)&params[16];
	}
}
