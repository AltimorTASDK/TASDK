module UnrealScript.Engine.ParticleModuleColor;

import ScriptClasses;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.ParticleModuleColorBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleColor : ParticleModuleColorBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleColor")); }
	private static __gshared ParticleModuleColor mDefaultProperties;
	@property final static ParticleModuleColor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleColor)("ParticleModuleColor Engine.Default__ParticleModuleColor")); }
	@property final
	{
		auto ref
		{
			DistributionFloat.RawDistributionFloat StartAlpha() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 100); }
			DistributionVector.RawDistributionVector StartColor() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 72); }
		}
		bool bClampAlpha() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x1) != 0; }
		bool bClampAlpha(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x1; } return val; }
	}
}
