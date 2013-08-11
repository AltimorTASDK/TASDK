module UnrealScript.Engine.ActorFactoryPhysicsAsset;

import ScriptClasses;
import UnrealScript.Engine.ActorFactory;
import UnrealScript.Engine.PhysicsAsset;
import UnrealScript.Engine.SkeletalMesh;

extern(C++) interface ActorFactoryPhysicsAsset : ActorFactory
{
	public @property final auto ref Vector DrawScale3D() { return *cast(Vector*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref Vector InitialVelocity() { return *cast(Vector*)(cast(size_t)cast(void*)this + 104); }
	public @property final bool bCastDynamicShadow() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x10) != 0; }
	public @property final bool bCastDynamicShadow(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x10; } return val; }
	public @property final bool bUseCompartment() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x8) != 0; }
	public @property final bool bUseCompartment(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x8; } return val; }
	public @property final bool bNotifyRigidBodyCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x4) != 0; }
	public @property final bool bNotifyRigidBodyCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x4; } return val; }
	public @property final bool bDamageAppliesImpulse() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x2) != 0; }
	public @property final bool bDamageAppliesImpulse(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x2; } return val; }
	public @property final bool bStartAwake() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x1) != 0; }
	public @property final bool bStartAwake(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x1; } return val; }
	// WARNING: Property 'SkeletalMesh' has the same name as a defined type!
	// WARNING: Property 'PhysicsAsset' has the same name as a defined type!
}
