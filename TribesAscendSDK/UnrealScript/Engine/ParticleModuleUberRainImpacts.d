module UnrealScript.Engine.ParticleModuleUberRainImpacts;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleUberBase;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Core.DistributionVector;
import UnrealScript.Engine.ParticleModuleLocationPrimitiveCylinder;

extern(C++) interface ParticleModuleUberRainImpacts : ParticleModuleUberBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleUberRainImpacts")()); }
	private static __gshared ParticleModuleUberRainImpacts mDefaultProperties;
	@property final static ParticleModuleUberRainImpacts DefaultProperties() { mixin(MGDPC!(ParticleModuleUberRainImpacts, "ParticleModuleUberRainImpacts Engine.Default__ParticleModuleUberRainImpacts")()); }
	@property final
	{
		auto ref
		{
			DistributionFloat.RawDistributionFloat AlphaOverLife() { mixin(MGPC!("DistributionFloat.RawDistributionFloat", 344)()); }
			DistributionVector.RawDistributionVector ColorOverLife() { mixin(MGPC!("DistributionVector.RawDistributionVector", 316)()); }
			ParticleModuleLocationPrimitiveCylinder.CylinderHeightAxis PC_HeightAxis() { mixin(MGPC!("ParticleModuleLocationPrimitiveCylinder.CylinderHeightAxis", 312)()); }
			DistributionFloat.RawDistributionFloat PC_StartHeight() { mixin(MGPC!("DistributionFloat.RawDistributionFloat", 284)()); }
			DistributionFloat.RawDistributionFloat PC_StartRadius() { mixin(MGPC!("DistributionFloat.RawDistributionFloat", 256)()); }
			DistributionVector.RawDistributionVector PC_StartLocation() { mixin(MGPC!("DistributionVector.RawDistributionVector", 228)()); }
			DistributionFloat.RawDistributionFloat PC_VelocityScale() { mixin(MGPC!("DistributionFloat.RawDistributionFloat", 200)()); }
			DistributionVector.RawDistributionVector LifeMultiplier() { mixin(MGPC!("DistributionVector.RawDistributionVector", 172)()); }
			DistributionVector.RawDistributionVector StartRotation() { mixin(MGPC!("DistributionVector.RawDistributionVector", 140)()); }
			DistributionVector.RawDistributionVector StartSize() { mixin(MGPC!("DistributionVector.RawDistributionVector", 112)()); }
			DistributionFloat.RawDistributionFloat Lifetime() { mixin(MGPC!("DistributionFloat.RawDistributionFloat", 84)()); }
		}
		bool bRadialVelocity() { mixin(MGBPC!(168, 0x2000)()); }
		bool bRadialVelocity(bool val) { mixin(MSBPC!(168, 0x2000)()); }
		bool bVelocity() { mixin(MGBPC!(168, 0x1000)()); }
		bool bVelocity(bool val) { mixin(MSBPC!(168, 0x1000)()); }
		bool bSurfaceOnly() { mixin(MGBPC!(168, 0x800)()); }
		bool bSurfaceOnly(bool val) { mixin(MSBPC!(168, 0x800)()); }
		bool bNegative_Z() { mixin(MGBPC!(168, 0x400)()); }
		bool bNegative_Z(bool val) { mixin(MSBPC!(168, 0x400)()); }
		bool bNegative_Y() { mixin(MGBPC!(168, 0x200)()); }
		bool bNegative_Y(bool val) { mixin(MSBPC!(168, 0x200)()); }
		bool bNegative_X() { mixin(MGBPC!(168, 0x100)()); }
		bool bNegative_X(bool val) { mixin(MSBPC!(168, 0x100)()); }
		bool bPositive_Z() { mixin(MGBPC!(168, 0x80)()); }
		bool bPositive_Z(bool val) { mixin(MSBPC!(168, 0x80)()); }
		bool bPositive_Y() { mixin(MGBPC!(168, 0x40)()); }
		bool bPositive_Y(bool val) { mixin(MSBPC!(168, 0x40)()); }
		bool bPositive_X() { mixin(MGBPC!(168, 0x20)()); }
		bool bPositive_X(bool val) { mixin(MSBPC!(168, 0x20)()); }
		bool bIsUsingCylinder() { mixin(MGBPC!(168, 0x10)()); }
		bool bIsUsingCylinder(bool val) { mixin(MSBPC!(168, 0x10)()); }
		bool MultiplyZ() { mixin(MGBPC!(168, 0x8)()); }
		bool MultiplyZ(bool val) { mixin(MSBPC!(168, 0x8)()); }
		bool MultiplyY() { mixin(MGBPC!(168, 0x4)()); }
		bool MultiplyY(bool val) { mixin(MSBPC!(168, 0x4)()); }
		bool MultiplyX() { mixin(MGBPC!(168, 0x2)()); }
		bool MultiplyX(bool val) { mixin(MSBPC!(168, 0x2)()); }
		bool bInheritParent() { mixin(MGBPC!(168, 0x1)()); }
		bool bInheritParent(bool val) { mixin(MSBPC!(168, 0x1)()); }
	}
}
