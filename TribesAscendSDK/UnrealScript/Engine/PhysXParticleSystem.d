module UnrealScript.Engine.PhysXParticleSystem;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface PhysXParticleSystem : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PhysXParticleSystem")); }
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
	@property final
	{
		auto ref
		{
			UObject.Pointer PSys() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 156); }
			UObject.Pointer CascadeScene() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 152); }
			float CollisionResponseCoefficient() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
			float Viscosity() { return *cast(float*)(cast(size_t)cast(void*)this + 144); }
			float Stiffness() { return *cast(float*)(cast(size_t)cast(void*)this + 140); }
			float KernelRadiusMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 136); }
			float RestDensity() { return *cast(float*)(cast(size_t)cast(void*)this + 132); }
			float RestParticleDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 128); }
			Vector ExternalAcceleration() { return *cast(Vector*)(cast(size_t)cast(void*)this + 116); }
			float Damping() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
			float MaxMotionDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
			float StaticFrictionWithDynamicShapes() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
			float StaticFrictionWithStaticShapes() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
			float FrictionWithDynamicShapes() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
			float FrictionWithStaticShapes() { return *cast(float*)(cast(size_t)cast(void*)this + 88); }
			float RestitutionWithDynamicShapes() { return *cast(float*)(cast(size_t)cast(void*)this + 84); }
			float RestitutionWithStaticShapes() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
			float CollisionDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
			PrimitiveComponent.RBCollisionChannelContainer RBCollideWithChannels() { return *cast(PrimitiveComponent.RBCollisionChannelContainer*)(cast(size_t)cast(void*)this + 72); }
			PhysXParticleSystem.EPacketSizeMultiplier PacketSizeMultiplier() { return *cast(PhysXParticleSystem.EPacketSizeMultiplier*)(cast(size_t)cast(void*)this + 70); }
			PhysXParticleSystem.ESimulationMethod SimulationMethod() { return *cast(PhysXParticleSystem.ESimulationMethod*)(cast(size_t)cast(void*)this + 69); }
			PrimitiveComponent.ERBCollisionChannel RBChannel() { return *cast(PrimitiveComponent.ERBCollisionChannel*)(cast(size_t)cast(void*)this + 68); }
			int ParticleSpawnReserve() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
			int MaxParticles() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
		}
		bool bIsInGame() { return (*cast(uint*)(cast(size_t)cast(void*)this + 104) & 0x40) != 0; }
		bool bIsInGame(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 104) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 104) &= ~0x40; } return val; }
		bool bSyncFailed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 104) & 0x20) != 0; }
		bool bSyncFailed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 104) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 104) &= ~0x20; } return val; }
		bool bDestroy() { return (*cast(uint*)(cast(size_t)cast(void*)this + 104) & 0x10) != 0; }
		bool bDestroy(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 104) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 104) &= ~0x10; } return val; }
		bool bTwoWayCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 104) & 0x8) != 0; }
		bool bTwoWayCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 104) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 104) &= ~0x8; } return val; }
		bool bStaticCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 104) & 0x4) != 0; }
		bool bStaticCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 104) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 104) &= ~0x4; } return val; }
		bool bDisableGravity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 104) & 0x2) != 0; }
		bool bDisableGravity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 104) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 104) &= ~0x2; } return val; }
		bool bDynamicCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 104) & 0x1) != 0; }
		bool bDynamicCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 104) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 104) &= ~0x1; } return val; }
	}
}
