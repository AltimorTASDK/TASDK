module UnrealScript.Engine.ParticleModuleUberRainDrops;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleUberBase;
import UnrealScript.Engine.ParticleModuleLocationPrimitiveCylinder;

extern(C++) interface ParticleModuleUberRainDrops : ParticleModuleUberBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleUberRainDrops")()); }
	private static __gshared ParticleModuleUberRainDrops mDefaultProperties;
	@property final static ParticleModuleUberRainDrops DefaultProperties() { mixin(MGDPC!(ParticleModuleUberRainDrops, "ParticleModuleUberRainDrops Engine.Default__ParticleModuleUberRainDrops")()); }
	@property final
	{
		auto ref
		{
			Vector StartLocationMax() { mixin(MGPC!(Vector, 208)()); }
			Vector StartLocationMin() { mixin(MGPC!(Vector, 196)()); }
			ParticleModuleLocationPrimitiveCylinder.CylinderHeightAxis PC_HeightAxis() { mixin(MGPC!(ParticleModuleLocationPrimitiveCylinder.CylinderHeightAxis, 192)()); }
			float PC_StartHeight() { mixin(MGPC!(float, 188)()); }
			float PC_StartRadius() { mixin(MGPC!(float, 184)()); }
			Vector PC_StartLocation() { mixin(MGPC!(Vector, 172)()); }
			float PC_VelocityScale() { mixin(MGPC!(float, 168)()); }
			float AlphaOverLife() { mixin(MGPC!(float, 160)()); }
			Vector ColorOverLife() { mixin(MGPC!(Vector, 148)()); }
			float StartVelocityRadialMax() { mixin(MGPC!(float, 144)()); }
			float StartVelocityRadialMin() { mixin(MGPC!(float, 140)()); }
			Vector StartVelocityMax() { mixin(MGPC!(Vector, 128)()); }
			Vector StartVelocityMin() { mixin(MGPC!(Vector, 116)()); }
			Vector StartSizeMax() { mixin(MGPC!(Vector, 104)()); }
			Vector StartSizeMin() { mixin(MGPC!(Vector, 92)()); }
			float LifetimeMax() { mixin(MGPC!(float, 88)()); }
			float LifetimeMin() { mixin(MGPC!(float, 84)()); }
		}
		bool bRadialVelocity() { mixin(MGBPC!(164, 0x200)()); }
		bool bRadialVelocity(bool val) { mixin(MSBPC!(164, 0x200)()); }
		bool bVelocity() { mixin(MGBPC!(164, 0x100)()); }
		bool bVelocity(bool val) { mixin(MSBPC!(164, 0x100)()); }
		bool bSurfaceOnly() { mixin(MGBPC!(164, 0x80)()); }
		bool bSurfaceOnly(bool val) { mixin(MSBPC!(164, 0x80)()); }
		bool bNegative_Z() { mixin(MGBPC!(164, 0x40)()); }
		bool bNegative_Z(bool val) { mixin(MSBPC!(164, 0x40)()); }
		bool bNegative_Y() { mixin(MGBPC!(164, 0x20)()); }
		bool bNegative_Y(bool val) { mixin(MSBPC!(164, 0x20)()); }
		bool bNegative_X() { mixin(MGBPC!(164, 0x10)()); }
		bool bNegative_X(bool val) { mixin(MSBPC!(164, 0x10)()); }
		bool bPositive_Z() { mixin(MGBPC!(164, 0x8)()); }
		bool bPositive_Z(bool val) { mixin(MSBPC!(164, 0x8)()); }
		bool bPositive_Y() { mixin(MGBPC!(164, 0x4)()); }
		bool bPositive_Y(bool val) { mixin(MSBPC!(164, 0x4)()); }
		bool bPositive_X() { mixin(MGBPC!(164, 0x2)()); }
		bool bPositive_X(bool val) { mixin(MSBPC!(164, 0x2)()); }
		bool bIsUsingCylinder() { mixin(MGBPC!(164, 0x1)()); }
		bool bIsUsingCylinder(bool val) { mixin(MSBPC!(164, 0x1)()); }
	}
}
