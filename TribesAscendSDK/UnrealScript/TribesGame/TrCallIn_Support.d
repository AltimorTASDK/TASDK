module UnrealScript.TribesGame.TrCallIn_Support;

import ScriptClasses;
import UnrealScript.TribesGame.TrCallIn;

extern(C++) interface TrCallIn_Support : TrCallIn
{
public extern(D):
	@property final auto ref
	{
		int MaxDeployedLimit() { return *cast(int*)(cast(size_t)cast(void*)this + 548); }
		ScriptClass ItemInDeliveryPod() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 544); }
	}
final:
	bool FireCompletedCallIn(int CallInOffs, Vector TargetLocation, Vector TargetNormal)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = CallInOffs;
		*cast(Vector*)&params[4] = TargetLocation;
		*cast(Vector*)&params[16] = TargetNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74115], params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	void DestroyOverLimit()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74121], cast(void*)0, cast(void*)0);
	}
}
