module UnrealScript.Engine.FracturedStaticMesh;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.StaticMesh;

extern(C++) interface FracturedStaticMesh : StaticMesh
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.FracturedStaticMesh")); }
	private static __gshared FracturedStaticMesh mDefaultProperties;
	@property final static FracturedStaticMesh DefaultProperties() { mixin(MGDPC("FracturedStaticMesh", "FracturedStaticMesh Engine.Default__FracturedStaticMesh")); }
	@property final
	{
		auto ref
		{
			ParticleSystem FragmentDestroyEffect() { mixin(MGPC("ParticleSystem", 436)); }
			ScriptArray!(ParticleSystem) FragmentDestroyEffects() { mixin(MGPC("ScriptArray!(ParticleSystem)", 440)); }
			float FragmentDestroyEffectScale() { mixin(MGPC("float", 452)); }
			float FragmentHealthScale() { mixin(MGPC("float", 456)); }
			float FragmentMinHealth() { mixin(MGPC("float", 460)); }
			float FragmentMaxHealth() { mixin(MGPC("float", 464)); }
			StaticMesh SourceCoreMesh() { mixin(MGPC("StaticMesh", 376)); }
			float CoreMeshScale() { mixin(MGPC("float", 380)); }
			float ChunkLinVel() { mixin(MGPC("float", 472)); }
			float ChunkAngVel() { mixin(MGPC("float", 476)); }
			float ChunkLinHorizontalScale() { mixin(MGPC("float", 480)); }
			float ExplosionVelScale() { mixin(MGPC("float", 484)); }
			float ChanceOfPhysicsChunk() { mixin(MGPC("float", 504)); }
			float ExplosionChanceOfPhysicsChunk() { mixin(MGPC("float", 508)); }
			float NormalPhysicsChunkScaleMin() { mixin(MGPC("float", 512)); }
			float NormalPhysicsChunkScaleMax() { mixin(MGPC("float", 516)); }
			float ExplosionPhysicsChunkScaleMin() { mixin(MGPC("float", 520)); }
			float ExplosionPhysicsChunkScaleMax() { mixin(MGPC("float", 524)); }
			float MinConnectionSupportArea() { mixin(MGPC("float", 528)); }
			MaterialInterface DynamicOutsideMaterial() { mixin(MGPC("MaterialInterface", 532)); }
			MaterialInterface LoseChunkOutsideMaterial() { mixin(MGPC("MaterialInterface", 536)); }
			int OutsideMaterialIndex() { mixin(MGPC("int", 540)); }
		}
		bool bUniformFragmentHealth() { mixin(MGBPC(468, 0x1)); }
		bool bUniformFragmentHealth(bool val) { mixin(MSBPC(468, 0x1)); }
		bool bSliceUsingCoreCollision() { mixin(MGBPC(432, 0x1)); }
		bool bSliceUsingCoreCollision(bool val) { mixin(MSBPC(432, 0x1)); }
		bool bCompositeChunksExplodeOnImpact() { mixin(MGBPC(488, 0x1)); }
		bool bCompositeChunksExplodeOnImpact(bool val) { mixin(MSBPC(488, 0x1)); }
		bool bFixIsolatedChunks() { mixin(MGBPC(492, 0x1)); }
		bool bFixIsolatedChunks(bool val) { mixin(MSBPC(492, 0x1)); }
		bool bAlwaysBreakOffIsolatedIslands() { mixin(MGBPC(496, 0x1)); }
		bool bAlwaysBreakOffIsolatedIslands(bool val) { mixin(MSBPC(496, 0x1)); }
		bool bSpawnPhysicsChunks() { mixin(MGBPC(500, 0x1)); }
		bool bSpawnPhysicsChunks(bool val) { mixin(MSBPC(500, 0x1)); }
	}
}
