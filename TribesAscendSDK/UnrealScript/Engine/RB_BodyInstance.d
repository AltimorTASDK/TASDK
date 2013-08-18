module UnrealScript.Engine.RB_BodyInstance;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.RB_BodySetup;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PhysicalMaterial;
import UnrealScript.Engine.PhysicsAssetInstance;

extern(C++) interface RB_BodyInstance : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.RB_BodyInstance")); }
	private static __gshared RB_BodyInstance mDefaultProperties;
	@property final static RB_BodyInstance DefaultProperties() { mixin(MGDPC("RB_BodyInstance", "RB_BodyInstance Engine.Default__RB_BodyInstance")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mIsFixed;
			ScriptFunction mSetFixed;
			ScriptFunction mGetBodyMass;
			ScriptFunction mIsValidBodyInstance;
			ScriptFunction mGetPhysicsAssetInstance;
			ScriptFunction mGetUnrealWorldTM;
			ScriptFunction mGetUnrealWorldVelocity;
			ScriptFunction mGetUnrealWorldAngularVelocity;
			ScriptFunction mGetUnrealWorldVelocityAtPoint;
			ScriptFunction mEnableBoneSpring;
			ScriptFunction mSetBoneSpringParams;
			ScriptFunction mSetBoneSpringTarget;
			ScriptFunction mSetBlockRigidBody;
			ScriptFunction mSetPhysMaterialOverride;
			ScriptFunction mEnableCollisionResponse;
			ScriptFunction mSetContactReportForceThreshold;
			ScriptFunction mUpdateMassProperties;
			ScriptFunction mUpdateDampingProperties;
		}
		public @property static final
		{
			ScriptFunction IsFixed() { mixin(MGF("mIsFixed", "Function Engine.RB_BodyInstance.IsFixed")); }
			ScriptFunction SetFixed() { mixin(MGF("mSetFixed", "Function Engine.RB_BodyInstance.SetFixed")); }
			ScriptFunction GetBodyMass() { mixin(MGF("mGetBodyMass", "Function Engine.RB_BodyInstance.GetBodyMass")); }
			ScriptFunction IsValidBodyInstance() { mixin(MGF("mIsValidBodyInstance", "Function Engine.RB_BodyInstance.IsValidBodyInstance")); }
			ScriptFunction GetPhysicsAssetInstance() { mixin(MGF("mGetPhysicsAssetInstance", "Function Engine.RB_BodyInstance.GetPhysicsAssetInstance")); }
			ScriptFunction GetUnrealWorldTM() { mixin(MGF("mGetUnrealWorldTM", "Function Engine.RB_BodyInstance.GetUnrealWorldTM")); }
			ScriptFunction GetUnrealWorldVelocity() { mixin(MGF("mGetUnrealWorldVelocity", "Function Engine.RB_BodyInstance.GetUnrealWorldVelocity")); }
			ScriptFunction GetUnrealWorldAngularVelocity() { mixin(MGF("mGetUnrealWorldAngularVelocity", "Function Engine.RB_BodyInstance.GetUnrealWorldAngularVelocity")); }
			ScriptFunction GetUnrealWorldVelocityAtPoint() { mixin(MGF("mGetUnrealWorldVelocityAtPoint", "Function Engine.RB_BodyInstance.GetUnrealWorldVelocityAtPoint")); }
			ScriptFunction EnableBoneSpring() { mixin(MGF("mEnableBoneSpring", "Function Engine.RB_BodyInstance.EnableBoneSpring")); }
			ScriptFunction SetBoneSpringParams() { mixin(MGF("mSetBoneSpringParams", "Function Engine.RB_BodyInstance.SetBoneSpringParams")); }
			ScriptFunction SetBoneSpringTarget() { mixin(MGF("mSetBoneSpringTarget", "Function Engine.RB_BodyInstance.SetBoneSpringTarget")); }
			ScriptFunction SetBlockRigidBody() { mixin(MGF("mSetBlockRigidBody", "Function Engine.RB_BodyInstance.SetBlockRigidBody")); }
			ScriptFunction SetPhysMaterialOverride() { mixin(MGF("mSetPhysMaterialOverride", "Function Engine.RB_BodyInstance.SetPhysMaterialOverride")); }
			ScriptFunction EnableCollisionResponse() { mixin(MGF("mEnableCollisionResponse", "Function Engine.RB_BodyInstance.EnableCollisionResponse")); }
			ScriptFunction SetContactReportForceThreshold() { mixin(MGF("mSetContactReportForceThreshold", "Function Engine.RB_BodyInstance.SetContactReportForceThreshold")); }
			ScriptFunction UpdateMassProperties() { mixin(MGF("mUpdateMassProperties", "Function Engine.RB_BodyInstance.UpdateMassProperties")); }
			ScriptFunction UpdateDampingProperties() { mixin(MGF("mUpdateDampingProperties", "Function Engine.RB_BodyInstance.UpdateDampingProperties")); }
		}
	}
	@property final
	{
		auto ref
		{
			float InstanceDampingScale() { mixin(MGPC("float", 152)); }
			float InstanceMassScale() { mixin(MGPC("float", 148)); }
			float ContactReportForceThreshold() { mixin(MGPC("float", 144)); }
			PhysicalMaterial PhysMaterialOverride() { mixin(MGPC("PhysicalMaterial", 140)); }
			float LastEffectPlayedTime() { mixin(MGPC("float", 136)); }
			float CustomGravityFactor() { mixin(MGPC("float", 132)); }
			float OverextensionThreshold() { mixin(MGPC("float", 128)); }
			float BoneAngularDamping() { mixin(MGPC("float", 124)); }
			float BoneAngularSpring() { mixin(MGPC("float", 120)); }
			float BoneLinearDamping() { mixin(MGPC("float", 116)); }
			float BoneLinearSpring() { mixin(MGPC("float", 112)); }
			Pointer BoneSpringKinActor() { mixin(MGPC("Pointer", 104)); }
			Pointer BoneSpring() { mixin(MGPC("Pointer", 100)); }
			Pointer BodyData() { mixin(MGPC("Pointer", 96)); }
			int SceneIndex() { mixin(MGPC("int", 92)); }
			Vector PreviousVelocity() { mixin(MGPC("Vector", 80)); }
			Vector Velocity() { mixin(MGPC("Vector", 68)); }
			int BodyIndex() { mixin(MGPC("int", 64)); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'OwnerComponent'!
		}
		bool bInstanceAlwaysFullAnimWeight() { mixin(MGBPC(108, 0x800)); }
		bool bInstanceAlwaysFullAnimWeight(bool val) { mixin(MSBPC(108, 0x800)); }
		bool bForceUnfixed() { mixin(MGBPC(108, 0x400)); }
		bool bForceUnfixed(bool val) { mixin(MSBPC(108, 0x400)); }
		bool bPushBody() { mixin(MGBPC(108, 0x200)); }
		bool bPushBody(bool val) { mixin(MSBPC(108, 0x200)); }
		bool bEnableCollisionResponse() { mixin(MGBPC(108, 0x100)); }
		bool bEnableCollisionResponse(bool val) { mixin(MSBPC(108, 0x100)); }
		bool bOnlyCollideWithPawns() { mixin(MGBPC(108, 0x80)); }
		bool bOnlyCollideWithPawns(bool val) { mixin(MSBPC(108, 0x80)); }
		bool bMakeSpringToBaseCollisionComponent() { mixin(MGBPC(108, 0x40)); }
		bool bMakeSpringToBaseCollisionComponent(bool val) { mixin(MSBPC(108, 0x40)); }
		bool bUseKinActorForBoneSpring() { mixin(MGBPC(108, 0x20)); }
		bool bUseKinActorForBoneSpring(bool val) { mixin(MSBPC(108, 0x20)); }
		bool bTeleportOnOverextension() { mixin(MGBPC(108, 0x10)); }
		bool bTeleportOnOverextension(bool val) { mixin(MSBPC(108, 0x10)); }
		bool bNotifyOwnerOnOverextension() { mixin(MGBPC(108, 0x8)); }
		bool bNotifyOwnerOnOverextension(bool val) { mixin(MSBPC(108, 0x8)); }
		bool bDisableOnOverextension() { mixin(MGBPC(108, 0x4)); }
		bool bDisableOnOverextension(bool val) { mixin(MSBPC(108, 0x4)); }
		bool bEnableBoneSpringAngular() { mixin(MGBPC(108, 0x2)); }
		bool bEnableBoneSpringAngular(bool val) { mixin(MSBPC(108, 0x2)); }
		bool bEnableBoneSpringLinear() { mixin(MGBPC(108, 0x1)); }
		bool bEnableBoneSpringLinear(bool val) { mixin(MSBPC(108, 0x1)); }
	}
final:
	bool IsFixed()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsFixed, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SetFixed(bool bNewFixed)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewFixed;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFixed, params.ptr, cast(void*)0);
	}
	float GetBodyMass()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBodyMass, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	bool IsValidBodyInstance()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsValidBodyInstance, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	PhysicsAssetInstance GetPhysicsAssetInstance()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPhysicsAssetInstance, params.ptr, cast(void*)0);
		return *cast(PhysicsAssetInstance*)params.ptr;
	}
	UObject.Matrix GetUnrealWorldTM()
	{
		ubyte params[64];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetUnrealWorldTM, params.ptr, cast(void*)0);
		return *cast(UObject.Matrix*)params.ptr;
	}
	Vector GetUnrealWorldVelocity()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetUnrealWorldVelocity, params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	Vector GetUnrealWorldAngularVelocity()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetUnrealWorldAngularVelocity, params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	Vector GetUnrealWorldVelocityAtPoint(Vector Point)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = Point;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetUnrealWorldVelocityAtPoint, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[12];
	}
	void EnableBoneSpring(bool bInEnableLinear, bool bInEnableAngular, ref in UObject.Matrix InBoneTarget)
	{
		ubyte params[80];
		params[] = 0;
		*cast(bool*)params.ptr = bInEnableLinear;
		*cast(bool*)&params[4] = bInEnableAngular;
		*cast(UObject.Matrix*)&params[16] = cast(UObject.Matrix)InBoneTarget;
		(cast(ScriptObject)this).ProcessEvent(Functions.EnableBoneSpring, params.ptr, cast(void*)0);
	}
	void SetBoneSpringParams(float InLinearSpring, float InLinearDamping, float InAngularSpring, float InAngularDamping)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = InLinearSpring;
		*cast(float*)&params[4] = InLinearDamping;
		*cast(float*)&params[8] = InAngularSpring;
		*cast(float*)&params[12] = InAngularDamping;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetBoneSpringParams, params.ptr, cast(void*)0);
	}
	void SetBoneSpringTarget(ref in UObject.Matrix InBoneTarget, bool bTeleport)
	{
		ubyte params[68];
		params[] = 0;
		*cast(UObject.Matrix*)params.ptr = cast(UObject.Matrix)InBoneTarget;
		*cast(bool*)&params[64] = bTeleport;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetBoneSpringTarget, params.ptr, cast(void*)0);
	}
	void SetBlockRigidBody(bool bNewBlockRigidBody)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewBlockRigidBody;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetBlockRigidBody, params.ptr, cast(void*)0);
	}
	void SetPhysMaterialOverride(PhysicalMaterial NewPhysMaterial)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PhysicalMaterial*)params.ptr = NewPhysMaterial;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPhysMaterialOverride, params.ptr, cast(void*)0);
	}
	void EnableCollisionResponse(bool bEnableResponse)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnableResponse;
		(cast(ScriptObject)this).ProcessEvent(Functions.EnableCollisionResponse, params.ptr, cast(void*)0);
	}
	void SetContactReportForceThreshold(float Threshold)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = Threshold;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetContactReportForceThreshold, params.ptr, cast(void*)0);
	}
	void UpdateMassProperties(RB_BodySetup Setup)
	{
		ubyte params[4];
		params[] = 0;
		*cast(RB_BodySetup*)params.ptr = Setup;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateMassProperties, params.ptr, cast(void*)0);
	}
	void UpdateDampingProperties()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateDampingProperties, cast(void*)0, cast(void*)0);
	}
}
