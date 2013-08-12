module UnrealScript.TribesGame.TrProj_ThrowDeployable;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_Mine;
import UnrealScript.TribesGame.TrDeployable;

extern(C++) interface TrProj_ThrowDeployable : TrProj_Mine
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrProj_ThrowDeployable")); }
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
			ScriptFunction SpawnDeployable() { return mSpawnDeployable ? mSpawnDeployable : (mSpawnDeployable = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_ThrowDeployable.SpawnDeployable")); }
			ScriptFunction DestroyOldestOverLimit() { return mDestroyOldestOverLimit ? mDestroyOldestOverLimit : (mDestroyOldestOverLimit = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_ThrowDeployable.DestroyOldestOverLimit")); }
			ScriptFunction GetMaxDeployedLimit() { return mGetMaxDeployedLimit ? mGetMaxDeployedLimit : (mGetMaxDeployedLimit = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_ThrowDeployable.GetMaxDeployedLimit")); }
			ScriptFunction ArmedTimer() { return mArmedTimer ? mArmedTimer : (mArmedTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrProj_ThrowDeployable.ArmedTimer")); }
		}
	}
	@property final auto ref ScriptClass m_DeployableToSpawn() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 900); }
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
