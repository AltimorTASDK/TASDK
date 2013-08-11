module UnrealScript.Engine.RB_RadialImpulseComponent;

import ScriptClasses;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface RB_RadialImpulseComponent : PrimitiveComponent
{
	public @property final bool bCauseFracture() { return (*cast(uint*)(cast(size_t)cast(void*)this + 500) & 0x2) != 0; }
	public @property final bool bCauseFracture(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 500) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 500) &= ~0x2; } return val; }
	public @property final bool bVelChange() { return (*cast(uint*)(cast(size_t)cast(void*)this + 500) & 0x1) != 0; }
	public @property final bool bVelChange(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 500) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 500) &= ~0x1; } return val; }
	public @property final auto ref float ImpulseRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
	public @property final auto ref float ImpulseStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 492); }
	public @property final auto ref PrimitiveComponent.ERadialImpulseFalloff ImpulseFalloff() { return *cast(PrimitiveComponent.ERadialImpulseFalloff*)(cast(size_t)cast(void*)this + 488); }
	final void FireImpulse(Vector Origin)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = Origin;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25317], params.ptr, cast(void*)0);
	}
}
