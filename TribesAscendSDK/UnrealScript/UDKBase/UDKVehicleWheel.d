module UnrealScript.UDKBase.UDKVehicleWheel;

import ScriptClasses;
import UnrealScript.UDKBase.UDKVehicle;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.SVehicleWheel;

extern(C++) interface UDKVehicleWheel : SVehicleWheel
{
public extern(D):
	@property final
	{
		@property final auto ref float EffectDesiredSpinDir() { return *cast(float*)(cast(size_t)cast(void*)this + 284); }
		bool bDisableWheelOnDeath() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x2) != 0; }
		bool bDisableWheelOnDeath(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x2; } return val; }
		bool bUseMaterialSpecificEffects() { return (*cast(uint*)(cast(size_t)cast(void*)this + 276) & 0x1) != 0; }
		bool bUseMaterialSpecificEffects(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 276) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 276) &= ~0x1; } return val; }
	}
final:
	void SetParticleEffect(UDKVehicle OwnerVehicle, ParticleSystem NewTemplate)
	{
		ubyte params[8];
		params[] = 0;
		*cast(UDKVehicle*)params.ptr = OwnerVehicle;
		*cast(ParticleSystem*)&params[4] = NewTemplate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36261], params.ptr, cast(void*)0);
	}
	void OldEffectFinished(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* PSystem)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = PSystem;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36264], params.ptr, cast(void*)0);
	}
}
