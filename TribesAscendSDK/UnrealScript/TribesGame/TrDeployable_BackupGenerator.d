module UnrealScript.TribesGame.TrDeployable_BackupGenerator;

import ScriptClasses;
import UnrealScript.TribesGame.TrDeployable;
import UnrealScript.TribesGame.TrGameObjective;

extern(C++) interface TrDeployable_BackupGenerator : TrDeployable
{
	public @property final auto ref TrGameObjective m_PoweredFriend() { return *cast(TrGameObjective*)(cast(size_t)cast(void*)this + 1524); }
	final void DeployComplete()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79904], cast(void*)0, cast(void*)0);
	}
	final bool MainGeneratorIsOnline()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79905], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void PowerNearestFriend()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79909], cast(void*)0, cast(void*)0);
	}
	final void ReleasePoweredFriend()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79914], cast(void*)0, cast(void*)0);
	}
	final void PulseBackupGenerators()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79915], cast(void*)0, cast(void*)0);
	}
	final void AsynchPowerCheck()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79916], cast(void*)0, cast(void*)0);
	}
	final void DoPowerCheck()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79917], cast(void*)0, cast(void*)0);
	}
	final void OnPowerStatusChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79918], cast(void*)0, cast(void*)0);
	}
	final void DoPowerUpdate(TrDeployable dep)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrDeployable*)params.ptr = dep;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79919], params.ptr, cast(void*)0);
	}
	final void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79921], cast(void*)0, cast(void*)0);
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[79922], cast(void*)0, cast(void*)0);
	}
}
