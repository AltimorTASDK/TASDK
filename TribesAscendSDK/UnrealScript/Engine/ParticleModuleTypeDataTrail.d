module UnrealScript.Engine.ParticleModuleTypeDataTrail;

import ScriptClasses;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.ParticleModuleTypeDataBase;

extern(C++) interface ParticleModuleTypeDataTrail : ParticleModuleTypeDataBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ParticleModuleTypeDataTrail")); }
	@property final
	{
		auto ref
		{
			Vector SpawnDistance() { return *cast(Vector*)(cast(size_t)cast(void*)this + 108); }
			DistributionFloat.RawDistributionFloat Tension() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 80); }
			int TessellationFactor() { return *cast(int*)(cast(size_t)cast(void*)this + 76); }
		}
		bool SpawnByDistance() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x10) != 0; }
		bool SpawnByDistance(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x10; } return val; }
		bool Tapered() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x8) != 0; }
		bool Tapered(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x8; } return val; }
		bool RenderTessellation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x4) != 0; }
		bool RenderTessellation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x4; } return val; }
		bool RenderLines() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x2) != 0; }
		bool RenderLines(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x2; } return val; }
		bool RenderGeometry() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x1) != 0; }
		bool RenderGeometry(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x1; } return val; }
	}
}
