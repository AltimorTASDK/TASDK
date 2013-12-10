module UnrealScript.Engine.PrimitiveComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorComponent;
import UnrealScript.Engine.Scene;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PhysicalMaterial;
import UnrealScript.Engine.RB_BodyInstance;
import UnrealScript.Engine.LightComponent;

extern(C++) interface PrimitiveComponent : ActorComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.PrimitiveComponent")); }
	private static __gshared PrimitiveComponent mDefaultProperties;
	@property final static PrimitiveComponent DefaultProperties() { mixin(MGDPC("PrimitiveComponent", "PrimitiveComponent Engine.Default__PrimitiveComponent")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetBlockRigidBody;
			ScriptFunction mSetRBLinearVelocity;
			ScriptFunction mAddImpulse;
			ScriptFunction mAddRadialImpulse;
			ScriptFunction mAddForce;
			ScriptFunction mAddRadialForce;
			ScriptFunction mAddTorque;
			ScriptFunction mSetRBAngularVelocity;
			ScriptFunction mRetardRBLinearVelocity;
			ScriptFunction mSetRBPosition;
			ScriptFunction mSetRBRotation;
			ScriptFunction mWakeRigidBody;
			ScriptFunction mPutRigidBodyToSleep;
			ScriptFunction mRigidBodyIsAwake;
			ScriptFunction mSetRBCollidesWithChannel;
			ScriptFunction mSetRBCollisionChannels;
			ScriptFunction mSetRBChannel;
			ScriptFunction mSetNotifyRigidBodyCollision;
			ScriptFunction mInitRBPhys;
			ScriptFunction mSetPhysMaterialOverride;
			ScriptFunction mGetRootBodyInstance;
			ScriptFunction mSetRBDominanceGroup;
			ScriptFunction mShouldComponentAddToScene;
			ScriptFunction mSetHidden;
			ScriptFunction mSetOwnerNoSee;
			ScriptFunction mSetOnlyOwnerSee;
			ScriptFunction mSetIgnoreOwnerHidden;
			ScriptFunction mSetShadowParent;
			ScriptFunction mSetLightEnvironment;
			ScriptFunction mSetCullDistance;
			ScriptFunction mSetLightingChannels;
			ScriptFunction mSetDepthPriorityGroup;
			ScriptFunction mSetViewOwnerDepthPriorityGroup;
			ScriptFunction mSetTraceBlocking;
			ScriptFunction mSetActorCollision;
			ScriptFunction mSetTranslation;
			ScriptFunction mSetRotation;
			ScriptFunction mSetScale;
			ScriptFunction mSetScale3D;
			ScriptFunction mSetAbsolute;
			ScriptFunction mGetPosition;
			ScriptFunction mGetRotation;
			ScriptFunction mClosestPointOnComponentToPoint;
			ScriptFunction mClosestPointOnComponentToComponent;
		}
		public @property static final
		{
			ScriptFunction SetBlockRigidBody() { mixin(MGF("mSetBlockRigidBody", "Function Engine.PrimitiveComponent.SetBlockRigidBody")); }
			ScriptFunction SetRBLinearVelocity() { mixin(MGF("mSetRBLinearVelocity", "Function Engine.PrimitiveComponent.SetRBLinearVelocity")); }
			ScriptFunction AddImpulse() { mixin(MGF("mAddImpulse", "Function Engine.PrimitiveComponent.AddImpulse")); }
			ScriptFunction AddRadialImpulse() { mixin(MGF("mAddRadialImpulse", "Function Engine.PrimitiveComponent.AddRadialImpulse")); }
			ScriptFunction AddForce() { mixin(MGF("mAddForce", "Function Engine.PrimitiveComponent.AddForce")); }
			ScriptFunction AddRadialForce() { mixin(MGF("mAddRadialForce", "Function Engine.PrimitiveComponent.AddRadialForce")); }
			ScriptFunction AddTorque() { mixin(MGF("mAddTorque", "Function Engine.PrimitiveComponent.AddTorque")); }
			ScriptFunction SetRBAngularVelocity() { mixin(MGF("mSetRBAngularVelocity", "Function Engine.PrimitiveComponent.SetRBAngularVelocity")); }
			ScriptFunction RetardRBLinearVelocity() { mixin(MGF("mRetardRBLinearVelocity", "Function Engine.PrimitiveComponent.RetardRBLinearVelocity")); }
			ScriptFunction SetRBPosition() { mixin(MGF("mSetRBPosition", "Function Engine.PrimitiveComponent.SetRBPosition")); }
			ScriptFunction SetRBRotation() { mixin(MGF("mSetRBRotation", "Function Engine.PrimitiveComponent.SetRBRotation")); }
			ScriptFunction WakeRigidBody() { mixin(MGF("mWakeRigidBody", "Function Engine.PrimitiveComponent.WakeRigidBody")); }
			ScriptFunction PutRigidBodyToSleep() { mixin(MGF("mPutRigidBodyToSleep", "Function Engine.PrimitiveComponent.PutRigidBodyToSleep")); }
			ScriptFunction RigidBodyIsAwake() { mixin(MGF("mRigidBodyIsAwake", "Function Engine.PrimitiveComponent.RigidBodyIsAwake")); }
			ScriptFunction SetRBCollidesWithChannel() { mixin(MGF("mSetRBCollidesWithChannel", "Function Engine.PrimitiveComponent.SetRBCollidesWithChannel")); }
			ScriptFunction SetRBCollisionChannels() { mixin(MGF("mSetRBCollisionChannels", "Function Engine.PrimitiveComponent.SetRBCollisionChannels")); }
			ScriptFunction SetRBChannel() { mixin(MGF("mSetRBChannel", "Function Engine.PrimitiveComponent.SetRBChannel")); }
			ScriptFunction SetNotifyRigidBodyCollision() { mixin(MGF("mSetNotifyRigidBodyCollision", "Function Engine.PrimitiveComponent.SetNotifyRigidBodyCollision")); }
			ScriptFunction InitRBPhys() { mixin(MGF("mInitRBPhys", "Function Engine.PrimitiveComponent.InitRBPhys")); }
			ScriptFunction SetPhysMaterialOverride() { mixin(MGF("mSetPhysMaterialOverride", "Function Engine.PrimitiveComponent.SetPhysMaterialOverride")); }
			ScriptFunction GetRootBodyInstance() { mixin(MGF("mGetRootBodyInstance", "Function Engine.PrimitiveComponent.GetRootBodyInstance")); }
			ScriptFunction SetRBDominanceGroup() { mixin(MGF("mSetRBDominanceGroup", "Function Engine.PrimitiveComponent.SetRBDominanceGroup")); }
			ScriptFunction ShouldComponentAddToScene() { mixin(MGF("mShouldComponentAddToScene", "Function Engine.PrimitiveComponent.ShouldComponentAddToScene")); }
			ScriptFunction SetHidden() { mixin(MGF("mSetHidden", "Function Engine.PrimitiveComponent.SetHidden")); }
			ScriptFunction SetOwnerNoSee() { mixin(MGF("mSetOwnerNoSee", "Function Engine.PrimitiveComponent.SetOwnerNoSee")); }
			ScriptFunction SetOnlyOwnerSee() { mixin(MGF("mSetOnlyOwnerSee", "Function Engine.PrimitiveComponent.SetOnlyOwnerSee")); }
			ScriptFunction SetIgnoreOwnerHidden() { mixin(MGF("mSetIgnoreOwnerHidden", "Function Engine.PrimitiveComponent.SetIgnoreOwnerHidden")); }
			ScriptFunction SetShadowParent() { mixin(MGF("mSetShadowParent", "Function Engine.PrimitiveComponent.SetShadowParent")); }
			ScriptFunction SetLightEnvironment() { mixin(MGF("mSetLightEnvironment", "Function Engine.PrimitiveComponent.SetLightEnvironment")); }
			ScriptFunction SetCullDistance() { mixin(MGF("mSetCullDistance", "Function Engine.PrimitiveComponent.SetCullDistance")); }
			ScriptFunction SetLightingChannels() { mixin(MGF("mSetLightingChannels", "Function Engine.PrimitiveComponent.SetLightingChannels")); }
			ScriptFunction SetDepthPriorityGroup() { mixin(MGF("mSetDepthPriorityGroup", "Function Engine.PrimitiveComponent.SetDepthPriorityGroup")); }
			ScriptFunction SetViewOwnerDepthPriorityGroup() { mixin(MGF("mSetViewOwnerDepthPriorityGroup", "Function Engine.PrimitiveComponent.SetViewOwnerDepthPriorityGroup")); }
			ScriptFunction SetTraceBlocking() { mixin(MGF("mSetTraceBlocking", "Function Engine.PrimitiveComponent.SetTraceBlocking")); }
			ScriptFunction SetActorCollision() { mixin(MGF("mSetActorCollision", "Function Engine.PrimitiveComponent.SetActorCollision")); }
			ScriptFunction SetTranslation() { mixin(MGF("mSetTranslation", "Function Engine.PrimitiveComponent.SetTranslation")); }
			ScriptFunction SetRotation() { mixin(MGF("mSetRotation", "Function Engine.PrimitiveComponent.SetRotation")); }
			ScriptFunction SetScale() { mixin(MGF("mSetScale", "Function Engine.PrimitiveComponent.SetScale")); }
			ScriptFunction SetScale3D() { mixin(MGF("mSetScale3D", "Function Engine.PrimitiveComponent.SetScale3D")); }
			ScriptFunction SetAbsolute() { mixin(MGF("mSetAbsolute", "Function Engine.PrimitiveComponent.SetAbsolute")); }
			ScriptFunction GetPosition() { mixin(MGF("mGetPosition", "Function Engine.PrimitiveComponent.GetPosition")); }
			ScriptFunction GetRotation() { mixin(MGF("mGetRotation", "Function Engine.PrimitiveComponent.GetRotation")); }
			ScriptFunction ClosestPointOnComponentToPoint() { mixin(MGF("mClosestPointOnComponentToPoint", "Function Engine.PrimitiveComponent.ClosestPointOnComponentToPoint")); }
			ScriptFunction ClosestPointOnComponentToComponent() { mixin(MGF("mClosestPointOnComponentToComponent", "Function Engine.PrimitiveComponent.ClosestPointOnComponentToComponent")); }
		}
	}
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
		private ubyte __buffer__[4];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.PrimitiveComponent.RBCollisionChannelContainer")); }
		@property final
		{
			bool Default() { mixin(MGBPS(0, 0x1)); }
			bool Default(bool val) { mixin(MSBPS(0, 0x1)); }
			bool Nothing() { mixin(MGBPS(0, 0x2)); }
			bool Nothing(bool val) { mixin(MSBPS(0, 0x2)); }
			bool PawnVar() { mixin(MGBPS(0, 0x4)); }
			bool PawnVar(bool val) { mixin(MSBPS(0, 0x4)); }
			bool VehicleVar() { mixin(MGBPS(0, 0x8)); }
			bool VehicleVar(bool val) { mixin(MSBPS(0, 0x8)); }
			bool Water() { mixin(MGBPS(0, 0x10)); }
			bool Water(bool val) { mixin(MSBPS(0, 0x10)); }
			bool GameplayPhysics() { mixin(MGBPS(0, 0x20)); }
			bool GameplayPhysics(bool val) { mixin(MSBPS(0, 0x20)); }
			bool EffectPhysics() { mixin(MGBPS(0, 0x40)); }
			bool EffectPhysics(bool val) { mixin(MSBPS(0, 0x40)); }
			bool Untitled1() { mixin(MGBPS(0, 0x80)); }
			bool Untitled1(bool val) { mixin(MSBPS(0, 0x80)); }
			bool Untitled2() { mixin(MGBPS(0, 0x100)); }
			bool Untitled2(bool val) { mixin(MSBPS(0, 0x100)); }
			bool Untitled3() { mixin(MGBPS(0, 0x200)); }
			bool Untitled3(bool val) { mixin(MSBPS(0, 0x200)); }
			bool Untitled4() { mixin(MGBPS(0, 0x400)); }
			bool Untitled4(bool val) { mixin(MSBPS(0, 0x400)); }
			bool Cloth() { mixin(MGBPS(0, 0x800)); }
			bool Cloth(bool val) { mixin(MSBPS(0, 0x800)); }
			bool FluidDrain() { mixin(MGBPS(0, 0x1000)); }
			bool FluidDrain(bool val) { mixin(MSBPS(0, 0x1000)); }
			bool SoftBody() { mixin(MGBPS(0, 0x2000)); }
			bool SoftBody(bool val) { mixin(MSBPS(0, 0x2000)); }
			bool FracturedMeshPart() { mixin(MGBPS(0, 0x4000)); }
			bool FracturedMeshPart(bool val) { mixin(MSBPS(0, 0x4000)); }
			bool BlockingVolumeVar() { mixin(MGBPS(0, 0x8000)); }
			bool BlockingVolumeVar(bool val) { mixin(MSBPS(0, 0x8000)); }
			bool DeadPawn() { mixin(MGBPS(0, 0x10000)); }
			bool DeadPawn(bool val) { mixin(MSBPS(0, 0x10000)); }
			bool Clothing() { mixin(MGBPS(0, 0x20000)); }
			bool Clothing(bool val) { mixin(MSBPS(0, 0x20000)); }
			bool ClothingCollision() { mixin(MGBPS(0, 0x40000)); }
			bool ClothingCollision(bool val) { mixin(MSBPS(0, 0x40000)); }
		}
	}
	struct MaterialViewRelevance
	{
		private ubyte __buffer__[4];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.PrimitiveComponent.MaterialViewRelevance")); }
		@property final
		{
			bool bOpaque() { mixin(MGBPS(0, 0x1)); }
			bool bOpaque(bool val) { mixin(MSBPS(0, 0x1)); }
			bool bTranslucent() { mixin(MGBPS(0, 0x2)); }
			bool bTranslucent(bool val) { mixin(MSBPS(0, 0x2)); }
			bool bDistortion() { mixin(MGBPS(0, 0x4)); }
			bool bDistortion(bool val) { mixin(MSBPS(0, 0x4)); }
			bool bOneLayerDistortionRelevance() { mixin(MGBPS(0, 0x8)); }
			bool bOneLayerDistortionRelevance(bool val) { mixin(MSBPS(0, 0x8)); }
			bool bLit() { mixin(MGBPS(0, 0x10)); }
			bool bLit(bool val) { mixin(MSBPS(0, 0x10)); }
			bool bUsesSceneColor() { mixin(MGBPS(0, 0x20)); }
			bool bUsesSceneColor(bool val) { mixin(MSBPS(0, 0x20)); }
		}
	}
	@property final
	{
		auto ref
		{
			int Tag() { mixin(MGPC("int", 88)); }
			UObject.Matrix LocalToWorld() { mixin(MGPC("UObject.Matrix", 160)); }
			int ThreadTag() { mixin(MGPC("int", 92)); }
			UObject.BoxSphereBounds Bounds() { mixin(MGPC("UObject.BoxSphereBounds", 120)); }
			Pointer SceneInfo() { mixin(MGPC("Pointer", 148)); }
			int DetachFence() { mixin(MGPC("int", 152)); }
			float LocalToWorldDeterminant() { mixin(MGPC("float", 156)); }
			int MotionBlurInfoIndex() { mixin(MGPC("int", 224)); }
			ScriptArray!(Pointer) DecalList() { mixin(MGPC("ScriptArray!(Pointer)", 228)); }
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) DecalsToReattach() { mixin(MGPC("ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)", 240)); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'ShadowParent'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'ReplacementPrimitive'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'FogVolumeComponent'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'OverrideLightComponent'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'LightEnvironment'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'PreviousLightEnvironment'!
			float MinDrawDistance() { mixin(MGPC("float", 276)); }
			float MassiveLODDistance() { mixin(MGPC("float", 280)); }
			float MaxDrawDistance() { mixin(MGPC("float", 284)); }
			float CachedMaxDrawDistance() { mixin(MGPC("float", 288)); }
			float CullDistance() { mixin(MGPC("float", 292)); }
			float CachedCullDistance() { mixin(MGPC("float", 296)); }
			Scene.ESceneDepthPriorityGroup DepthPriorityGroup() { mixin(MGPC("Scene.ESceneDepthPriorityGroup", 300)); }
			Scene.ESceneDepthPriorityGroup ViewOwnerDepthPriorityGroup() { mixin(MGPC("Scene.ESceneDepthPriorityGroup", 301)); }
			Scene.EDetailMode DetailMode() { mixin(MGPC("Scene.EDetailMode", 302)); }
			PrimitiveComponent.ERBCollisionChannel RBChannel() { mixin(MGPC("PrimitiveComponent.ERBCollisionChannel", 303)); }
			ubyte RBDominanceGroup() { mixin(MGPC("ubyte", 304)); }
			ubyte PreviewEnvironmentShadowing() { mixin(MGPC("ubyte", 305)); }
			float MotionBlurScale() { mixin(MGPC("float", 308)); }
			ScriptArray!(int) OctreeNodes() { mixin(MGPC("ScriptArray!(int)", 320)); }
			int TranslucencySortPriority() { mixin(MGPC("int", 332)); }
			int VisibilityId() { mixin(MGPC("int", 336)); }
			LightComponent.LightingChannelContainer LightingChannels() { mixin(MGPC("LightComponent.LightingChannelContainer", 340)); }
			PrimitiveComponent.RBCollisionChannelContainer RBCollideWithChannels() { mixin(MGPC("PrimitiveComponent.RBCollisionChannelContainer", 344)); }
			PhysicalMaterial PhysMaterialOverride() { mixin(MGPC("PhysicalMaterial", 348)); }
			RB_BodyInstance BodyInstance() { mixin(MGPC("RB_BodyInstance", 352)); }
			UObject.Matrix CachedParentToWorld() { mixin(MGPC("UObject.Matrix", 368)); }
			Vector Translation() { mixin(MGPC("Vector", 432)); }
			Rotator Rotation() { mixin(MGPC("Rotator", 444)); }
			float Scale() { mixin(MGPC("float", 456)); }
			Vector Scale3D() { mixin(MGPC("Vector", 460)); }
			float BoundsScale() { mixin(MGPC("float", 472)); }
			float LastSubmitTime() { mixin(MGPC("float", 476)); }
			float LastRenderTime() { mixin(MGPC("float", 480)); }
			float ScriptRigidBodyCollisionThreshold() { mixin(MGPC("float", 484)); }
		}
		bool bUseViewOwnerDepthPriorityGroup() { mixin(MGBPC(312, 0x1)); }
		bool bUseViewOwnerDepthPriorityGroup(bool val) { mixin(MSBPC(312, 0x1)); }
		bool bAllowCullDistanceVolume() { mixin(MGBPC(312, 0x2)); }
		bool bAllowCullDistanceVolume(bool val) { mixin(MSBPC(312, 0x2)); }
		bool HiddenGame() { mixin(MGBPC(312, 0x4)); }
		bool HiddenGame(bool val) { mixin(MSBPC(312, 0x4)); }
		bool HiddenEditor() { mixin(MGBPC(312, 0x8)); }
		bool HiddenEditor(bool val) { mixin(MSBPC(312, 0x8)); }
		bool bOwnerNoSee() { mixin(MGBPC(312, 0x10)); }
		bool bOwnerNoSee(bool val) { mixin(MSBPC(312, 0x10)); }
		bool bOnlyOwnerSee() { mixin(MGBPC(312, 0x20)); }
		bool bOnlyOwnerSee(bool val) { mixin(MSBPC(312, 0x20)); }
		bool bIgnoreOwnerHidden() { mixin(MGBPC(312, 0x40)); }
		bool bIgnoreOwnerHidden(bool val) { mixin(MSBPC(312, 0x40)); }
		bool bUseAsOccluder() { mixin(MGBPC(312, 0x80)); }
		bool bUseAsOccluder(bool val) { mixin(MSBPC(312, 0x80)); }
		bool bAllowApproximateOcclusion() { mixin(MGBPC(312, 0x100)); }
		bool bAllowApproximateOcclusion(bool val) { mixin(MSBPC(312, 0x100)); }
		bool bFirstFrameOcclusion() { mixin(MGBPC(312, 0x200)); }
		bool bFirstFrameOcclusion(bool val) { mixin(MSBPC(312, 0x200)); }
		bool bIgnoreNearPlaneIntersection() { mixin(MGBPC(312, 0x400)); }
		bool bIgnoreNearPlaneIntersection(bool val) { mixin(MSBPC(312, 0x400)); }
		bool bSelectable() { mixin(MGBPC(312, 0x800)); }
		bool bSelectable(bool val) { mixin(MSBPC(312, 0x800)); }
		bool bForceMipStreaming() { mixin(MGBPC(312, 0x1000)); }
		bool bForceMipStreaming(bool val) { mixin(MSBPC(312, 0x1000)); }
		bool bAcceptsDecals() { mixin(MGBPC(312, 0x2000)); }
		bool bAcceptsDecals(bool val) { mixin(MSBPC(312, 0x2000)); }
		bool bAcceptsDecalsDuringGameplay() { mixin(MGBPC(312, 0x4000)); }
		bool bAcceptsDecalsDuringGameplay(bool val) { mixin(MSBPC(312, 0x4000)); }
		bool bAcceptsStaticDecals() { mixin(MGBPC(312, 0x8000)); }
		bool bAcceptsStaticDecals(bool val) { mixin(MSBPC(312, 0x8000)); }
		bool bAcceptsDynamicDecals() { mixin(MGBPC(312, 0x10000)); }
		bool bAcceptsDynamicDecals(bool val) { mixin(MSBPC(312, 0x10000)); }
		bool bIsRefreshingDecals() { mixin(MGBPC(312, 0x20000)); }
		bool bIsRefreshingDecals(bool val) { mixin(MSBPC(312, 0x20000)); }
		bool bAllowDecalAutomaticReAttach() { mixin(MGBPC(312, 0x40000)); }
		bool bAllowDecalAutomaticReAttach(bool val) { mixin(MSBPC(312, 0x40000)); }
		bool CastShadow() { mixin(MGBPC(312, 0x80000)); }
		bool CastShadow(bool val) { mixin(MSBPC(312, 0x80000)); }
		bool bForceDirectLightMap() { mixin(MGBPC(312, 0x100000)); }
		bool bForceDirectLightMap(bool val) { mixin(MSBPC(312, 0x100000)); }
		bool bCastDynamicShadow() { mixin(MGBPC(312, 0x200000)); }
		bool bCastDynamicShadow(bool val) { mixin(MSBPC(312, 0x200000)); }
		bool bUsesPlayerShadowFadeResolution() { mixin(MGBPC(312, 0x400000)); }
		bool bUsesPlayerShadowFadeResolution(bool val) { mixin(MSBPC(312, 0x400000)); }
		bool bSelfShadowOnly() { mixin(MGBPC(312, 0x800000)); }
		bool bSelfShadowOnly(bool val) { mixin(MSBPC(312, 0x800000)); }
		bool bAcceptsDynamicDominantLightShadows() { mixin(MGBPC(312, 0x1000000)); }
		bool bAcceptsDynamicDominantLightShadows(bool val) { mixin(MSBPC(312, 0x1000000)); }
		bool bCastHiddenShadow() { mixin(MGBPC(312, 0x2000000)); }
		bool bCastHiddenShadow(bool val) { mixin(MSBPC(312, 0x2000000)); }
		bool bCastShadowAsTwoSided() { mixin(MGBPC(312, 0x4000000)); }
		bool bCastShadowAsTwoSided(bool val) { mixin(MSBPC(312, 0x4000000)); }
		bool bAcceptsLights() { mixin(MGBPC(312, 0x8000000)); }
		bool bAcceptsLights(bool val) { mixin(MSBPC(312, 0x8000000)); }
		bool bAcceptsDynamicLights() { mixin(MGBPC(312, 0x10000000)); }
		bool bAcceptsDynamicLights(bool val) { mixin(MSBPC(312, 0x10000000)); }
		bool bUseOnePassLightingOnTranslucency() { mixin(MGBPC(312, 0x20000000)); }
		bool bUseOnePassLightingOnTranslucency(bool val) { mixin(MSBPC(312, 0x20000000)); }
		bool bUsePrecomputedShadows() { mixin(MGBPC(312, 0x40000000)); }
		bool bUsePrecomputedShadows(bool val) { mixin(MSBPC(312, 0x40000000)); }
		bool bHasExplicitShadowParent() { mixin(MGBPC(312, 0x80000000)); }
		bool bHasExplicitShadowParent(bool val) { mixin(MSBPC(312, 0x80000000)); }
		bool bCullModulatedShadowOnBackfaces() { mixin(MGBPC(316, 0x1)); }
		bool bCullModulatedShadowOnBackfaces(bool val) { mixin(MSBPC(316, 0x1)); }
		bool bCullModulatedShadowOnEmissive() { mixin(MGBPC(316, 0x2)); }
		bool bCullModulatedShadowOnEmissive(bool val) { mixin(MSBPC(316, 0x2)); }
		bool bAllowAmbientOcclusion() { mixin(MGBPC(316, 0x4)); }
		bool bAllowAmbientOcclusion(bool val) { mixin(MSBPC(316, 0x4)); }
		bool CollideActors() { mixin(MGBPC(316, 0x8)); }
		bool CollideActors(bool val) { mixin(MSBPC(316, 0x8)); }
		bool AlwaysCheckCollision() { mixin(MGBPC(316, 0x10)); }
		bool AlwaysCheckCollision(bool val) { mixin(MSBPC(316, 0x10)); }
		bool BlockActors() { mixin(MGBPC(316, 0x20)); }
		bool BlockActors(bool val) { mixin(MSBPC(316, 0x20)); }
		bool BlockZeroExtent() { mixin(MGBPC(316, 0x40)); }
		bool BlockZeroExtent(bool val) { mixin(MSBPC(316, 0x40)); }
		bool BlockNonZeroExtent() { mixin(MGBPC(316, 0x80)); }
		bool BlockNonZeroExtent(bool val) { mixin(MSBPC(316, 0x80)); }
		bool CanBlockCamera() { mixin(MGBPC(316, 0x100)); }
		bool CanBlockCamera(bool val) { mixin(MSBPC(316, 0x100)); }
		bool BlockRigidBody() { mixin(MGBPC(316, 0x200)); }
		bool BlockRigidBody(bool val) { mixin(MSBPC(316, 0x200)); }
		bool bDisableAllRigidBody() { mixin(MGBPC(316, 0x400)); }
		bool bDisableAllRigidBody(bool val) { mixin(MSBPC(316, 0x400)); }
		bool bSkipRBGeomCreation() { mixin(MGBPC(316, 0x800)); }
		bool bSkipRBGeomCreation(bool val) { mixin(MSBPC(316, 0x800)); }
		bool bNotifyRigidBodyCollision() { mixin(MGBPC(316, 0x1000)); }
		bool bNotifyRigidBodyCollision(bool val) { mixin(MSBPC(316, 0x1000)); }
		bool bFluidDrain() { mixin(MGBPC(316, 0x2000)); }
		bool bFluidDrain(bool val) { mixin(MSBPC(316, 0x2000)); }
		bool bFluidTwoWay() { mixin(MGBPC(316, 0x4000)); }
		bool bFluidTwoWay(bool val) { mixin(MSBPC(316, 0x4000)); }
		bool bIgnoreRadialImpulse() { mixin(MGBPC(316, 0x8000)); }
		bool bIgnoreRadialImpulse(bool val) { mixin(MSBPC(316, 0x8000)); }
		bool bIgnoreRadialForce() { mixin(MGBPC(316, 0x10000)); }
		bool bIgnoreRadialForce(bool val) { mixin(MSBPC(316, 0x10000)); }
		bool bIgnoreForceField() { mixin(MGBPC(316, 0x20000)); }
		bool bIgnoreForceField(bool val) { mixin(MSBPC(316, 0x20000)); }
		bool bUseCompartment() { mixin(MGBPC(316, 0x40000)); }
		bool bUseCompartment(bool val) { mixin(MSBPC(316, 0x40000)); }
		bool AlwaysLoadOnClient() { mixin(MGBPC(316, 0x80000)); }
		bool AlwaysLoadOnClient(bool val) { mixin(MSBPC(316, 0x80000)); }
		bool AlwaysLoadOnServer() { mixin(MGBPC(316, 0x100000)); }
		bool AlwaysLoadOnServer(bool val) { mixin(MSBPC(316, 0x100000)); }
		bool bIgnoreHiddenActorsMembership() { mixin(MGBPC(316, 0x200000)); }
		bool bIgnoreHiddenActorsMembership(bool val) { mixin(MSBPC(316, 0x200000)); }
		bool AbsoluteTranslation() { mixin(MGBPC(316, 0x400000)); }
		bool AbsoluteTranslation(bool val) { mixin(MSBPC(316, 0x400000)); }
		bool AbsoluteRotation() { mixin(MGBPC(316, 0x800000)); }
		bool AbsoluteRotation(bool val) { mixin(MSBPC(316, 0x800000)); }
		bool AbsoluteScale() { mixin(MGBPC(316, 0x1000000)); }
		bool AbsoluteScale(bool val) { mixin(MSBPC(316, 0x1000000)); }
		bool bAllowShadowFade() { mixin(MGBPC(316, 0x2000000)); }
		bool bAllowShadowFade(bool val) { mixin(MSBPC(316, 0x2000000)); }
		bool bWasSNFiltered() { mixin(MGBPC(316, 0x4000000)); }
		bool bWasSNFiltered(bool val) { mixin(MSBPC(316, 0x4000000)); }
	}
final:
	void SetBlockRigidBody(bool bNewBlockRigidBody)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewBlockRigidBody;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetBlockRigidBody, params.ptr, cast(void*)0);
	}
	void SetRBLinearVelocity(Vector NewVel, bool* bAddToCurrent = null)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = NewVel;
		if (bAddToCurrent !is null)
			*cast(bool*)&params[12] = *bAddToCurrent;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetRBLinearVelocity, params.ptr, cast(void*)0);
	}
	void AddImpulse(Vector Impulse, Vector* Position = null, ScriptName* BoneName = null, bool* bVelChange = null)
	{
		ubyte params[36];
		params[] = 0;
		*cast(Vector*)params.ptr = Impulse;
		if (Position !is null)
			*cast(Vector*)&params[12] = *Position;
		if (BoneName !is null)
			*cast(ScriptName*)&params[24] = *BoneName;
		if (bVelChange !is null)
			*cast(bool*)&params[32] = *bVelChange;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddImpulse, params.ptr, cast(void*)0);
	}
	void AddRadialImpulse(Vector Origin, float Radius, float Strength, PrimitiveComponent.ERadialImpulseFalloff Falloff, bool* bVelChange = null)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = Origin;
		*cast(float*)&params[12] = Radius;
		*cast(float*)&params[16] = Strength;
		*cast(PrimitiveComponent.ERadialImpulseFalloff*)&params[20] = Falloff;
		if (bVelChange !is null)
			*cast(bool*)&params[24] = *bVelChange;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddRadialImpulse, params.ptr, cast(void*)0);
	}
	void AddForce(Vector Force, Vector* Position = null, ScriptName* BoneName = null)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Vector*)params.ptr = Force;
		if (Position !is null)
			*cast(Vector*)&params[12] = *Position;
		if (BoneName !is null)
			*cast(ScriptName*)&params[24] = *BoneName;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddForce, params.ptr, cast(void*)0);
	}
	void AddRadialForce(Vector Origin, float Radius, float Strength, PrimitiveComponent.ERadialImpulseFalloff Falloff)
	{
		ubyte params[21];
		params[] = 0;
		*cast(Vector*)params.ptr = Origin;
		*cast(float*)&params[12] = Radius;
		*cast(float*)&params[16] = Strength;
		*cast(PrimitiveComponent.ERadialImpulseFalloff*)&params[20] = Falloff;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddRadialForce, params.ptr, cast(void*)0);
	}
	void AddTorque(Vector Torque, ScriptName* BoneName = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = Torque;
		if (BoneName !is null)
			*cast(ScriptName*)&params[12] = *BoneName;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddTorque, params.ptr, cast(void*)0);
	}
	void SetRBAngularVelocity(Vector NewAngVel, bool* bAddToCurrent = null)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = NewAngVel;
		if (bAddToCurrent !is null)
			*cast(bool*)&params[12] = *bAddToCurrent;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetRBAngularVelocity, params.ptr, cast(void*)0);
	}
	void RetardRBLinearVelocity(Vector RetardDir, float VelScale)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = RetardDir;
		*cast(float*)&params[12] = VelScale;
		(cast(ScriptObject)this).ProcessEvent(Functions.RetardRBLinearVelocity, params.ptr, cast(void*)0);
	}
	void SetRBPosition(Vector NewPos, ScriptName* BoneName = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = NewPos;
		if (BoneName !is null)
			*cast(ScriptName*)&params[12] = *BoneName;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetRBPosition, params.ptr, cast(void*)0);
	}
	void SetRBRotation(Rotator NewRot, ScriptName* BoneName = null)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Rotator*)params.ptr = NewRot;
		if (BoneName !is null)
			*cast(ScriptName*)&params[12] = *BoneName;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetRBRotation, params.ptr, cast(void*)0);
	}
	void WakeRigidBody(ScriptName* BoneName = null)
	{
		ubyte params[8];
		params[] = 0;
		if (BoneName !is null)
			*cast(ScriptName*)params.ptr = *BoneName;
		(cast(ScriptObject)this).ProcessEvent(Functions.WakeRigidBody, params.ptr, cast(void*)0);
	}
	void PutRigidBodyToSleep(ScriptName* BoneName = null)
	{
		ubyte params[8];
		params[] = 0;
		if (BoneName !is null)
			*cast(ScriptName*)params.ptr = *BoneName;
		(cast(ScriptObject)this).ProcessEvent(Functions.PutRigidBodyToSleep, params.ptr, cast(void*)0);
	}
	bool RigidBodyIsAwake(ScriptName* BoneName = null)
	{
		ubyte params[12];
		params[] = 0;
		if (BoneName !is null)
			*cast(ScriptName*)params.ptr = *BoneName;
		(cast(ScriptObject)this).ProcessEvent(Functions.RigidBodyIsAwake, params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
	void SetRBCollidesWithChannel(PrimitiveComponent.ERBCollisionChannel pChannel, bool bNewCollides)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PrimitiveComponent.ERBCollisionChannel*)params.ptr = pChannel;
		*cast(bool*)&params[4] = bNewCollides;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetRBCollidesWithChannel, params.ptr, cast(void*)0);
	}
	void SetRBCollisionChannels(PrimitiveComponent.RBCollisionChannelContainer Channels)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PrimitiveComponent.RBCollisionChannelContainer*)params.ptr = Channels;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetRBCollisionChannels, params.ptr, cast(void*)0);
	}
	void SetRBChannel(PrimitiveComponent.ERBCollisionChannel pChannel)
	{
		ubyte params[1];
		params[] = 0;
		*cast(PrimitiveComponent.ERBCollisionChannel*)params.ptr = pChannel;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetRBChannel, params.ptr, cast(void*)0);
	}
	void SetNotifyRigidBodyCollision(bool bNewNotifyRigidBodyCollision)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewNotifyRigidBodyCollision;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetNotifyRigidBodyCollision, params.ptr, cast(void*)0);
	}
	void InitRBPhys()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InitRBPhys, cast(void*)0, cast(void*)0);
	}
	void SetPhysMaterialOverride(PhysicalMaterial NewPhysMaterial)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PhysicalMaterial*)params.ptr = NewPhysMaterial;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPhysMaterialOverride, params.ptr, cast(void*)0);
	}
	RB_BodyInstance GetRootBodyInstance()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetRootBodyInstance, params.ptr, cast(void*)0);
		return *cast(RB_BodyInstance*)params.ptr;
	}
	void SetRBDominanceGroup(ubyte InDomGroup)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = InDomGroup;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetRBDominanceGroup, params.ptr, cast(void*)0);
	}
	bool ShouldComponentAddToScene()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldComponentAddToScene, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SetHidden(bool NewHidden)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = NewHidden;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetHidden, params.ptr, cast(void*)0);
	}
	void SetOwnerNoSee(bool bNewOwnerNoSee)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewOwnerNoSee;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetOwnerNoSee, params.ptr, cast(void*)0);
	}
	void SetOnlyOwnerSee(bool bNewOnlyOwnerSee)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewOnlyOwnerSee;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetOnlyOwnerSee, params.ptr, cast(void*)0);
	}
	void SetIgnoreOwnerHidden(bool bNewIgnoreOwnerHidden)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewIgnoreOwnerHidden;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetIgnoreOwnerHidden, params.ptr, cast(void*)0);
	}
	void SetShadowParent(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* NewShadowParent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = NewShadowParent;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetShadowParent, params.ptr, cast(void*)0);
	}
	void SetLightEnvironment(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* NewLightEnvironment)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = NewLightEnvironment;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetLightEnvironment, params.ptr, cast(void*)0);
	}
	void SetCullDistance(float NewCullDistance)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewCullDistance;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCullDistance, params.ptr, cast(void*)0);
	}
	void SetLightingChannels(LightComponent.LightingChannelContainer NewLightingChannels)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LightComponent.LightingChannelContainer*)params.ptr = NewLightingChannels;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetLightingChannels, params.ptr, cast(void*)0);
	}
	void SetDepthPriorityGroup(Scene.ESceneDepthPriorityGroup NewDepthPriorityGroup)
	{
		ubyte params[1];
		params[] = 0;
		*cast(Scene.ESceneDepthPriorityGroup*)params.ptr = NewDepthPriorityGroup;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetDepthPriorityGroup, params.ptr, cast(void*)0);
	}
	void SetViewOwnerDepthPriorityGroup(bool bNewUseViewOwnerDepthPriorityGroup, Scene.ESceneDepthPriorityGroup NewViewOwnerDepthPriorityGroup)
	{
		ubyte params[5];
		params[] = 0;
		*cast(bool*)params.ptr = bNewUseViewOwnerDepthPriorityGroup;
		*cast(Scene.ESceneDepthPriorityGroup*)&params[4] = NewViewOwnerDepthPriorityGroup;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetViewOwnerDepthPriorityGroup, params.ptr, cast(void*)0);
	}
	void SetTraceBlocking(bool NewBlockZeroExtent, bool NewBlockNonZeroExtent)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = NewBlockZeroExtent;
		*cast(bool*)&params[4] = NewBlockNonZeroExtent;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetTraceBlocking, params.ptr, cast(void*)0);
	}
	void SetActorCollision(bool NewCollideActors, bool NewBlockActors, bool* NewAlwaysCheckCollision = null)
	{
		ubyte params[12];
		params[] = 0;
		*cast(bool*)params.ptr = NewCollideActors;
		*cast(bool*)&params[4] = NewBlockActors;
		if (NewAlwaysCheckCollision !is null)
			*cast(bool*)&params[8] = *NewAlwaysCheckCollision;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetActorCollision, params.ptr, cast(void*)0);
	}
	void SetTranslation(Vector NewTranslation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = NewTranslation;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetTranslation, params.ptr, cast(void*)0);
	}
	void SetRotation(Rotator NewRotation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Rotator*)params.ptr = NewRotation;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetRotation, params.ptr, cast(void*)0);
	}
	void SetScale(float NewScale)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewScale;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetScale, params.ptr, cast(void*)0);
	}
	void SetScale3D(Vector NewScale3D)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = NewScale3D;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetScale3D, params.ptr, cast(void*)0);
	}
	void SetAbsolute(bool* NewAbsoluteTranslation = null, bool* NewAbsoluteRotation = null, bool* NewAbsoluteScale = null)
	{
		ubyte params[12];
		params[] = 0;
		if (NewAbsoluteTranslation !is null)
			*cast(bool*)params.ptr = *NewAbsoluteTranslation;
		if (NewAbsoluteRotation !is null)
			*cast(bool*)&params[4] = *NewAbsoluteRotation;
		if (NewAbsoluteScale !is null)
			*cast(bool*)&params[8] = *NewAbsoluteScale;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetAbsolute, params.ptr, cast(void*)0);
	}
	Vector GetPosition()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPosition, params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	Rotator GetRotation()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetRotation, params.ptr, cast(void*)0);
		return *cast(Rotator*)params.ptr;
	}
	PrimitiveComponent.GJKResult ClosestPointOnComponentToPoint(ref Vector POI, ref Vector Extent, ref Vector OutPointA, ref Vector OutPointB)
	{
		ubyte params[49];
		params[] = 0;
		*cast(Vector*)params.ptr = POI;
		*cast(Vector*)&params[12] = Extent;
		*cast(Vector*)&params[24] = OutPointA;
		*cast(Vector*)&params[36] = OutPointB;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClosestPointOnComponentToPoint, params.ptr, cast(void*)0);
		POI = *cast(Vector*)params.ptr;
		Extent = *cast(Vector*)&params[12];
		OutPointA = *cast(Vector*)&params[24];
		OutPointB = *cast(Vector*)&params[36];
		return *cast(PrimitiveComponent.GJKResult*)&params[48];
	}
	PrimitiveComponent.GJKResult ClosestPointOnComponentToComponent(ref 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* OtherComponent, ref Vector PointOnComponentA, ref Vector PointOnComponentB)
	{
		ubyte params[29];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = OtherComponent;
		*cast(Vector*)&params[4] = PointOnComponentA;
		*cast(Vector*)&params[16] = PointOnComponentB;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClosestPointOnComponentToComponent, params.ptr, cast(void*)0);
		OtherComponent = *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr;
		PointOnComponentA = *cast(Vector*)&params[4];
		PointOnComponentB = *cast(Vector*)&params[16];
		return *cast(PrimitiveComponent.GJKResult*)&params[28];
	}
}
