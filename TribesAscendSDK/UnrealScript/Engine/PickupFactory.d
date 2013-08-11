module UnrealScript.Engine.PickupFactory;

import ScriptClasses;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.Pawn;

extern(C++) interface PickupFactory : NavigationPoint
{
	public @property final auto ref PickupFactory OriginalFactory() { return *cast(PickupFactory*)(cast(size_t)cast(void*)this + 716); }
	public @property final auto ref PickupFactory ReplacementFactory() { return *cast(PickupFactory*)(cast(size_t)cast(void*)this + 712); }
	public @property final auto ref float MaxDesireability() { return *cast(float*)(cast(size_t)cast(void*)this + 704); }
	public @property final auto ref float RespawnEffectTime() { return *cast(float*)(cast(size_t)cast(void*)this + 700); }
	public @property final auto ref ScriptClass InventoryType() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 696); }
	public @property final bool bRespawnPaused() { return (*cast(uint*)(cast(size_t)cast(void*)this + 692) & 0x10) != 0; }
	public @property final bool bRespawnPaused(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 692) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 692) &= ~0x10; } return val; }
	public @property final bool bIsSuperItem() { return (*cast(uint*)(cast(size_t)cast(void*)this + 692) & 0x8) != 0; }
	public @property final bool bIsSuperItem(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 692) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 692) &= ~0x8; } return val; }
	public @property final bool bPredictRespawns() { return (*cast(uint*)(cast(size_t)cast(void*)this + 692) & 0x4) != 0; }
	public @property final bool bPredictRespawns(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 692) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 692) &= ~0x4; } return val; }
	public @property final bool bPickupHidden() { return (*cast(uint*)(cast(size_t)cast(void*)this + 692) & 0x2) != 0; }
	public @property final bool bPickupHidden(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 692) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 692) &= ~0x2; } return val; }
	public @property final bool bOnlyReplicateHidden() { return (*cast(uint*)(cast(size_t)cast(void*)this + 692) & 0x1) != 0; }
	public @property final bool bOnlyReplicateHidden(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 692) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 692) &= ~0x1; } return val; }
	final void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24480], params.ptr, cast(void*)0);
	}
	final void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24482], cast(void*)0, cast(void*)0);
	}
	final void InitializePickup()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24483], cast(void*)0, cast(void*)0);
	}
	final void SetInitialState()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24484], cast(void*)0, cast(void*)0);
	}
	final void ShutDown()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24485], cast(void*)0, cast(void*)0);
	}
	final void SetPickupMesh()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24486], cast(void*)0, cast(void*)0);
	}
	final void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24487], cast(void*)0, cast(void*)0);
	}
	final bool CheckForErrors()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24488], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void SetRespawn()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24493], cast(void*)0, cast(void*)0);
	}
	final void StartSleeping()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24494], cast(void*)0, cast(void*)0);
	}
	final float DetourWeight(Pawn Other, float PathWeight)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		*cast(float*)&params[4] = PathWeight;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24495], params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
	}
	final void SpawnCopyFor(Pawn Recipient)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Recipient;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24499], params.ptr, cast(void*)0);
	}
	final bool ReadyToPickup(float MaxWait)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = MaxWait;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24502], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void GiveTo(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24505], params.ptr, cast(void*)0);
	}
	final void PickedUpBy(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24507], params.ptr, cast(void*)0);
	}
	final void RecheckValidTouch()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24510], cast(void*)0, cast(void*)0);
	}
	final float GetRespawnTime()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24533], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	final void RespawnEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24535], cast(void*)0, cast(void*)0);
	}
	final void SetPickupHidden()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24536], cast(void*)0, cast(void*)0);
	}
	final void SetPickupVisible()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24537], cast(void*)0, cast(void*)0);
	}
	final void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24538], cast(void*)0, cast(void*)0);
	}
	final bool DelayRespawn()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24548], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
