module UnrealScript.Engine.PhysXParticleSystem;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface PhysXParticleSystem : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.PhysXParticleSystem")()); }
	private static __gshared PhysXParticleSystem mDefaultProperties;
	@property final static PhysXParticleSystem DefaultProperties() { mixin(MGDPC!(PhysXParticleSystem, "PhysXParticleSystem Engine.Default__PhysXParticleSystem")()); }
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
			UObject.Pointer PSys() { mixin(MGPC!("UObject.Pointer", 156)()); }
			UObject.Pointer CascadeScene() { mixin(MGPC!("UObject.Pointer", 152)()); }
			float CollisionResponseCoefficient() { mixin(MGPC!("float", 148)()); }
			float Viscosity() { mixin(MGPC!("float", 144)()); }
			float Stiffness() { mixin(MGPC!("float", 140)()); }
			float KernelRadiusMultiplier() { mixin(MGPC!("float", 136)()); }
			float RestDensity() { mixin(MGPC!("float", 132)()); }
			float RestParticleDistance() { mixin(MGPC!("float", 128)()); }
			Vector ExternalAcceleration() { mixin(MGPC!("Vector", 116)()); }
			float Damping() { mixin(MGPC!("float", 112)()); }
			float MaxMotionDistance() { mixin(MGPC!("float", 108)()); }
			float StaticFrictionWithDynamicShapes() { mixin(MGPC!("float", 100)()); }
			float StaticFrictionWithStaticShapes() { mixin(MGPC!("float", 96)()); }
			float FrictionWithDynamicShapes() { mixin(MGPC!("float", 92)()); }
			float FrictionWithStaticShapes() { mixin(MGPC!("float", 88)()); }
			float RestitutionWithDynamicShapes() { mixin(MGPC!("float", 84)()); }
			float RestitutionWithStaticShapes() { mixin(MGPC!("float", 80)()); }
			float CollisionDistance() { mixin(MGPC!("float", 76)()); }
			PrimitiveComponent.RBCollisionChannelContainer RBCollideWithChannels() { mixin(MGPC!("PrimitiveComponent.RBCollisionChannelContainer", 72)()); }
			PhysXParticleSystem.EPacketSizeMultiplier PacketSizeMultiplier() { mixin(MGPC!("PhysXParticleSystem.EPacketSizeMultiplier", 70)()); }
			PhysXParticleSystem.ESimulationMethod SimulationMethod() { mixin(MGPC!("PhysXParticleSystem.ESimulationMethod", 69)()); }
			PrimitiveComponent.ERBCollisionChannel RBChannel() { mixin(MGPC!("PrimitiveComponent.ERBCollisionChannel", 68)()); }
			int ParticleSpawnReserve() { mixin(MGPC!("int", 64)()); }
			int MaxParticles() { mixin(MGPC!("int", 60)()); }
		}
		bool bIsInGame() { mixin(MGBPC!(104, 0x40)()); }
		bool bIsInGame(bool val) { mixin(MSBPC!(104, 0x40)()); }
		bool bSyncFailed() { mixin(MGBPC!(104, 0x20)()); }
		bool bSyncFailed(bool val) { mixin(MSBPC!(104, 0x20)()); }
		bool bDestroy() { mixin(MGBPC!(104, 0x10)()); }
		bool bDestroy(bool val) { mixin(MSBPC!(104, 0x10)()); }
		bool bTwoWayCollision() { mixin(MGBPC!(104, 0x8)()); }
		bool bTwoWayCollision(bool val) { mixin(MSBPC!(104, 0x8)()); }
		bool bStaticCollision() { mixin(MGBPC!(104, 0x4)()); }
		bool bStaticCollision(bool val) { mixin(MSBPC!(104, 0x4)()); }
		bool bDisableGravity() { mixin(MGBPC!(104, 0x2)()); }
		bool bDisableGravity(bool val) { mixin(MSBPC!(104, 0x2)()); }
		bool bDynamicCollision() { mixin(MGBPC!(104, 0x1)()); }
		bool bDynamicCollision(bool val) { mixin(MSBPC!(104, 0x1)()); }
	}
}
