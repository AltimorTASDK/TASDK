module UnrealScript.Engine.InstancedStaticMeshComponent;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.StaticMeshComponent;
import UnrealScript.Engine.ShadowMap2D;

extern(C++) interface InstancedStaticMeshComponent : StaticMeshComponent
{
	struct InstancedStaticMeshInstanceData
	{
		public @property final auto ref UObject.Vector2D ShadowmapUVBias() { return *cast(UObject.Vector2D*)(cast(size_t)&this + 72); }
		private ubyte __ShadowmapUVBias[8];
		public @property final auto ref UObject.Vector2D LightmapUVBias() { return *cast(UObject.Vector2D*)(cast(size_t)&this + 64); }
		private ubyte __LightmapUVBias[8];
		public @property final auto ref UObject.Matrix Transform() { return *cast(UObject.Matrix*)(cast(size_t)&this + 0); }
		private ubyte __Transform[64];
	}
	struct InstancedStaticMeshMappingInfo
	{
		public @property final auto ref ShadowMap2D ShadowmapTexture() { return *cast(ShadowMap2D*)(cast(size_t)&this + 12); }
		private ubyte __ShadowmapTexture[4];
		public @property final auto ref Texture2D LightmapTexture() { return *cast(Texture2D*)(cast(size_t)&this + 8); }
		private ubyte __LightmapTexture[4];
		public @property final auto ref UObject.Pointer LightMap() { return *cast(UObject.Pointer*)(cast(size_t)&this + 4); }
		private ubyte __LightMap[4];
		public @property final auto ref UObject.Pointer Mapping() { return *cast(UObject.Pointer*)(cast(size_t)&this + 0); }
		private ubyte __Mapping[4];
	}
	public @property final auto ref ScriptArray!(InstancedStaticMeshComponent.InstancedStaticMeshInstanceData) PerInstanceData() { return *cast(ScriptArray!(InstancedStaticMeshComponent.InstancedStaticMeshInstanceData)*)(cast(size_t)cast(void*)this + 608); }
	public @property final auto ref ScriptArray!(InstancedStaticMeshComponent.InstancedStaticMeshInstanceData) PerInstanceSMData() { return *cast(ScriptArray!(InstancedStaticMeshComponent.InstancedStaticMeshInstanceData)*)(cast(size_t)cast(void*)this + 620); }
	public @property final auto ref ScriptArray!(InstancedStaticMeshComponent.InstancedStaticMeshMappingInfo) CachedMappings() { return *cast(ScriptArray!(InstancedStaticMeshComponent.InstancedStaticMeshMappingInfo)*)(cast(size_t)cast(void*)this + 640); }
	public @property final auto ref int InstancingRandomSeed() { return *cast(int*)(cast(size_t)cast(void*)this + 652); }
	public @property final auto ref int ComponentJoinKey() { return *cast(int*)(cast(size_t)cast(void*)this + 636); }
	public @property final auto ref int NumPendingLightmaps() { return *cast(int*)(cast(size_t)cast(void*)this + 632); }
}
