module UnrealScript.Engine.RB_BodyInstance;

import ScriptClasses;
import UnrealScript.Engine.RB_BodySetup;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PhysicalMaterial;
import UnrealScript.Engine.PhysicsAssetInstance;

extern(C++) interface RB_BodyInstance : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.RB_BodyInstance")); }
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
			ScriptFunction IsFixed() { return mIsFixed ? mIsFixed : (mIsFixed = ScriptObject.Find!(ScriptFunction)("Function Engine.RB_BodyInstance.IsFixed")); }
			ScriptFunction SetFixed() { return mSetFixed ? mSetFixed : (mSetFixed = ScriptObject.Find!(ScriptFunction)("Function Engine.RB_BodyInstance.SetFixed")); }
			ScriptFunction GetBodyMass() { return mGetBodyMass ? mGetBodyMass : (mGetBodyMass = ScriptObject.Find!(ScriptFunction)("Function Engine.RB_BodyInstance.GetBodyMass")); }
			ScriptFunction IsValidBodyInstance() { return mIsValidBodyInstance ? mIsValidBodyInstance : (mIsValidBodyInstance = ScriptObject.Find!(ScriptFunction)("Function Engine.RB_BodyInstance.IsValidBodyInstance")); }
			ScriptFunction GetPhysicsAssetInstance() { return mGetPhysicsAssetInstance ? mGetPhysicsAssetInstance : (mGetPhysicsAssetInstance = ScriptObject.Find!(ScriptFunction)("Function Engine.RB_BodyInstance.GetPhysicsAssetInstance")); }
			ScriptFunction GetUnrealWorldTM() { return mGetUnrealWorldTM ? mGetUnrealWorldTM : (mGetUnrealWorldTM = ScriptObject.Find!(ScriptFunction)("Function Engine.RB_BodyInstance.GetUnrealWorldTM")); }
			ScriptFunction GetUnrealWorldVelocity() { return mGetUnrealWorldVelocity ? mGetUnrealWorldVelocity : (mGetUnrealWorldVelocity = ScriptObject.Find!(ScriptFunction)("Function Engine.RB_BodyInstance.GetUnrealWorldVelocity")); }
			ScriptFunction GetUnrealWorldAngularVelocity() { return mGetUnrealWorldAngularVelocity ? mGetUnrealWorldAngularVelocity : (mGetUnrealWorldAngularVelocity = ScriptObject.Find!(ScriptFunction)("Function Engine.RB_BodyInstance.GetUnrealWorldAngularVelocity")); }
			ScriptFunction GetUnrealWorldVelocityAtPoint() { return mGetUnrealWorldVelocityAtPoint ? mGetUnrealWorldVelocityAtPoint : (mGetUnrealWorldVelocityAtPoint = ScriptObject.Find!(ScriptFunction)("Function Engine.RB_BodyInstance.GetUnrealWorldVelocityAtPoint")); }
			ScriptFunction EnableBoneSpring() { return mEnableBoneSpring ? mEnableBoneSpring : (mEnableBoneSpring = ScriptObject.Find!(ScriptFunction)("Function Engine.RB_BodyInstance.EnableBoneSpring")); }
			ScriptFunction SetBoneSpringParams() { return mSetBoneSpringParams ? mSetBoneSpringParams : (mSetBoneSpringParams = ScriptObject.Find!(ScriptFunction)("Function Engine.RB_BodyInstance.SetBoneSpringParams")); }
			ScriptFunction SetBoneSpringTarget() { return mSetBoneSpringTarget ? mSetBoneSpringTarget : (mSetBoneSpringTarget = ScriptObject.Find!(ScriptFunction)("Function Engine.RB_BodyInstance.SetBoneSpringTarget")); }
			ScriptFunction SetBlockRigidBody() { return mSetBlockRigidBody ? mSetBlockRigidBody : (mSetBlockRigidBody = ScriptObject.Find!(ScriptFunction)("Function Engine.RB_BodyInstance.SetBlockRigidBody")); }
			ScriptFunction SetPhysMaterialOverride() { return mSetPhysMaterialOverride ? mSetPhysMaterialOverride : (mSetPhysMaterialOverride = ScriptObject.Find!(ScriptFunction)("Function Engine.RB_BodyInstance.SetPhysMaterialOverride")); }
			ScriptFunction EnableCollisionResponse() { return mEnableCollisionResponse ? mEnableCollisionResponse : (mEnableCollisionResponse = ScriptObject.Find!(ScriptFunction)("Function Engine.RB_BodyInstance.EnableCollisionResponse")); }
			ScriptFunction SetContactReportForceThreshold() { return mSetContactReportForceThreshold ? mSetContactReportForceThreshold : (mSetContactReportForceThreshold = ScriptObject.Find!(ScriptFunction)("Function Engine.RB_BodyInstance.SetContactReportForceThreshold")); }
			ScriptFunction UpdateMassProperties() { return mUpdateMassProperties ? mUpdateMassProperties : (mUpdateMassProperties = ScriptObject.Find!(ScriptFunction)("Function Engine.RB_BodyInstance.UpdateMassProperties")); }
			ScriptFunction UpdateDampingProperties() { return mUpdateDampingProperties ? mUpdateDampingProperties : (mUpdateDampingProperties = ScriptObject.Find!(ScriptFunction)("Function Engine.RB_BodyInstance.UpdateDampingProperties")); }
		}
	}
	@property final
	{
		auto ref
		{
			float InstanceDampingScale() { return *cast(float*)(cast(size_t)cast(void*)this + 152); }
			float InstanceMassScale() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
			float ContactReportForceThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 144); }
			PhysicalMaterial PhysMaterialOverride() { return *cast(PhysicalMaterial*)(cast(size_t)cast(void*)this + 140); }
			float LastEffectPlayedTime() { return *cast(float*)(cast(size_t)cast(void*)this + 136); }
			float CustomGravityFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 132); }
			float OverextensionThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 128); }
			float BoneAngularDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 124); }
			float BoneAngularSpring() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
			float BoneLinearDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
			float BoneLinearSpring() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
			UObject.Pointer BoneSpringKinActor() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 104); }
			UObject.Pointer BoneSpring() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 100); }
			UObject.Pointer BodyData() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 96); }
			int SceneIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 92); }
			Vector PreviousVelocity() { return *cast(Vector*)(cast(size_t)cast(void*)this + 80); }
			Vector Velocity() { return *cast(Vector*)(cast(size_t)cast(void*)this + 68); }
			int BodyIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
		}
		bool bInstanceAlwaysFullAnimWeight() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x800) != 0; }
		bool bInstanceAlwaysFullAnimWeight(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x800; } return val; }
		bool bForceUnfixed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x400) != 0; }
		bool bForceUnfixed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x400; } return val; }
		bool bPushBody() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x200) != 0; }
		bool bPushBody(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x200; } return val; }
		bool bEnableCollisionResponse() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x100) != 0; }
		bool bEnableCollisionResponse(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x100; } return val; }
		bool bOnlyCollideWithPawns() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x80) != 0; }
		bool bOnlyCollideWithPawns(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x80; } return val; }
		bool bMakeSpringToBaseCollisionComponent() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x40) != 0; }
		bool bMakeSpringToBaseCollisionComponent(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x40; } return val; }
		bool bUseKinActorForBoneSpring() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x20) != 0; }
		bool bUseKinActorForBoneSpring(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x20; } return val; }
		bool bTeleportOnOverextension() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x10) != 0; }
		bool bTeleportOnOverextension(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x10; } return val; }
		bool bNotifyOwnerOnOverextension() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x8) != 0; }
		bool bNotifyOwnerOnOverextension(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x8; } return val; }
		bool bDisableOnOverextension() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x4) != 0; }
		bool bDisableOnOverextension(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x4; } return val; }
		bool bEnableBoneSpringAngular() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x2) != 0; }
		bool bEnableBoneSpringAngular(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x2; } return val; }
		bool bEnableBoneSpringLinear() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x1) != 0; }
		bool bEnableBoneSpringLinear(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x1; } return val; }
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
	void EnableBoneSpring(bool bInEnableLinear, bool bInEnableAngular, UObject.Matrix* InBoneTarget)
	{
		ubyte params[80];
		params[] = 0;
		*cast(bool*)params.ptr = bInEnableLinear;
		*cast(bool*)&params[4] = bInEnableAngular;
		*cast(UObject.Matrix*)&params[16] = *InBoneTarget;
		(cast(ScriptObject)this).ProcessEvent(Functions.EnableBoneSpring, params.ptr, cast(void*)0);
		*InBoneTarget = *cast(UObject.Matrix*)&params[16];
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
	void SetBoneSpringTarget(UObject.Matrix* InBoneTarget, bool bTeleport)
	{
		ubyte params[68];
		params[] = 0;
		*cast(UObject.Matrix*)params.ptr = *InBoneTarget;
		*cast(bool*)&params[64] = bTeleport;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetBoneSpringTarget, params.ptr, cast(void*)0);
		*InBoneTarget = *cast(UObject.Matrix*)params.ptr;
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
