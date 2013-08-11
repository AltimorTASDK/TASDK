module UnrealScript.TribesGame.TrCallIn;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrPlayerController;

extern(C++) interface TrCallIn : Actor
{
	public @property final auto ref TrPlayerController OwningController() { return *cast(TrPlayerController*)(cast(size_t)cast(void*)this + 540); }
	public @property final auto ref ScriptClass ExtentTemplateClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 536); }
	public @property final bool IsInProgress() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x4) != 0; }
	public @property final bool IsInProgress(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x4; } return val; }
	public @property final bool PendingDelete() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x2) != 0; }
	public @property final bool PendingDelete(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x2; } return val; }
	public @property final bool CheckExtentsOnSpawn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x1) != 0; }
	public @property final bool CheckExtentsOnSpawn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x1; } return val; }
	public @property final auto ref float VehicleDist() { return *cast(float*)(cast(size_t)cast(void*)this + 528); }
	public @property final auto ref float GameObjectiveDist() { return *cast(float*)(cast(size_t)cast(void*)this + 524); }
	public @property final auto ref float FlagStationDist() { return *cast(float*)(cast(size_t)cast(void*)this + 520); }
	public @property final auto ref ScriptString DisplayName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 508); }
	public @property final auto ref MaterialInstanceConstant MICDisplay() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 504); }
	public @property final auto ref int CreditCost() { return *cast(int*)(cast(size_t)cast(void*)this + 500); }
	public @property final auto ref float DegreeOfMovement() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
	public @property final auto ref float CooldownTime() { return *cast(float*)(cast(size_t)cast(void*)this + 492); }
	public @property final auto ref float CallTime() { return *cast(float*)(cast(size_t)cast(void*)this + 488); }
	public @property final auto ref float BuildupTime() { return *cast(float*)(cast(size_t)cast(void*)this + 484); }
	public @property final auto ref int DatabaseId() { return *cast(int*)(cast(size_t)cast(void*)this + 480); }
	public @property final auto ref TrObject.ETrPlayerCallIns CallInId() { return *cast(TrObject.ETrPlayerCallIns*)(cast(size_t)cast(void*)this + 476); }
	final void Initialize(int NewPrice, int NewBuildup, int NewCooldown)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = NewPrice;
		*cast(int*)&params[4] = NewBuildup;
		*cast(int*)&params[8] = NewCooldown;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73958], params.ptr, cast(void*)0);
	}
	final int GetCreditCost()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73962], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	final bool VerifyCredits()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73964], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool VerifyPower()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73966], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final bool FireCompletedCallIn(int CallInOffs, Vector TargetLocation, Vector TargetNormal)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = CallInOffs;
		*cast(Vector*)&params[4] = TargetLocation;
		*cast(Vector*)&params[16] = TargetNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73971], params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	final void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73979], params.ptr, cast(void*)0);
	}
}
