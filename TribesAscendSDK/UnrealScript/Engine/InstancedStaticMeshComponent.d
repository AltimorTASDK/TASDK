module UnrealScript.Engine.InstancedStaticMeshComponent;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.StaticMeshComponent;
import UnrealScript.Engine.ShadowMap2D;

extern(C++) interface InstancedStaticMeshComponent : StaticMeshComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InstancedStaticMeshComponent")); }
	struct InstancedStaticMeshInstanceData
	{
		private ubyte __buffer__[80];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.InstancedStaticMeshComponent.InstancedStaticMeshInstanceData")); }
		@property final auto ref
		{
			UObject.Vector2D ShadowmapUVBias() { return *cast(UObject.Vector2D*)(cast(size_t)&this + 72); }
			UObject.Vector2D LightmapUVBias() { return *cast(UObject.Vector2D*)(cast(size_t)&this + 64); }
			UObject.Matrix Transform() { return *cast(UObject.Matrix*)(cast(size_t)&this + 0); }
		}
	}
	struct InstancedStaticMeshMappingInfo
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.InstancedStaticMeshComponent.InstancedStaticMeshMappingInfo")); }
		@property final auto ref
		{
			ShadowMap2D ShadowmapTexture() { return *cast(ShadowMap2D*)(cast(size_t)&this + 12); }
			Texture2D LightmapTexture() { return *cast(Texture2D*)(cast(size_t)&this + 8); }
			UObject.Pointer LightMap() { return *cast(UObject.Pointer*)(cast(size_t)&this + 4); }
			UObject.Pointer Mapping() { return *cast(UObject.Pointer*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(InstancedStaticMeshComponent.InstancedStaticMeshInstanceData) PerInstanceData() { return *cast(ScriptArray!(InstancedStaticMeshComponent.InstancedStaticMeshInstanceData)*)(cast(size_t)cast(void*)this + 608); }
		ScriptArray!(InstancedStaticMeshComponent.InstancedStaticMeshInstanceData) PerInstanceSMData() { return *cast(ScriptArray!(InstancedStaticMeshComponent.InstancedStaticMeshInstanceData)*)(cast(size_t)cast(void*)this + 620); }
		ScriptArray!(InstancedStaticMeshComponent.InstancedStaticMeshMappingInfo) CachedMappings() { return *cast(ScriptArray!(InstancedStaticMeshComponent.InstancedStaticMeshMappingInfo)*)(cast(size_t)cast(void*)this + 640); }
		int InstancingRandomSeed() { return *cast(int*)(cast(size_t)cast(void*)this + 652); }
		int ComponentJoinKey() { return *cast(int*)(cast(size_t)cast(void*)this + 636); }
		int NumPendingLightmaps() { return *cast(int*)(cast(size_t)cast(void*)this + 632); }
	}
}
