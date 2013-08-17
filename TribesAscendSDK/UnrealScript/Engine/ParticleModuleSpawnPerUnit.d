module UnrealScript.Engine.ParticleModuleSpawnPerUnit;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.ParticleModuleSpawnBase;

extern(C++) interface ParticleModuleSpawnPerUnit : ParticleModuleSpawnBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleSpawnPerUnit")()); }
	private static __gshared ParticleModuleSpawnPerUnit mDefaultProperties;
	@property final static ParticleModuleSpawnPerUnit DefaultProperties() { mixin(MGDPC!(ParticleModuleSpawnPerUnit, "ParticleModuleSpawnPerUnit Engine.Default__ParticleModuleSpawnPerUnit")()); }
	@property final
	{
		auto ref
		{
			float MovementTolerance() { mixin(MGPC!("float", 112)()); }
			DistributionFloat.RawDistributionFloat SpawnPerUnit() { mixin(MGPC!("DistributionFloat.RawDistributionFloat", 80)()); }
			float UnitScalar() { mixin(MGPC!("float", 76)()); }
		}
		bool bIgnoreMovementAlongZ() { mixin(MGBPC!(108, 0x8)()); }
		bool bIgnoreMovementAlongZ(bool val) { mixin(MSBPC!(108, 0x8)()); }
		bool bIgnoreMovementAlongY() { mixin(MGBPC!(108, 0x4)()); }
		bool bIgnoreMovementAlongY(bool val) { mixin(MSBPC!(108, 0x4)()); }
		bool bIgnoreMovementAlongX() { mixin(MGBPC!(108, 0x2)()); }
		bool bIgnoreMovementAlongX(bool val) { mixin(MSBPC!(108, 0x2)()); }
		bool bIgnoreSpawnRateWhenMoving() { mixin(MGBPC!(108, 0x1)()); }
		bool bIgnoreSpawnRateWhenMoving(bool val) { mixin(MSBPC!(108, 0x1)()); }
	}
}
