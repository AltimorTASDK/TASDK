module UnrealScript.Engine.FracturedStaticMesh;

import ScriptClasses;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.StaticMesh;

extern(C++) interface FracturedStaticMesh : StaticMesh
{
	public @property final auto ref ParticleSystem FragmentDestroyEffect() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 436); }
	public @property final auto ref ScriptArray!(ParticleSystem) FragmentDestroyEffects() { return *cast(ScriptArray!(ParticleSystem)*)(cast(size_t)cast(void*)this + 440); }
	public @property final auto ref float FragmentDestroyEffectScale() { return *cast(float*)(cast(size_t)cast(void*)this + 452); }
	public @property final auto ref float FragmentHealthScale() { return *cast(float*)(cast(size_t)cast(void*)this + 456); }
	public @property final auto ref float FragmentMinHealth() { return *cast(float*)(cast(size_t)cast(void*)this + 460); }
	public @property final auto ref float FragmentMaxHealth() { return *cast(float*)(cast(size_t)cast(void*)this + 464); }
	public @property final bool bUniformFragmentHealth() { return (*cast(uint*)(cast(size_t)cast(void*)this + 468) & 0x1) != 0; }
	public @property final bool bUniformFragmentHealth(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 468) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 468) &= ~0x1; } return val; }
	public @property final auto ref StaticMesh SourceCoreMesh() { return *cast(StaticMesh*)(cast(size_t)cast(void*)this + 376); }
	public @property final auto ref float CoreMeshScale() { return *cast(float*)(cast(size_t)cast(void*)this + 380); }
	public @property final bool bSliceUsingCoreCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 432) & 0x1) != 0; }
	public @property final bool bSliceUsingCoreCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 432) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 432) &= ~0x1; } return val; }
	public @property final auto ref float ChunkLinVel() { return *cast(float*)(cast(size_t)cast(void*)this + 472); }
	public @property final auto ref float ChunkAngVel() { return *cast(float*)(cast(size_t)cast(void*)this + 476); }
	public @property final auto ref float ChunkLinHorizontalScale() { return *cast(float*)(cast(size_t)cast(void*)this + 480); }
	public @property final auto ref float ExplosionVelScale() { return *cast(float*)(cast(size_t)cast(void*)this + 484); }
	public @property final bool bCompositeChunksExplodeOnImpact() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x1) != 0; }
	public @property final bool bCompositeChunksExplodeOnImpact(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x1; } return val; }
	public @property final bool bFixIsolatedChunks() { return (*cast(uint*)(cast(size_t)cast(void*)this + 492) & 0x1) != 0; }
	public @property final bool bFixIsolatedChunks(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 492) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 492) &= ~0x1; } return val; }
	public @property final bool bAlwaysBreakOffIsolatedIslands() { return (*cast(uint*)(cast(size_t)cast(void*)this + 496) & 0x1) != 0; }
	public @property final bool bAlwaysBreakOffIsolatedIslands(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 496) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 496) &= ~0x1; } return val; }
	public @property final bool bSpawnPhysicsChunks() { return (*cast(uint*)(cast(size_t)cast(void*)this + 500) & 0x1) != 0; }
	public @property final bool bSpawnPhysicsChunks(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 500) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 500) &= ~0x1; } return val; }
	public @property final auto ref float ChanceOfPhysicsChunk() { return *cast(float*)(cast(size_t)cast(void*)this + 504); }
	public @property final auto ref float ExplosionChanceOfPhysicsChunk() { return *cast(float*)(cast(size_t)cast(void*)this + 508); }
	public @property final auto ref float NormalPhysicsChunkScaleMin() { return *cast(float*)(cast(size_t)cast(void*)this + 512); }
	public @property final auto ref float NormalPhysicsChunkScaleMax() { return *cast(float*)(cast(size_t)cast(void*)this + 516); }
	public @property final auto ref float ExplosionPhysicsChunkScaleMin() { return *cast(float*)(cast(size_t)cast(void*)this + 520); }
	public @property final auto ref float ExplosionPhysicsChunkScaleMax() { return *cast(float*)(cast(size_t)cast(void*)this + 524); }
	public @property final auto ref float MinConnectionSupportArea() { return *cast(float*)(cast(size_t)cast(void*)this + 528); }
	public @property final auto ref MaterialInterface DynamicOutsideMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 532); }
	public @property final auto ref MaterialInterface LoseChunkOutsideMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 536); }
	public @property final auto ref int OutsideMaterialIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 540); }
}
