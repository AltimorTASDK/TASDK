module UnrealScript.Engine.ParticleModuleSpawnPerUnit;

import ScriptClasses;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.ParticleModuleSpawnBase;

extern(C++) interface ParticleModuleSpawnPerUnit : ParticleModuleSpawnBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleSpawnPerUnit")); }
	private static __gshared ParticleModuleSpawnPerUnit mDefaultProperties;
	@property final static ParticleModuleSpawnPerUnit DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ParticleModuleSpawnPerUnit)("ParticleModuleSpawnPerUnit Engine.Default__ParticleModuleSpawnPerUnit")); }
	@property final
	{
		auto ref
		{
			float MovementTolerance() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
			DistributionFloat.RawDistributionFloat SpawnPerUnit() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 80); }
			float UnitScalar() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
		}
		bool bIgnoreMovementAlongZ() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x8) != 0; }
		bool bIgnoreMovementAlongZ(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x8; } return val; }
		bool bIgnoreMovementAlongY() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x4) != 0; }
		bool bIgnoreMovementAlongY(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x4; } return val; }
		bool bIgnoreMovementAlongX() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x2) != 0; }
		bool bIgnoreMovementAlongX(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x2; } return val; }
		bool bIgnoreSpawnRateWhenMoving() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x1) != 0; }
		bool bIgnoreSpawnRateWhenMoving(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x1; } return val; }
	}
}
