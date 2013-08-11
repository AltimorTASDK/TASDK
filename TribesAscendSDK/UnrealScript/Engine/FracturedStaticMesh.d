module UnrealScript.Engine.FracturedStaticMesh;

import ScriptClasses;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.StaticMesh;

extern(C++) interface FracturedStaticMesh : StaticMesh
{
public extern(D):
	@property final
	{
		auto ref
		{
			ParticleSystem FragmentDestroyEffect() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 436); }
			ScriptArray!(ParticleSystem) FragmentDestroyEffects() { return *cast(ScriptArray!(ParticleSystem)*)(cast(size_t)cast(void*)this + 440); }
			float FragmentDestroyEffectScale() { return *cast(float*)(cast(size_t)cast(void*)this + 452); }
			float FragmentHealthScale() { return *cast(float*)(cast(size_t)cast(void*)this + 456); }
			float FragmentMinHealth() { return *cast(float*)(cast(size_t)cast(void*)this + 460); }
			float FragmentMaxHealth() { return *cast(float*)(cast(size_t)cast(void*)this + 464); }
			StaticMesh SourceCoreMesh() { return *cast(StaticMesh*)(cast(size_t)cast(void*)this + 376); }
			float CoreMeshScale() { return *cast(float*)(cast(size_t)cast(void*)this + 380); }
			float ChunkLinVel() { return *cast(float*)(cast(size_t)cast(void*)this + 472); }
			float ChunkAngVel() { return *cast(float*)(cast(size_t)cast(void*)this + 476); }
			float ChunkLinHorizontalScale() { return *cast(float*)(cast(size_t)cast(void*)this + 480); }
			float ExplosionVelScale() { return *cast(float*)(cast(size_t)cast(void*)this + 484); }
			float ChanceOfPhysicsChunk() { return *cast(float*)(cast(size_t)cast(void*)this + 504); }
			float ExplosionChanceOfPhysicsChunk() { return *cast(float*)(cast(size_t)cast(void*)this + 508); }
			float NormalPhysicsChunkScaleMin() { return *cast(float*)(cast(size_t)cast(void*)this + 512); }
			float NormalPhysicsChunkScaleMax() { return *cast(float*)(cast(size_t)cast(void*)this + 516); }
			float ExplosionPhysicsChunkScaleMin() { return *cast(float*)(cast(size_t)cast(void*)this + 520); }
			float ExplosionPhysicsChunkScaleMax() { return *cast(float*)(cast(size_t)cast(void*)this + 524); }
			float MinConnectionSupportArea() { return *cast(float*)(cast(size_t)cast(void*)this + 528); }
			MaterialInterface DynamicOutsideMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 532); }
			MaterialInterface LoseChunkOutsideMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 536); }
			int OutsideMaterialIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 540); }
		}
		bool bUniformFragmentHealth() { return (*cast(uint*)(cast(size_t)cast(void*)this + 468) & 0x1) != 0; }
		bool bUniformFragmentHealth(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 468) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 468) &= ~0x1; } return val; }
		bool bSliceUsingCoreCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 432) & 0x1) != 0; }
		bool bSliceUsingCoreCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 432) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 432) &= ~0x1; } return val; }
		bool bCompositeChunksExplodeOnImpact() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x1) != 0; }
		bool bCompositeChunksExplodeOnImpact(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x1; } return val; }
		bool bFixIsolatedChunks() { return (*cast(uint*)(cast(size_t)cast(void*)this + 492) & 0x1) != 0; }
		bool bFixIsolatedChunks(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 492) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 492) &= ~0x1; } return val; }
		bool bAlwaysBreakOffIsolatedIslands() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x1) != 0; }
		bool bAlwaysBreakOffIsolatedIslands(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x1; } return val; }
		bool bSpawnPhysicsChunks() { return (*cast(uint*)(cast(size_t)cast(void*)this + 500) & 0x1) != 0; }
		bool bSpawnPhysicsChunks(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 500) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 500) &= ~0x1; } return val; }
	}
}
