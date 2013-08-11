module UnrealScript.Engine.ActorFactoryDynamicSM;

import ScriptClasses;
import UnrealScript.Engine.ActorFactory;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.StaticMesh;

extern(C++) interface ActorFactoryDynamicSM : ActorFactory
{
	public @property final auto ref Actor.ECollisionType CollisionType() { return *cast(Actor.ECollisionType*)(cast(size_t)cast(void*)this + 112); }
	public @property final bool bCastDynamicShadow() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x10) != 0; }
	public @property final bool bCastDynamicShadow(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x10; } return val; }
	public @property final bool bUseCompartment() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x8) != 0; }
	public @property final bool bUseCompartment(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x8; } return val; }
	public @property final bool bBlockRigidBody() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x4) != 0; }
	public @property final bool bBlockRigidBody(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x4; } return val; }
	public @property final bool bNotifyRigidBodyCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x2) != 0; }
	public @property final bool bNotifyRigidBodyCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x2; } return val; }
	public @property final bool bNoEncroachCheck() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x1) != 0; }
	public @property final bool bNoEncroachCheck(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x1; } return val; }
	public @property final auto ref Vector DrawScale3D() { return *cast(Vector*)(cast(size_t)cast(void*)this + 96); }
	// WARNING: Property 'StaticMesh' has the same name as a defined type!
}
