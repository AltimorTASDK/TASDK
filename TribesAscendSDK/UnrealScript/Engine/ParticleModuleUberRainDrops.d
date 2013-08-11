module UnrealScript.Engine.ParticleModuleUberRainDrops;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleUberBase;
import UnrealScript.Engine.ParticleModuleLocationPrimitiveCylinder;

extern(C++) interface ParticleModuleUberRainDrops : ParticleModuleUberBase
{
	public @property final auto ref Vector StartLocationMax() { return *cast(Vector*)(cast(size_t)cast(void*)this + 208); }
	public @property final auto ref Vector StartLocationMin() { return *cast(Vector*)(cast(size_t)cast(void*)this + 196); }
	public @property final auto ref ParticleModuleLocationPrimitiveCylinder.CylinderHeightAxis PC_HeightAxis() { return *cast(ParticleModuleLocationPrimitiveCylinder.CylinderHeightAxis*)(cast(size_t)cast(void*)this + 192); }
	public @property final auto ref float PC_StartHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 188); }
	public @property final auto ref float PC_StartRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 184); }
	public @property final auto ref Vector PC_StartLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 172); }
	public @property final auto ref float PC_VelocityScale() { return *cast(float*)(cast(size_t)cast(void*)this + 168); }
	public @property final bool bRadialVelocity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x200) != 0; }
	public @property final bool bRadialVelocity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x200; } return val; }
	public @property final bool bVelocity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x100) != 0; }
	public @property final bool bVelocity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x100; } return val; }
	public @property final bool bSurfaceOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x80) != 0; }
	public @property final bool bSurfaceOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x80; } return val; }
	public @property final bool bNegative_Z() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x40) != 0; }
	public @property final bool bNegative_Z(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x40; } return val; }
	public @property final bool bNegative_Y() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x20) != 0; }
	public @property final bool bNegative_Y(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x20; } return val; }
	public @property final bool bNegative_X() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x10) != 0; }
	public @property final bool bNegative_X(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x10; } return val; }
	public @property final bool bPositive_Z() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x8) != 0; }
	public @property final bool bPositive_Z(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x8; } return val; }
	public @property final bool bPositive_Y() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x4) != 0; }
	public @property final bool bPositive_Y(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x4; } return val; }
	public @property final bool bPositive_X() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x2) != 0; }
	public @property final bool bPositive_X(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x2; } return val; }
	public @property final bool bIsUsingCylinder() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x1) != 0; }
	public @property final bool bIsUsingCylinder(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x1; } return val; }
	public @property final auto ref float AlphaOverLife() { return *cast(float*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref Vector ColorOverLife() { return *cast(Vector*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref float StartVelocityRadialMax() { return *cast(float*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref float StartVelocityRadialMin() { return *cast(float*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref Vector StartVelocityMax() { return *cast(Vector*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref Vector StartVelocityMin() { return *cast(Vector*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref Vector StartSizeMax() { return *cast(Vector*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref Vector StartSizeMin() { return *cast(Vector*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref float LifetimeMax() { return *cast(float*)(cast(size_t)cast(void*)this + 88); }
	public @property final auto ref float LifetimeMin() { return *cast(float*)(cast(size_t)cast(void*)this + 84); }
}
