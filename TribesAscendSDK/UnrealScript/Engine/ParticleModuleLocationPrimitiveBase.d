module UnrealScript.Engine.ParticleModuleLocationPrimitiveBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleLocationBase;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleLocationPrimitiveBase : ParticleModuleLocationBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleLocationPrimitiveBase")()); }
	private static __gshared ParticleModuleLocationPrimitiveBase mDefaultProperties;
	@property final static ParticleModuleLocationPrimitiveBase DefaultProperties() { mixin(MGDPC!(ParticleModuleLocationPrimitiveBase, "ParticleModuleLocationPrimitiveBase Engine.Default__ParticleModuleLocationPrimitiveBase")()); }
	@property final
	{
		auto ref
		{
			DistributionVector.RawDistributionVector StartLocation() { mixin(MGPC!("DistributionVector.RawDistributionVector", 104)()); }
			DistributionFloat.RawDistributionFloat VelocityScale() { mixin(MGPC!("DistributionFloat.RawDistributionFloat", 76)()); }
		}
		bool Velocity() { mixin(MGBPC!(72, 0x80)()); }
		bool Velocity(bool val) { mixin(MSBPC!(72, 0x80)()); }
		bool SurfaceOnly() { mixin(MGBPC!(72, 0x40)()); }
		bool SurfaceOnly(bool val) { mixin(MSBPC!(72, 0x40)()); }
		bool Negative_Z() { mixin(MGBPC!(72, 0x20)()); }
		bool Negative_Z(bool val) { mixin(MSBPC!(72, 0x20)()); }
		bool Negative_Y() { mixin(MGBPC!(72, 0x10)()); }
		bool Negative_Y(bool val) { mixin(MSBPC!(72, 0x10)()); }
		bool Negative_X() { mixin(MGBPC!(72, 0x8)()); }
		bool Negative_X(bool val) { mixin(MSBPC!(72, 0x8)()); }
		bool Positive_Z() { mixin(MGBPC!(72, 0x4)()); }
		bool Positive_Z(bool val) { mixin(MSBPC!(72, 0x4)()); }
		bool Positive_Y() { mixin(MGBPC!(72, 0x2)()); }
		bool Positive_Y(bool val) { mixin(MSBPC!(72, 0x2)()); }
		bool Positive_X() { mixin(MGBPC!(72, 0x1)()); }
		bool Positive_X(bool val) { mixin(MSBPC!(72, 0x1)()); }
	}
}
