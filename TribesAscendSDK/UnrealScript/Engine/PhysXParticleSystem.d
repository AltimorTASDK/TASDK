module UnrealScript.Engine.PhysXParticleSystem;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface PhysXParticleSystem : UObject
{
	enum ESimulationMethod : ubyte
	{
		ESM_SPH = 0,
		ESM_NO_PARTICLE_INTERACTION = 1,
		ESM_MIXED_MODE = 2,
		ESM_MAX = 3,
	}
	enum EPacketSizeMultiplier : ubyte
	{
		EPSM_4 = 0,
		EPSM_8 = 1,
		EPSM_16 = 2,
		EPSM_32 = 3,
		EPSM_64 = 4,
		EPSM_128 = 5,
		EPSM_MAX = 6,
	}
	public @property final auto ref UObject.Pointer PSys() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref UObject.Pointer CascadeScene() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 152); }
	public @property final auto ref float CollisionResponseCoefficient() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref float Viscosity() { return *cast(float*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref float Stiffness() { return *cast(float*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref float KernelRadiusMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref float RestDensity() { return *cast(float*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref float RestParticleDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref Vector ExternalAcceleration() { return *cast(Vector*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref float Damping() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref float MaxMotionDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
	public @property final bool bIsInGame() { return (*cast(uint*)(cast(size_t)cast(void*)this + 104) & 0x40) != 0; }
	public @property final bool bIsInGame(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 104) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 104) &= ~0x40; } return val; }
	public @property final bool bSyncFailed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 104) & 0x20) != 0; }
	public @property final bool bSyncFailed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 104) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 104) &= ~0x20; } return val; }
	public @property final bool bDestroy() { return (*cast(uint*)(cast(size_t)cast(void*)this + 104) & 0x10) != 0; }
	public @property final bool bDestroy(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 104) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 104) &= ~0x10; } return val; }
	public @property final bool bTwoWayCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 104) & 0x8) != 0; }
	public @property final bool bTwoWayCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 104) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 104) &= ~0x8; } return val; }
	public @property final bool bStaticCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 104) & 0x4) != 0; }
	public @property final bool bStaticCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 104) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 104) &= ~0x4; } return val; }
	public @property final bool bDisableGravity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 104) & 0x2) != 0; }
	public @property final bool bDisableGravity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 104) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 104) &= ~0x2; } return val; }
	public @property final bool bDynamicCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 104) & 0x1) != 0; }
	public @property final bool bDynamicCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 104) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 104) &= ~0x1; } return val; }
	public @property final auto ref float StaticFrictionWithDynamicShapes() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref float StaticFrictionWithStaticShapes() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref float FrictionWithDynamicShapes() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref float FrictionWithStaticShapes() { return *cast(float*)(cast(size_t)cast(void*)this + 88); }
	public @property final auto ref float RestitutionWithDynamicShapes() { return *cast(float*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref float RestitutionWithStaticShapes() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref float CollisionDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref PrimitiveComponent.RBCollisionChannelContainer RBCollideWithChannels() { return *cast(PrimitiveComponent.RBCollisionChannelContainer*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref PhysXParticleSystem.EPacketSizeMultiplier PacketSizeMultiplier() { return *cast(PhysXParticleSystem.EPacketSizeMultiplier*)(cast(size_t)cast(void*)this + 70); }
	public @property final auto ref PhysXParticleSystem.ESimulationMethod SimulationMethod() { return *cast(PhysXParticleSystem.ESimulationMethod*)(cast(size_t)cast(void*)this + 69); }
	public @property final auto ref PrimitiveComponent.ERBCollisionChannel RBChannel() { return *cast(PrimitiveComponent.ERBCollisionChannel*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref int ParticleSpawnReserve() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref int MaxParticles() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
}
