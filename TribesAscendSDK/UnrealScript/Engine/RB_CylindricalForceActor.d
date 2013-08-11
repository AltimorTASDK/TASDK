module UnrealScript.Engine.RB_CylindricalForceActor;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.RigidBodyBase;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface RB_CylindricalForceActor : RigidBodyBase
{
	public @property final auto ref PrimitiveComponent.RBCollisionChannelContainer CollideWithChannels() { return *cast(PrimitiveComponent.RBCollisionChannelContainer*)(cast(size_t)cast(void*)this + 520); }
	public @property final bool bForceApplyToProjectiles() { return (*cast(uint*)(cast(size_t)cast(void*)this + 516) & 0x10) != 0; }
	public @property final bool bForceApplyToProjectiles(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 516) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 516) &= ~0x10; } return val; }
	public @property final bool bForceApplyToRigidBodies() { return (*cast(uint*)(cast(size_t)cast(void*)this + 516) & 0x8) != 0; }
	public @property final bool bForceApplyToRigidBodies(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 516) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 516) &= ~0x8; } return val; }
	public @property final bool bForceApplyToFluid() { return (*cast(uint*)(cast(size_t)cast(void*)this + 516) & 0x4) != 0; }
	public @property final bool bForceApplyToFluid(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 516) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 516) &= ~0x4; } return val; }
	public @property final bool bForceApplyToCloth() { return (*cast(uint*)(cast(size_t)cast(void*)this + 516) & 0x2) != 0; }
	public @property final bool bForceApplyToCloth(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 516) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 516) &= ~0x2; } return val; }
	public @property final bool bForceActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 516) & 0x1) != 0; }
	public @property final bool bForceActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 516) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 516) &= ~0x1; } return val; }
	public @property final auto ref float HeightOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 512); }
	public @property final auto ref float ForceHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 508); }
	public @property final auto ref float ForceTopRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 504); }
	public @property final auto ref float ForceRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 500); }
	public @property final auto ref float EscapeVelocity() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
	public @property final auto ref float LiftFalloffHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 492); }
	public @property final auto ref float LiftStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 488); }
	public @property final auto ref float RotationalStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 484); }
	public @property final auto ref float RadialStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 480); }
	final void OnToggle(SeqAct_Toggle inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25229], params.ptr, cast(void*)0);
	}
}
