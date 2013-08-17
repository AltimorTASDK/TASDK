module UnrealScript.Engine.ParticleModuleLocationPrimitiveCylinder;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleLocationPrimitiveBase;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface ParticleModuleLocationPrimitiveCylinder : ParticleModuleLocationPrimitiveBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ParticleModuleLocationPrimitiveCylinder")); }
	private static __gshared ParticleModuleLocationPrimitiveCylinder mDefaultProperties;
	@property final static ParticleModuleLocationPrimitiveCylinder DefaultProperties() { mixin(MGDPC("ParticleModuleLocationPrimitiveCylinder", "ParticleModuleLocationPrimitiveCylinder Engine.Default__ParticleModuleLocationPrimitiveCylinder")); }
	enum CylinderHeightAxis : ubyte
	{
		PMLPC_HEIGHTAXIS_X = 0,
		PMLPC_HEIGHTAXIS_Y = 1,
		PMLPC_HEIGHTAXIS_Z = 2,
		PMLPC_HEIGHTAXIS_MAX = 3,
	}
	@property final
	{
		auto ref
		{
			ParticleModuleLocationPrimitiveCylinder.CylinderHeightAxis HeightAxis() { mixin(MGPC("ParticleModuleLocationPrimitiveCylinder.CylinderHeightAxis", 192)); }
			DistributionFloat.RawDistributionFloat StartHeight() { mixin(MGPC("DistributionFloat.RawDistributionFloat", 164)); }
			DistributionFloat.RawDistributionFloat StartRadius() { mixin(MGPC("DistributionFloat.RawDistributionFloat", 136)); }
		}
		bool RadialVelocity() { mixin(MGBPC(132, 0x1)); }
		bool RadialVelocity(bool val) { mixin(MSBPC(132, 0x1)); }
	}
}
