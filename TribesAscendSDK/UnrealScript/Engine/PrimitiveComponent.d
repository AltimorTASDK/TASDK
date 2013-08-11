module UnrealScript.Engine.PrimitiveComponent;

import ScriptClasses;
import UnrealScript.Engine.ActorComponent;
import UnrealScript.Engine.Scene;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PhysicalMaterial;
import UnrealScript.Engine.RB_BodyInstance;
import UnrealScript.Engine.LightComponent;

extern(C++) interface PrimitiveComponent : ActorComponent
{
	enum GJKResult : ubyte
	{
		GJK_Intersect = 0,
		GJK_NoIntersection = 1,
		GJK_Fail = 2,
		GJK_MAX = 3,
	}
	enum ERBCollisionChannel : ubyte
	{
		RBCC_Default = 0,
		RBCC_Nothing = 1,
		RBCC_Pawn = 2,
		RBCC_Vehicle = 3,
		RBCC_Water = 4,
		RBCC_GameplayPhysics = 5,
		RBCC_EffectPhysics = 6,
		RBCC_Untitled1 = 7,
		RBCC_Untitled2 = 8,
		RBCC_Untitled3 = 9,
		RBCC_Untitled4 = 10,
		RBCC_Cloth = 11,
		RBCC_FluidDrain = 12,
		RBCC_SoftBody = 13,
		RBCC_FracturedMeshPart = 14,
		RBCC_BlockingVolume = 15,
		RBCC_DeadPawn = 16,
		RBCC_Clothing = 17,
		RBCC_ClothingCollision = 18,
		RBCC_MAX = 19,
	}
	enum ERadialImpulseFalloff : ubyte
	{
		RIF_Constant = 0,
		RIF_Linear = 1,
		RIF_MAX = 2,
	}
	struct RBCollisionChannelContainer
	{
		public @property final bool Default() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
		public @property final bool Default(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		private ubyte __Default[4];
		public @property final bool Nothing() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2) != 0; }
		public @property final bool Nothing(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2; } return val; }
		private ubyte __Nothing[4];
		// WARNING: Property 'Pawn' has the same name as a defined type!
		// WARNING: Property 'Vehicle' has the same name as a defined type!
		public @property final bool Water() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x10) != 0; }
		public @property final bool Water(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x10; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x10; } return val; }
		private ubyte __Water[4];
		public @property final bool GameplayPhysics() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x20) != 0; }
		public @property final bool GameplayPhysics(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x20; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x20; } return val; }
		private ubyte __GameplayPhysics[4];
		public @property final bool EffectPhysics() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x40) != 0; }
		public @property final bool EffectPhysics(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x40; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x40; } return val; }
		private ubyte __EffectPhysics[4];
		public @property final bool Untitled1() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x80) != 0; }
		public @property final bool Untitled1(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x80; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x80; } return val; }
		private ubyte __Untitled1[4];
		public @property final bool Untitled2() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x100) != 0; }
		public @property final bool Untitled2(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x100; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x100; } return val; }
		private ubyte __Untitled2[4];
		public @property final bool Untitled3() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x200) != 0; }
		public @property final bool Untitled3(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x200; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x200; } return val; }
		private ubyte __Untitled3[4];
		public @property final bool Untitled4() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x400) != 0; }
		public @property final bool Untitled4(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x400; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x400; } return val; }
		private ubyte __Untitled4[4];
		public @property final bool Cloth() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x800) != 0; }
		public @property final bool Cloth(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x800; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x800; } return val; }
		private ubyte __Cloth[4];
		public @property final bool FluidDrain() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1000) != 0; }
		public @property final bool FluidDrain(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1000; } return val; }
		private ubyte __FluidDrain[4];
		public @property final bool SoftBody() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2000) != 0; }
		public @property final bool SoftBody(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2000; } return val; }
		private ubyte __SoftBody[4];
		public @property final bool FracturedMeshPart() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x4000) != 0; }
		public @property final bool FracturedMeshPart(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x4000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x4000; } return val; }
		private ubyte __FracturedMeshPart[4];
		// WARNING: Property 'BlockingVolume' has the same name as a defined type!
		public @property final bool DeadPawn() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x10000) != 0; }
		public @property final bool DeadPawn(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x10000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x10000; } return val; }
		private ubyte __DeadPawn[4];
		public @property final bool Clothing() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x20000) != 0; }
		public @property final bool Clothing(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x20000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x20000; } return val; }
		private ubyte __Clothing[4];
		public @property final bool ClothingCollision() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x40000) != 0; }
		public @property final bool ClothingCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x40000; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x40000; } return val; }
		private ubyte __ClothingCollision[4];
	}
	struct MaterialViewRelevance
	{
		public @property final bool bOpaque() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
		public @property final bool bOpaque(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		private ubyte __bOpaque[4];
		public @property final bool bTranslucent() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2) != 0; }
		public @property final bool bTranslucent(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2; } return val; }
		private ubyte __bTranslucent[4];
		public @property final bool bDistortion() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x4) != 0; }
		public @property final bool bDistortion(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x4; } return val; }
		private ubyte __bDistortion[4];
		public @property final bool bOneLayerDistortionRelevance() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x8) != 0; }
		public @property final bool bOneLayerDistortionRelevance(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x8; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x8; } return val; }
		private ubyte __bOneLayerDistortionRelevance[4];
		public @property final bool bLit() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x10) != 0; }
		public @property final bool bLit(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x10; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x10; } return val; }
		private ubyte __bLit[4];
		public @property final bool bUsesSceneColor() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x20) != 0; }
		public @property final bool bUsesSceneColor(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x20; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x20; } return val; }
		private ubyte __bUsesSceneColor[4];
	}
	public @property final auto ref int Tag() { return *cast(int*)(cast(size_t)cast(void*)this + 88); }
	public @property final auto ref UObject.Matrix LocalToWorld() { return *cast(UObject.Matrix*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref int ThreadTag() { return *cast(int*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref UObject.BoxSphereBounds Bounds() { return *cast(UObject.BoxSphereBounds*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref UObject.Pointer SceneInfo() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref int DetachFence() { return *cast(int*)(cast(size_t)cast(void*)this + 152); }
	public @property final auto ref float LocalToWorldDeterminant() { return *cast(float*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref int MotionBlurInfoIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 224); }
	public @property final auto ref ScriptArray!(UObject.Pointer) DecalList() { return *cast(ScriptArray!(UObject.Pointer)*)(cast(size_t)cast(void*)this + 228); }
	public @property final auto ref ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void*) DecalsToReattach() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void*)*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref float MinDrawDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 276); }
	public @property final auto ref float MassiveLODDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 280); }
	public @property final auto ref float MaxDrawDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 284); }
	public @property final auto ref float CachedMaxDrawDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 288); }
	public @property final auto ref float CullDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 292); }
	public @property final auto ref float CachedCullDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 296); }
	public @property final auto ref Scene.ESceneDepthPriorityGroup DepthPriorityGroup() { return *cast(Scene.ESceneDepthPriorityGroup*)(cast(size_t)cast(void*)this + 300); }
	public @property final auto ref Scene.ESceneDepthPriorityGroup ViewOwnerDepthPriorityGroup() { return *cast(Scene.ESceneDepthPriorityGroup*)(cast(size_t)cast(void*)this + 301); }
	public @property final auto ref Scene.EDetailMode DetailMode() { return *cast(Scene.EDetailMode*)(cast(size_t)cast(void*)this + 302); }
	public @property final auto ref PrimitiveComponent.ERBCollisionChannel RBChannel() { return *cast(PrimitiveComponent.ERBCollisionChannel*)(cast(size_t)cast(void*)this + 303); }
	public @property final auto ref ubyte RBDominanceGroup() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 304); }
	public @property final auto ref ubyte PreviewEnvironmentShadowing() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 305); }
	public @property final auto ref float MotionBlurScale() { return *cast(float*)(cast(size_t)cast(void*)this + 308); }
	public @property final bool bUseViewOwnerDepthPriorityGroup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 312) & 0x1) != 0; }
	public @property final bool bUseViewOwnerDepthPriorityGroup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 312) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 312) &= ~0x1; } return val; }
	public @property final bool bAllowCullDistanceVolume() { return (*cast(uint*)(cast(size_t)cast(void*)this + 312) & 0x2) != 0; }
	public @property final bool bAllowCullDistanceVolume(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 312) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 312) &= ~0x2; } return val; }
	public @property final bool HiddenGame() { return (*cast(uint*)(cast(size_t)cast(void*)this + 312) & 0x4) != 0; }
	public @property final bool HiddenGame(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 312) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 312) &= ~0x4; } return val; }
	public @property final bool HiddenEditor() { return (*cast(uint*)(cast(size_t)cast(void*)this + 312) & 0x8) != 0; }
	public @property final bool HiddenEditor(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 312) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 312) &= ~0x8; } return val; }
	public @property final bool bOwnerNoSee() { return (*cast(uint*)(cast(size_t)cast(void*)this + 312) & 0x10) != 0; }
	public @property final bool bOwnerNoSee(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 312) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 312) &= ~0x10; } return val; }
	public @property final bool bOnlyOwnerSee() { return (*cast(uint*)(cast(size_t)cast(void*)this + 312) & 0x20) != 0; }
	public @property final bool bOnlyOwnerSee(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 312) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 312) &= ~0x20; } return val; }
	public @property final bool bIgnoreOwnerHidden() { return (*cast(uint*)(cast(size_t)cast(void*)this + 312) & 0x40) != 0; }
	public @property final bool bIgnoreOwnerHidden(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 312) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 312) &= ~0x40; } return val; }
	public @property final bool bUseAsOccluder() { return (*cast(uint*)(cast(size_t)cast(void*)this + 312) & 0x80) != 0; }
	public @property final bool bUseAsOccluder(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 312) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 312) &= ~0x80; } return val; }
	public @property final bool bAllowApproximateOcclusion() { return (*cast(uint*)(cast(size_t)cast(void*)this + 312) & 0x100) != 0; }
	public @property final bool bAllowApproximateOcclusion(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 312) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 312) &= ~0x100; } return val; }
	public @property final bool bFirstFrameOcclusion() { return (*cast(uint*)(cast(size_t)cast(void*)this + 312) & 0x200) != 0; }
	public @property final bool bFirstFrameOcclusion(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 312) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 312) &= ~0x200; } return val; }
	public @property final bool bIgnoreNearPlaneIntersection() { return (*cast(uint*)(cast(size_t)cast(void*)this + 312) & 0x400) != 0; }
	public @property final bool bIgnoreNearPlaneIntersection(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 312) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 312) &= ~0x400; } return val; }
	public @property final bool bSelectable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 312) & 0x800) != 0; }
	public @property final bool bSelectable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 312) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 312) &= ~0x800; } return val; }
	public @property final bool bForceMipStreaming() { return (*cast(uint*)(cast(size_t)cast(void*)this + 312) & 0x1000) != 0; }
	public @property final bool bForceMipStreaming(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 312) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 312) &= ~0x1000; } return val; }
	public @property final bool bAcceptsDecals() { return (*cast(uint*)(cast(size_t)cast(void*)this + 312) & 0x2000) != 0; }
	public @property final bool bAcceptsDecals(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 312) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 312) &= ~0x2000; } return val; }
	public @property final bool bAcceptsDecalsDuringGameplay() { return (*cast(uint*)(cast(size_t)cast(void*)this + 312) & 0x4000) != 0; }
	public @property final bool bAcceptsDecalsDuringGameplay(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 312) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 312) &= ~0x4000; } return val; }
	public @property final bool bAcceptsStaticDecals() { return (*cast(uint*)(cast(size_t)cast(void*)this + 312) & 0x8000) != 0; }
	public @property final bool bAcceptsStaticDecals(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 312) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 312) &= ~0x8000; } return val; }
	public @property final bool bAcceptsDynamicDecals() { return (*cast(uint*)(cast(size_t)cast(void*)this + 312) & 0x10000) != 0; }
	public @property final bool bAcceptsDynamicDecals(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 312) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 312) &= ~0x10000; } return val; }
	public @property final bool bIsRefreshingDecals() { return (*cast(uint*)(cast(size_t)cast(void*)this + 312) & 0x20000) != 0; }
	public @property final bool bIsRefreshingDecals(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 312) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 312) &= ~0x20000; } return val; }
	public @property final bool bAllowDecalAutomaticReAttach() { return (*cast(uint*)(cast(size_t)cast(void*)this + 312) & 0x40000) != 0; }
	public @property final bool bAllowDecalAutomaticReAttach(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 312) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 312) &= ~0x40000; } return val; }
	public @property final bool CastShadow() { return (*cast(uint*)(cast(size_t)cast(void*)this + 312) & 0x80000) != 0; }
	public @property final bool CastShadow(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 312) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 312) &= ~0x80000; } return val; }
	public @property final bool bForceDirectLightMap() { return (*cast(uint*)(cast(size_t)cast(void*)this + 312) & 0x100000) != 0; }
	public @property final bool bForceDirectLightMap(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 312) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 312) &= ~0x100000; } return val; }
	public @property final bool bCastDynamicShadow() { return (*cast(uint*)(cast(size_t)cast(void*)this + 312) & 0x200000) != 0; }
	public @property final bool bCastDynamicShadow(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 312) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 312) &= ~0x200000; } return val; }
	public @property final bool bUsesPlayerShadowFadeResolution() { return (*cast(uint*)(cast(size_t)cast(void*)this + 312) & 0x400000) != 0; }
	public @property final bool bUsesPlayerShadowFadeResolution(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 312) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 312) &= ~0x400000; } return val; }
	public @property final bool bSelfShadowOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 312) & 0x800000) != 0; }
	public @property final bool bSelfShadowOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 312) |= 0x800000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 312) &= ~0x800000; } return val; }
	public @property final bool bAcceptsDynamicDominantLightShadows() { return (*cast(uint*)(cast(size_t)cast(void*)this + 312) & 0x1000000) != 0; }
	public @property final bool bAcceptsDynamicDominantLightShadows(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 312) |= 0x1000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 312) &= ~0x1000000; } return val; }
	public @property final bool bCastHiddenShadow() { return (*cast(uint*)(cast(size_t)cast(void*)this + 312) & 0x2000000) != 0; }
	public @property final bool bCastHiddenShadow(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 312) |= 0x2000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 312) &= ~0x2000000; } return val; }
	public @property final bool bCastShadowAsTwoSided() { return (*cast(uint*)(cast(size_t)cast(void*)this + 312) & 0x4000000) != 0; }
	public @property final bool bCastShadowAsTwoSided(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 312) |= 0x4000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 312) &= ~0x4000000; } return val; }
	public @property final bool bAcceptsLights() { return (*cast(uint*)(cast(size_t)cast(void*)this + 312) & 0x8000000) != 0; }
	public @property final bool bAcceptsLights(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 312) |= 0x8000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 312) &= ~0x8000000; } return val; }
	public @property final bool bAcceptsDynamicLights() { return (*cast(uint*)(cast(size_t)cast(void*)this + 312) & 0x10000000) != 0; }
	public @property final bool bAcceptsDynamicLights(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 312) |= 0x10000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 312) &= ~0x10000000; } return val; }
	public @property final bool bUseOnePassLightingOnTranslucency() { return (*cast(uint*)(cast(size_t)cast(void*)this + 312) & 0x20000000) != 0; }
	public @property final bool bUseOnePassLightingOnTranslucency(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 312) |= 0x20000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 312) &= ~0x20000000; } return val; }
	public @property final bool bUsePrecomputedShadows() { return (*cast(uint*)(cast(size_t)cast(void*)this + 312) & 0x40000000) != 0; }
	public @property final bool bUsePrecomputedShadows(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 312) |= 0x40000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 312) &= ~0x40000000; } return val; }
	public @property final bool bHasExplicitShadowParent() { return (*cast(uint*)(cast(size_t)cast(void*)this + 312) & 0x80000000) != 0; }
	public @property final bool bHasExplicitShadowParent(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 312) |= 0x80000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 312) &= ~0x80000000; } return val; }
	public @property final bool bCullModulatedShadowOnBackfaces() { return (*cast(uint*)(cast(size_t)cast(void*)this + 316) & 0x1) != 0; }
	public @property final bool bCullModulatedShadowOnBackfaces(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 316) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 316) &= ~0x1; } return val; }
	public @property final bool bCullModulatedShadowOnEmissive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 316) & 0x2) != 0; }
	public @property final bool bCullModulatedShadowOnEmissive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 316) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 316) &= ~0x2; } return val; }
	public @property final bool bAllowAmbientOcclusion() { return (*cast(uint*)(cast(size_t)cast(void*)this + 316) & 0x4) != 0; }
	public @property final bool bAllowAmbientOcclusion(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 316) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 316) &= ~0x4; } return val; }
	public @property final bool CollideActors() { return (*cast(uint*)(cast(size_t)cast(void*)this + 316) & 0x8) != 0; }
	public @property final bool CollideActors(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 316) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 316) &= ~0x8; } return val; }
	public @property final bool AlwaysCheckCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 316) & 0x10) != 0; }
	public @property final bool AlwaysCheckCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 316) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 316) &= ~0x10; } return val; }
	public @property final bool BlockActors() { return (*cast(uint*)(cast(size_t)cast(void*)this + 316) & 0x20) != 0; }
	public @property final bool BlockActors(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 316) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 316) &= ~0x20; } return val; }
	public @property final bool BlockZeroExtent() { return (*cast(uint*)(cast(size_t)cast(void*)this + 316) & 0x40) != 0; }
	public @property final bool BlockZeroExtent(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 316) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 316) &= ~0x40; } return val; }
	public @property final bool BlockNonZeroExtent() { return (*cast(uint*)(cast(size_t)cast(void*)this + 316) & 0x80) != 0; }
	public @property final bool BlockNonZeroExtent(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 316) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 316) &= ~0x80; } return val; }
	public @property final bool CanBlockCamera() { return (*cast(uint*)(cast(size_t)cast(void*)this + 316) & 0x100) != 0; }
	public @property final bool CanBlockCamera(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 316) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 316) &= ~0x100; } return val; }
	public @property final bool BlockRigidBody() { return (*cast(uint*)(cast(size_t)cast(void*)this + 316) & 0x200) != 0; }
	public @property final bool BlockRigidBody(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 316) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 316) &= ~0x200; } return val; }
	public @property final bool bDisableAllRigidBody() { return (*cast(uint*)(cast(size_t)cast(void*)this + 316) & 0x400) != 0; }
	public @property final bool bDisableAllRigidBody(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 316) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 316) &= ~0x400; } return val; }
	public @property final bool bSkipRBGeomCreation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 316) & 0x800) != 0; }
	public @property final bool bSkipRBGeomCreation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 316) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 316) &= ~0x800; } return val; }
	public @property final bool bNotifyRigidBodyCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 316) & 0x1000) != 0; }
	public @property final bool bNotifyRigidBodyCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 316) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 316) &= ~0x1000; } return val; }
	public @property final bool bFluidDrain() { return (*cast(uint*)(cast(size_t)cast(void*)this + 316) & 0x2000) != 0; }
	public @property final bool bFluidDrain(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 316) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 316) &= ~0x2000; } return val; }
	public @property final bool bFluidTwoWay() { return (*cast(uint*)(cast(size_t)cast(void*)this + 316) & 0x4000) != 0; }
	public @property final bool bFluidTwoWay(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 316) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 316) &= ~0x4000; } return val; }
	public @property final bool bIgnoreRadialImpulse() { return (*cast(uint*)(cast(size_t)cast(void*)this + 316) & 0x8000) != 0; }
	public @property final bool bIgnoreRadialImpulse(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 316) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 316) &= ~0x8000; } return val; }
	public @property final bool bIgnoreRadialForce() { return (*cast(uint*)(cast(size_t)cast(void*)this + 316) & 0x10000) != 0; }
	public @property final bool bIgnoreRadialForce(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 316) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 316) &= ~0x10000; } return val; }
	public @property final bool bIgnoreForceField() { return (*cast(uint*)(cast(size_t)cast(void*)this + 316) & 0x20000) != 0; }
	public @property final bool bIgnoreForceField(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 316) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 316) &= ~0x20000; } return val; }
	public @property final bool bUseCompartment() { return (*cast(uint*)(cast(size_t)cast(void*)this + 316) & 0x40000) != 0; }
	public @property final bool bUseCompartment(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 316) |= 0x40000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 316) &= ~0x40000; } return val; }
	public @property final bool AlwaysLoadOnClient() { return (*cast(uint*)(cast(size_t)cast(void*)this + 316) & 0x80000) != 0; }
	public @property final bool AlwaysLoadOnClient(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 316) |= 0x80000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 316) &= ~0x80000; } return val; }
	public @property final bool AlwaysLoadOnServer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 316) & 0x100000) != 0; }
	public @property final bool AlwaysLoadOnServer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 316) |= 0x100000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 316) &= ~0x100000; } return val; }
	public @property final bool bIgnoreHiddenActorsMembership() { return (*cast(uint*)(cast(size_t)cast(void*)this + 316) & 0x200000) != 0; }
	public @property final bool bIgnoreHiddenActorsMembership(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 316) |= 0x200000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 316) &= ~0x200000; } return val; }
	public @property final bool AbsoluteTranslation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 316) & 0x400000) != 0; }
	public @property final bool AbsoluteTranslation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 316) |= 0x400000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 316) &= ~0x400000; } return val; }
	public @property final bool AbsoluteRotation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 316) & 0x800000) != 0; }
	public @property final bool AbsoluteRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 316) |= 0x800000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 316) &= ~0x800000; } return val; }
	public @property final bool AbsoluteScale() { return (*cast(uint*)(cast(size_t)cast(void*)this + 316) & 0x1000000) != 0; }
	public @property final bool AbsoluteScale(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 316) |= 0x1000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 316) &= ~0x1000000; } return val; }
	public @property final bool bAllowShadowFade() { return (*cast(uint*)(cast(size_t)cast(void*)this + 316) & 0x2000000) != 0; }
	public @property final bool bAllowShadowFade(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 316) |= 0x2000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 316) &= ~0x2000000; } return val; }
	public @property final bool bWasSNFiltered() { return (*cast(uint*)(cast(size_t)cast(void*)this + 316) & 0x4000000) != 0; }
	public @property final bool bWasSNFiltered(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 316) |= 0x4000000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 316) &= ~0x4000000; } return val; }
	public @property final auto ref ScriptArray!(int) OctreeNodes() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 320); }
	public @property final auto ref int TranslucencySortPriority() { return *cast(int*)(cast(size_t)cast(void*)this + 332); }
	public @property final auto ref int VisibilityId() { return *cast(int*)(cast(size_t)cast(void*)this + 336); }
	public @property final auto ref LightComponent.LightingChannelContainer LightingChannels() { return *cast(LightComponent.LightingChannelContainer*)(cast(size_t)cast(void*)this + 340); }
	public @property final auto ref PrimitiveComponent.RBCollisionChannelContainer RBCollideWithChannels() { return *cast(PrimitiveComponent.RBCollisionChannelContainer*)(cast(size_t)cast(void*)this + 344); }
	public @property final auto ref PhysicalMaterial PhysMaterialOverride() { return *cast(PhysicalMaterial*)(cast(size_t)cast(void*)this + 348); }
	public @property final auto ref RB_BodyInstance BodyInstance() { return *cast(RB_BodyInstance*)(cast(size_t)cast(void*)this + 352); }
	public @property final auto ref UObject.Matrix CachedParentToWorld() { return *cast(UObject.Matrix*)(cast(size_t)cast(void*)this + 368); }
	public @property final auto ref Vector Translation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 432); }
	public @property final auto ref Rotator Rotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 444); }
	public @property final auto ref float Scale() { return *cast(float*)(cast(size_t)cast(void*)this + 456); }
	public @property final auto ref Vector Scale3D() { return *cast(Vector*)(cast(size_t)cast(void*)this + 460); }
	public @property final auto ref float BoundsScale() { return *cast(float*)(cast(size_t)cast(void*)this + 472); }
	public @property final auto ref float LastSubmitTime() { return *cast(float*)(cast(size_t)cast(void*)this + 476); }
	public @property final auto ref float LastRenderTime() { return *cast(float*)(cast(size_t)cast(void*)this + 480); }
	public @property final auto ref float ScriptRigidBodyCollisionThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 484); }
	final void SetBlockRigidBody(bool bNewBlockRigidBody)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewBlockRigidBody;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4339], params.ptr, cast(void*)0);
	}
	final void SetRBLinearVelocity(Vector NewVel, bool bAddToCurrent)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = NewVel;
		*cast(bool*)&params[12] = bAddToCurrent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4385], params.ptr, cast(void*)0);
	}
	final void AddImpulse(Vector Impulse, Vector Position, ScriptName BoneName, bool bVelChange)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Vector*)params.ptr = Impulse;
		*cast(Vector*)&params[12] = Position;
		*cast(ScriptName*)&params[24] = BoneName;
		*cast(bool*)&params[32] = bVelChange;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4749], params.ptr, cast(void*)0);
	}
	final void AddRadialImpulse(Vector Origin, float Radius, float Strength, PrimitiveComponent.ERadialImpulseFalloff Falloff, bool bVelChange)
	{
		ubyte params[25];
		params[] = 0;
		*cast(Vector*)params.ptr = Origin;
		*cast(float*)&params[12] = Radius;
		*cast(float*)&params[16] = Strength;
		*cast(PrimitiveComponent.ERadialImpulseFalloff*)&params[20] = Falloff;
		*cast(bool*)&params[24] = bVelChange;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4754], params.ptr, cast(void*)0);
	}
	final void AddForce(Vector Force, Vector Position, ScriptName BoneName)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Vector*)params.ptr = Force;
		*cast(Vector*)&params[12] = Position;
		*cast(ScriptName*)&params[24] = BoneName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4760], params.ptr, cast(void*)0);
	}
	final void AddRadialForce(Vector Origin, float Radius, float Strength, PrimitiveComponent.ERadialImpulseFalloff Falloff)
	{
		ubyte params[21];
		params[] = 0;
		*cast(Vector*)params.ptr = Origin;
		*cast(float*)&params[12] = Radius;
		*cast(float*)&params[16] = Strength;
		*cast(PrimitiveComponent.ERadialImpulseFalloff*)&params[20] = Falloff;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4764], params.ptr, cast(void*)0);
	}
	final void AddTorque(Vector Torque, ScriptName BoneName)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = Torque;
		*cast(ScriptName*)&params[12] = BoneName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4769], params.ptr, cast(void*)0);
	}
	final void SetRBAngularVelocity(Vector NewAngVel, bool bAddToCurrent)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = NewAngVel;
		*cast(bool*)&params[12] = bAddToCurrent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4774], params.ptr, cast(void*)0);
	}
	final void RetardRBLinearVelocity(Vector RetardDir, float VelScale)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = RetardDir;
		*cast(float*)&params[12] = VelScale;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4777], params.ptr, cast(void*)0);
	}
	final void SetRBPosition(Vector NewPos, ScriptName BoneName)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = NewPos;
		*cast(ScriptName*)&params[12] = BoneName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4780], params.ptr, cast(void*)0);
	}
	final void SetRBRotation(Rotator NewRot, ScriptName BoneName)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Rotator*)params.ptr = NewRot;
		*cast(ScriptName*)&params[12] = BoneName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4783], params.ptr, cast(void*)0);
	}
	final void WakeRigidBody(ScriptName BoneName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = BoneName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4786], params.ptr, cast(void*)0);
	}
	final void PutRigidBodyToSleep(ScriptName BoneName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = BoneName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4788], params.ptr, cast(void*)0);
	}
	final bool RigidBodyIsAwake(ScriptName BoneName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = BoneName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4790], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	final void SetRBCollidesWithChannel(PrimitiveComponent.ERBCollisionChannel Channel, bool bNewCollides)
	{
		ubyte params[5];
		params[] = 0;
		*cast(PrimitiveComponent.ERBCollisionChannel*)params.ptr = Channel;
		*cast(bool*)&params[4] = bNewCollides;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4794], params.ptr, cast(void*)0);
	}
	final void SetRBCollisionChannels(PrimitiveComponent.RBCollisionChannelContainer Channels)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PrimitiveComponent.RBCollisionChannelContainer*)params.ptr = Channels;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4797], params.ptr, cast(void*)0);
	}
	final void SetRBChannel(PrimitiveComponent.ERBCollisionChannel Channel)
	{
		ubyte params[1];
		params[] = 0;
		*cast(PrimitiveComponent.ERBCollisionChannel*)params.ptr = Channel;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4818], params.ptr, cast(void*)0);
	}
	final void SetNotifyRigidBodyCollision(bool bNewNotifyRigidBodyCollision)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewNotifyRigidBodyCollision;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4820], params.ptr, cast(void*)0);
	}
	final void InitRBPhys()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4822], cast(void*)0, cast(void*)0);
	}
	final void SetPhysMaterialOverride(PhysicalMaterial NewPhysMaterial)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PhysicalMaterial*)params.ptr = NewPhysMaterial;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4823], params.ptr, cast(void*)0);
	}
	final RB_BodyInstance GetRootBodyInstance()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4825], params.ptr, cast(void*)0);
		return *cast(RB_BodyInstance*)params.ptr;
	}
	final void SetRBDominanceGroup(ubyte InDomGroup)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = InDomGroup;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4827], params.ptr, cast(void*)0);
	}
	final bool ShouldComponentAddToScene()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4829], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void SetHidden(bool NewHidden)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = NewHidden;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4831], params.ptr, cast(void*)0);
	}
	final void SetOwnerNoSee(bool bNewOwnerNoSee)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewOwnerNoSee;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4833], params.ptr, cast(void*)0);
	}
	final void SetOnlyOwnerSee(bool bNewOnlyOwnerSee)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewOnlyOwnerSee;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4835], params.ptr, cast(void*)0);
	}
	final void SetIgnoreOwnerHidden(bool bNewIgnoreOwnerHidden)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewIgnoreOwnerHidden;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4837], params.ptr, cast(void*)0);
	}
	final void SetShadowParent(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* NewShadowParent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = NewShadowParent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4839], params.ptr, cast(void*)0);
	}
	final void SetLightEnvironment(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* NewLightEnvironment)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = NewLightEnvironment;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4841], params.ptr, cast(void*)0);
	}
	final void SetCullDistance(float NewCullDistance)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewCullDistance;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4843], params.ptr, cast(void*)0);
	}
	final void SetLightingChannels(LightComponent.LightingChannelContainer NewLightingChannels)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LightComponent.LightingChannelContainer*)params.ptr = NewLightingChannels;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4873], params.ptr, cast(void*)0);
	}
	final void SetDepthPriorityGroup(Scene.ESceneDepthPriorityGroup NewDepthPriorityGroup)
	{
		ubyte params[1];
		params[] = 0;
		*cast(Scene.ESceneDepthPriorityGroup*)params.ptr = NewDepthPriorityGroup;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4875], params.ptr, cast(void*)0);
	}
	final void SetViewOwnerDepthPriorityGroup(bool bNewUseViewOwnerDepthPriorityGroup, Scene.ESceneDepthPriorityGroup NewViewOwnerDepthPriorityGroup)
	{
		ubyte params[5];
		params[] = 0;
		*cast(bool*)params.ptr = bNewUseViewOwnerDepthPriorityGroup;
		*cast(Scene.ESceneDepthPriorityGroup*)&params[4] = NewViewOwnerDepthPriorityGroup;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4877], params.ptr, cast(void*)0);
	}
	final void SetTraceBlocking(bool NewBlockZeroExtent, bool NewBlockNonZeroExtent)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = NewBlockZeroExtent;
		*cast(bool*)&params[4] = NewBlockNonZeroExtent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4880], params.ptr, cast(void*)0);
	}
	final void SetActorCollision(bool NewCollideActors, bool NewBlockActors, bool NewAlwaysCheckCollision)
	{
		ubyte params[12];
		params[] = 0;
		*cast(bool*)params.ptr = NewCollideActors;
		*cast(bool*)&params[4] = NewBlockActors;
		*cast(bool*)&params[8] = NewAlwaysCheckCollision;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4883], params.ptr, cast(void*)0);
	}
	final void SetTranslation(Vector NewTranslation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = NewTranslation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4887], params.ptr, cast(void*)0);
	}
	final void SetRotation(Rotator NewRotation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Rotator*)params.ptr = NewRotation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4889], params.ptr, cast(void*)0);
	}
	final void SetScale(float NewScale)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewScale;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4891], params.ptr, cast(void*)0);
	}
	final void SetScale3D(Vector NewScale3D)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = NewScale3D;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4893], params.ptr, cast(void*)0);
	}
	final void SetAbsolute(bool NewAbsoluteTranslation, bool NewAbsoluteRotation, bool NewAbsoluteScale)
	{
		ubyte params[12];
		params[] = 0;
		*cast(bool*)params.ptr = NewAbsoluteTranslation;
		*cast(bool*)&params[4] = NewAbsoluteRotation;
		*cast(bool*)&params[8] = NewAbsoluteScale;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4895], params.ptr, cast(void*)0);
	}
	final Vector GetPosition()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4899], params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	final Rotator GetRotation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4903], params.ptr, cast(void*)0);
		return *cast(Rotator*)params.ptr;
	}
	final PrimitiveComponent.GJKResult ClosestPointOnComponentToPoint(Vector* POI, Vector* Extent, Vector* OutPointA, Vector* OutPointB)
	{
		ubyte params[49];
		params[] = 0;
		*cast(Vector*)params.ptr = *POI;
		*cast(Vector*)&params[12] = *Extent;
		*cast(Vector*)&params[24] = *OutPointA;
		*cast(Vector*)&params[36] = *OutPointB;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4905], params.ptr, cast(void*)0);
		*POI = *cast(Vector*)params.ptr;
		*Extent = *cast(Vector*)&params[12];
		*OutPointA = *cast(Vector*)&params[24];
		*OutPointB = *cast(Vector*)&params[36];
		return *cast(PrimitiveComponent.GJKResult*)&params[48];
	}
	final PrimitiveComponent.GJKResult ClosestPointOnComponentToComponent(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void** OtherComponent, Vector* PointOnComponentA, Vector* PointOnComponentB)
	{
		ubyte params[29];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = *OtherComponent;
		*cast(Vector*)&params[4] = *PointOnComponentA;
		*cast(Vector*)&params[16] = *PointOnComponentB;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[4911], params.ptr, cast(void*)0);
		*OtherComponent = *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr;
		*PointOnComponentA = *cast(Vector*)&params[4];
		*PointOnComponentB = *cast(Vector*)&params[16];
		return *cast(PrimitiveComponent.GJKResult*)&params[28];
	}
}
