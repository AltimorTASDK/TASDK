module UnrealScript.Engine.ActorFactoryPhysicsAsset;

import ScriptClasses;
import UnrealScript.Engine.ActorFactory;
import UnrealScript.Engine.PhysicsAsset;
import UnrealScript.Engine.SkeletalMesh;

extern(C++) interface ActorFactoryPhysicsAsset : ActorFactory
{
public extern(D):
	@property final
	{
		auto ref
		{
			Vector DrawScale3D() { return *cast(Vector*)(cast(size_t)cast(void*)this + 116); }
			Vector InitialVelocity() { return *cast(Vector*)(cast(size_t)cast(void*)this + 104); }
			// WARNING: Property 'SkeletalMesh' has the same name as a defined type!
			// WARNING: Property 'PhysicsAsset' has the same name as a defined type!
		}
		bool bCastDynamicShadow() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x10) != 0; }
		bool bCastDynamicShadow(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x10; } return val; }
		bool bUseCompartment() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x8) != 0; }
		bool bUseCompartment(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x8; } return val; }
		bool bNotifyRigidBodyCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x4) != 0; }
		bool bNotifyRigidBodyCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x4; } return val; }
		bool bDamageAppliesImpulse() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x2) != 0; }
		bool bDamageAppliesImpulse(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x2; } return val; }
		bool bStartAwake() { return (*cast(uint*)(cast(size_t)cast(void*)this + 100) & 0x1) != 0; }
		bool bStartAwake(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 100) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 100) &= ~0x1; } return val; }
	}
}
