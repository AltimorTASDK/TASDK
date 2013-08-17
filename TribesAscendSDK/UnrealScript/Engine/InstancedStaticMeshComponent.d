module UnrealScript.Engine.InstancedStaticMeshComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.StaticMeshComponent;
import UnrealScript.Engine.ShadowMap2D;

extern(C++) interface InstancedStaticMeshComponent : StaticMeshComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.InstancedStaticMeshComponent")()); }
	private static __gshared InstancedStaticMeshComponent mDefaultProperties;
	@property final static InstancedStaticMeshComponent DefaultProperties() { mixin(MGDPC!(InstancedStaticMeshComponent, "InstancedStaticMeshComponent Engine.Default__InstancedStaticMeshComponent")()); }
	struct InstancedStaticMeshInstanceData
	{
		private ubyte __buffer__[80];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.InstancedStaticMeshComponent.InstancedStaticMeshInstanceData")()); }
		@property final auto ref
		{
			UObject.Vector2D ShadowmapUVBias() { mixin(MGPS!("UObject.Vector2D", 72)()); }
			UObject.Vector2D LightmapUVBias() { mixin(MGPS!("UObject.Vector2D", 64)()); }
			UObject.Matrix Transform() { mixin(MGPS!("UObject.Matrix", 0)()); }
		}
	}
	struct InstancedStaticMeshMappingInfo
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.InstancedStaticMeshComponent.InstancedStaticMeshMappingInfo")()); }
		@property final auto ref
		{
			ShadowMap2D ShadowmapTexture() { mixin(MGPS!("ShadowMap2D", 12)()); }
			Texture2D LightmapTexture() { mixin(MGPS!("Texture2D", 8)()); }
			UObject.Pointer LightMap() { mixin(MGPS!("UObject.Pointer", 4)()); }
			UObject.Pointer Mapping() { mixin(MGPS!("UObject.Pointer", 0)()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(InstancedStaticMeshComponent.InstancedStaticMeshInstanceData) PerInstanceData() { mixin(MGPC!("ScriptArray!(InstancedStaticMeshComponent.InstancedStaticMeshInstanceData)", 608)()); }
		ScriptArray!(InstancedStaticMeshComponent.InstancedStaticMeshInstanceData) PerInstanceSMData() { mixin(MGPC!("ScriptArray!(InstancedStaticMeshComponent.InstancedStaticMeshInstanceData)", 620)()); }
		ScriptArray!(InstancedStaticMeshComponent.InstancedStaticMeshMappingInfo) CachedMappings() { mixin(MGPC!("ScriptArray!(InstancedStaticMeshComponent.InstancedStaticMeshMappingInfo)", 640)()); }
		int InstancingRandomSeed() { mixin(MGPC!("int", 652)()); }
		int ComponentJoinKey() { mixin(MGPC!("int", 636)()); }
		int NumPendingLightmaps() { mixin(MGPC!("int", 632)()); }
	}
}
