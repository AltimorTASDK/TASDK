module UnrealScript.Engine.ActorFactoryRigidBody;

import ScriptClasses;
import UnrealScript.Engine.ActorFactoryDynamicSM;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface ActorFactoryRigidBody : ActorFactoryDynamicSM
{
	public @property final auto ref float StayUprightMaxTorque() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref float StayUprightTorqueFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref PrimitiveComponent.ERBCollisionChannel RBChannel() { return *cast(PrimitiveComponent.ERBCollisionChannel*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref Vector InitialVelocity() { return *cast(Vector*)(cast(size_t)cast(void*)this + 120); }
	public @property final bool bEnableStayUprightSpring() { return (*cast(uint*)(cast(size_t)cast(void*)this + 116) & 0x8) != 0; }
	public @property final bool bEnableStayUprightSpring(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 116) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 116) &= ~0x8; } return val; }
	public @property final bool bLocalSpaceInitialVelocity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 116) & 0x4) != 0; }
	public @property final bool bLocalSpaceInitialVelocity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 116) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 116) &= ~0x4; } return val; }
	public @property final bool bDamageAppliesImpulse() { return (*cast(uint*)(cast(size_t)cast(void*)this + 116) & 0x2) != 0; }
	public @property final bool bDamageAppliesImpulse(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 116) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 116) &= ~0x2; } return val; }
	public @property final bool bStartAwake() { return (*cast(uint*)(cast(size_t)cast(void*)this + 116) & 0x1) != 0; }
	public @property final bool bStartAwake(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 116) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 116) &= ~0x1; } return val; }
}
