module UnrealScript.UDKBase.UDKParticleSystemComponent;

import ScriptClasses;
import UnrealScript.Engine.ParticleSystemComponent;

extern(C++) interface UDKParticleSystemComponent : ParticleSystemComponent
{
public extern(D):
	@property final
	{
		auto ref
		{
			Vector SavedScale3D() { return *cast(Vector*)(cast(size_t)cast(void*)this + 744); }
			float FOV() { return *cast(float*)(cast(size_t)cast(void*)this + 736); }
		}
		bool bHasSavedScale3D() { return (*cast(uint*)(cast(size_t)cast(void*)this + 740) & 0x1) != 0; }
		bool bHasSavedScale3D(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 740) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 740) &= ~0x1; } return val; }
	}
	final void SetFOV(float NewFOV)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewFOV;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35020], params.ptr, cast(void*)0);
	}
}
