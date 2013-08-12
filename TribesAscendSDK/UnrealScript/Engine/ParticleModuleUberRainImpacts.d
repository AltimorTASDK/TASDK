module UnrealScript.Engine.ParticleModuleUberRainImpacts;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleUberBase;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Core.DistributionVector;
import UnrealScript.Engine.ParticleModuleLocationPrimitiveCylinder;

extern(C++) interface ParticleModuleUberRainImpacts : ParticleModuleUberBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleUberRainImpacts")); }
	@property final
	{
		auto ref
		{
			DistributionFloat.RawDistributionFloat AlphaOverLife() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 344); }
			DistributionVector.RawDistributionVector ColorOverLife() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 316); }
			ParticleModuleLocationPrimitiveCylinder.CylinderHeightAxis PC_HeightAxis() { return *cast(ParticleModuleLocationPrimitiveCylinder.CylinderHeightAxis*)(cast(size_t)cast(void*)this + 312); }
			DistributionFloat.RawDistributionFloat PC_StartHeight() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 284); }
			DistributionFloat.RawDistributionFloat PC_StartRadius() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 256); }
			DistributionVector.RawDistributionVector PC_StartLocation() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 228); }
			DistributionFloat.RawDistributionFloat PC_VelocityScale() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 200); }
			DistributionVector.RawDistributionVector LifeMultiplier() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 172); }
			DistributionVector.RawDistributionVector StartRotation() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 140); }
			DistributionVector.RawDistributionVector StartSize() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 112); }
			DistributionFloat.RawDistributionFloat Lifetime() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 84); }
		}
		bool bRadialVelocity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x2000) != 0; }
		bool bRadialVelocity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x2000; } return val; }
		bool bVelocity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x1000) != 0; }
		bool bVelocity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x1000; } return val; }
		bool bSurfaceOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x800) != 0; }
		bool bSurfaceOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x800; } return val; }
		bool bNegative_Z() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x400) != 0; }
		bool bNegative_Z(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x400; } return val; }
		bool bNegative_Y() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x200) != 0; }
		bool bNegative_Y(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x200; } return val; }
		bool bNegative_X() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x100) != 0; }
		bool bNegative_X(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x100; } return val; }
		bool bPositive_Z() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x80) != 0; }
		bool bPositive_Z(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x80; } return val; }
		bool bPositive_Y() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x40) != 0; }
		bool bPositive_Y(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x40; } return val; }
		bool bPositive_X() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x20) != 0; }
		bool bPositive_X(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x20; } return val; }
		bool bIsUsingCylinder() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x10) != 0; }
		bool bIsUsingCylinder(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x10; } return val; }
		bool MultiplyZ() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x8) != 0; }
		bool MultiplyZ(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x8; } return val; }
		bool MultiplyY() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x4) != 0; }
		bool MultiplyY(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x4; } return val; }
		bool MultiplyX() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x2) != 0; }
		bool MultiplyX(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x2; } return val; }
		bool bInheritParent() { return (*cast(uint*)(cast(size_t)cast(void*)this + 168) & 0x1) != 0; }
		bool bInheritParent(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 168) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 168) &= ~0x1; } return val; }
	}
}
