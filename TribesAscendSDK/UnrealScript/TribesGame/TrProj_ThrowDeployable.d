module UnrealScript.TribesGame.TrProj_ThrowDeployable;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProj_Mine;
import UnrealScript.TribesGame.TrDeployable;

extern(C++) interface TrProj_ThrowDeployable : TrProj_Mine
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_ThrowDeployable")); }
	private static __gshared TrProj_ThrowDeployable mDefaultProperties;
	@property final static TrProj_ThrowDeployable DefaultProperties() { mixin(MGDPC("TrProj_ThrowDeployable", "TrProj_ThrowDeployable TribesGame.Default__TrProj_ThrowDeployable")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSpawnDeployable;
			ScriptFunction mDestroyOldestOverLimit;
			ScriptFunction mGetMaxDeployedLimit;
			ScriptFunction mArmedTimer;
		}
		public @property static final
		{
			ScriptFunction SpawnDeployable() { mixin(MGF("mSpawnDeployable", "Function TribesGame.TrProj_ThrowDeployable.SpawnDeployable")); }
			ScriptFunction DestroyOldestOverLimit() { mixin(MGF("mDestroyOldestOverLimit", "Function TribesGame.TrProj_ThrowDeployable.DestroyOldestOverLimit")); }
			ScriptFunction GetMaxDeployedLimit() { mixin(MGF("mGetMaxDeployedLimit", "Function TribesGame.TrProj_ThrowDeployable.GetMaxDeployedLimit")); }
			ScriptFunction ArmedTimer() { mixin(MGF("mArmedTimer", "Function TribesGame.TrProj_ThrowDeployable.ArmedTimer")); }
		}
	}
	@property final auto ref ScriptClass m_DeployableToSpawn() { mixin(MGPC("ScriptClass", 900)); }
final:
	TrDeployable SpawnDeployable()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnDeployable, params.ptr, cast(void*)0);
		return *cast(TrDeployable*)params.ptr;
	}
	void DestroyOldestOverLimit()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DestroyOldestOverLimit, cast(void*)0, cast(void*)0);
	}
	int GetMaxDeployedLimit()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMaxDeployedLimit, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void ArmedTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ArmedTimer, cast(void*)0, cast(void*)0);
	}
}
