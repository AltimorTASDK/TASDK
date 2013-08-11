module UnrealScript.UTGame.UTVehicleFactory;

import ScriptClasses;
import UnrealScript.Engine.Canvas;
import UnrealScript.UTGame.UTVehicle;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.UDKBase.UDKVehicleFactory;
import UnrealScript.UTGame.UTPlayerController;
import UnrealScript.Core.UObject;
import UnrealScript.UTGame.UTMapInfo;
import UnrealScript.UTGame.UTGameObjective;

extern(C++) interface UTVehicleFactory : UDKVehicleFactory
{
public extern(D):
	@property final
	{
		auto ref
		{
			ScriptArray!(Rotator) InitialGunRotations() { return *cast(ScriptArray!(Rotator)*)(cast(size_t)cast(void*)this + 748); }
			UTGameObjective ReverseObjective() { return *cast(UTGameObjective*)(cast(size_t)cast(void*)this + 744); }
			float SpawnZOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 736); }
		}
		bool bStartNeutral() { return (*cast(uint*)(cast(size_t)cast(void*)this + 740) & 0x2) != 0; }
		bool bStartNeutral(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 740) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 740) &= ~0x2; } return val; }
		bool bKeyVehicle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 740) & 0x8) != 0; }
		bool bKeyVehicle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 740) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 740) &= ~0x8; } return val; }
		bool bForceAvoidReversing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 740) & 0x10) != 0; }
		bool bForceAvoidReversing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 740) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 740) &= ~0x10; } return val; }
		bool bDisabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 740) & 0x4) != 0; }
		bool bDisabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 740) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 740) &= ~0x4; } return val; }
		bool bMayReverseSpawnDirection() { return (*cast(uint*)(cast(size_t)cast(void*)this + 740) & 0x1) != 0; }
		bool bMayReverseSpawnDirection(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 740) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 740) &= ~0x1; } return val; }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49688], cast(void*)0, cast(void*)0);
	}
	void AddToClosestObjective()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49689], cast(void*)0, cast(void*)0);
	}
	void SetInitialState()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49694], cast(void*)0, cast(void*)0);
	}
	void RenderMapIcon(UTMapInfo MP, Canvas pCanvas, UTPlayerController PlayerOwner, UObject.LinearColor FinalColor)
	{
		ubyte params[28];
		params[] = 0;
		*cast(UTMapInfo*)params.ptr = MP;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(UTPlayerController*)&params[8] = PlayerOwner;
		*cast(UObject.LinearColor*)&params[12] = FinalColor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49695], params.ptr, cast(void*)0);
	}
	void Activate(ubyte T)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = T;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49701], params.ptr, cast(void*)0);
	}
	void Deactivate()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49703], cast(void*)0, cast(void*)0);
	}
	void VehicleTaken()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49706], cast(void*)0, cast(void*)0);
	}
	void VehicleDestroyed(UTVehicle V)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UTVehicle*)params.ptr = V;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49707], params.ptr, cast(void*)0);
	}
	void TriggerSpawnedEvent()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49709], cast(void*)0, cast(void*)0);
	}
	void OnToggle(SeqAct_Toggle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49710], params.ptr, cast(void*)0);
	}
	Rotator GetSpawnRotation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49713], params.ptr, cast(void*)0);
		return *cast(Rotator*)params.ptr;
	}
}
