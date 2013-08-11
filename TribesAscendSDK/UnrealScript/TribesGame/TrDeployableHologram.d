module UnrealScript.TribesGame.TrDeployableHologram;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.SkeletalMeshActorSpawnable;

extern(C++) interface TrDeployableHologram : SkeletalMeshActorSpawnable
{
public extern(D):
	@property final auto ref
	{
		int m_nOldInvalidDeployReason() { return *cast(int*)(cast(size_t)cast(void*)this + 544); }
		MaterialInstanceConstant m_RuntimeMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 540); }
		MaterialInstanceConstant m_HologramMaterial() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 536); }
	}
final:
	void SetValidDeployableLocation(bool bValidLocation, int InvalidDeployReason)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bValidLocation;
		*cast(int*)&params[4] = InvalidDeployReason;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80496], params.ptr, cast(void*)0);
	}
	void ClearAllMessages()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80500], cast(void*)0, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80502], cast(void*)0, cast(void*)0);
	}
	void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80503], cast(void*)0, cast(void*)0);
	}
	void Init(ScriptClass DeployableClass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = DeployableClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[80504], params.ptr, cast(void*)0);
	}
}
