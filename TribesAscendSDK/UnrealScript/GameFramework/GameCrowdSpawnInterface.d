module UnrealScript.GameFramework.GameCrowdSpawnInterface;

import ScriptClasses;
import UnrealScript.Core.UInterface;
import UnrealScript.GameFramework.SeqAct_GameCrowdSpawner;

extern(C++) interface GameCrowdSpawnInterface : UInterface
{
	final void GetSpawnPosition(SeqAct_GameCrowdSpawner Spawner, Vector* SpawnPos, Rotator* SpawnRot)
	{
		ubyte params[28];
		params[] = 0;
		*cast(SeqAct_GameCrowdSpawner*)params.ptr = Spawner;
		*cast(Vector*)&params[4] = *SpawnPos;
		*cast(Rotator*)&params[16] = *SpawnRot;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31518], params.ptr, cast(void*)0);
		*SpawnPos = *cast(Vector*)&params[4];
		*SpawnRot = *cast(Rotator*)&params[16];
	}
}
