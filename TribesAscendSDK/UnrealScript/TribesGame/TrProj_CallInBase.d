module UnrealScript.TribesGame.TrProj_CallInBase;

import ScriptClasses;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_CallInBase : TrProjectile
{
public extern(D):
	@property final auto ref Vector r_TargetLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 816); }
final:
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108177], params.ptr, cast(void*)0);
	}
	bool EffectIsRelevant(Vector SpawnLocation, bool bForceDedicated, float VisibleCullDistance, float HiddenCullDistance)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = SpawnLocation;
		*cast(bool*)&params[12] = bForceDedicated;
		*cast(float*)&params[16] = VisibleCullDistance;
		*cast(float*)&params[20] = HiddenCullDistance;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[108179], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
}
