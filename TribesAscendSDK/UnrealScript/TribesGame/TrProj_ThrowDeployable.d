module UnrealScript.TribesGame.TrProj_ThrowDeployable;

import ScriptClasses;
import UnrealScript.TribesGame.TrProj_Mine;
import UnrealScript.TribesGame.TrDeployable;

extern(C++) interface TrProj_ThrowDeployable : TrProj_Mine
{
public extern(D):
	@property final auto ref ScriptClass m_DeployableToSpawn() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 900); }
final:
	TrDeployable SpawnDeployable()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109244], params.ptr, cast(void*)0);
		return *cast(TrDeployable*)params.ptr;
	}
	void DestroyOldestOverLimit()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109246], cast(void*)0, cast(void*)0);
	}
	int GetMaxDeployedLimit()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109253], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void ArmedTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[109257], cast(void*)0, cast(void*)0);
	}
}
