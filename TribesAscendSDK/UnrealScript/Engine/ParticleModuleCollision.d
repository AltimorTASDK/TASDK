module UnrealScript.Engine.ParticleModuleCollision;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleCollisionBase;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleCollision : ParticleModuleCollisionBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleCollision")()); }
	private static __gshared ParticleModuleCollision mDefaultProperties;
	@property final static ParticleModuleCollision DefaultProperties() { mixin(MGDPC!(ParticleModuleCollision, "ParticleModuleCollision Engine.Default__ParticleModuleCollision")()); }
	@property final
	{
		auto ref
		{
			DistributionFloat.RawDistributionFloat DelayAmount() { mixin(MGPC!(DistributionFloat.RawDistributionFloat, 200)()); }
			float VerticalFudgeFactor() { mixin(MGPC!(float, 196)()); }
			float DirScalar() { mixin(MGPC!(float, 192)()); }
			DistributionFloat.RawDistributionFloat ParticleMass() { mixin(MGPC!(DistributionFloat.RawDistributionFloat, 164)()); }
			ParticleModuleCollisionBase.EParticleCollisionComplete CollisionCompletionOption() { mixin(MGPC!(ParticleModuleCollisionBase.EParticleCollisionComplete, 156)()); }
			DistributionFloat.RawDistributionFloat MaxCollisions() { mixin(MGPC!(DistributionFloat.RawDistributionFloat, 128)()); }
			DistributionVector.RawDistributionVector DampingFactorRotation() { mixin(MGPC!(DistributionVector.RawDistributionVector, 100)()); }
			DistributionVector.RawDistributionVector DampingFactor() { mixin(MGPC!(DistributionVector.RawDistributionVector, 72)()); }
		}
		bool bDropDetail() { mixin(MGBPC!(160, 0x8)()); }
		bool bDropDetail(bool val) { mixin(MSBPC!(160, 0x8)()); }
		bool bOnlyVerticalNormalsDecrementCount() { mixin(MGBPC!(160, 0x4)()); }
		bool bOnlyVerticalNormalsDecrementCount(bool val) { mixin(MSBPC!(160, 0x4)()); }
		bool bPawnsDoNotDecrementCount() { mixin(MGBPC!(160, 0x2)()); }
		bool bPawnsDoNotDecrementCount(bool val) { mixin(MSBPC!(160, 0x2)()); }
		bool bApplyPhysics() { mixin(MGBPC!(160, 0x1)()); }
		bool bApplyPhysics(bool val) { mixin(MSBPC!(160, 0x1)()); }
	}
}
