module UnrealScript.Engine.ActorFactoryPhysicsAsset;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorFactory;
import UnrealScript.Engine.PhysicsAsset;
import UnrealScript.Engine.SkeletalMesh;

extern(C++) interface ActorFactoryPhysicsAsset : ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ActorFactoryPhysicsAsset")); }
	private static __gshared ActorFactoryPhysicsAsset mDefaultProperties;
	@property final static ActorFactoryPhysicsAsset DefaultProperties() { mixin(MGDPC("ActorFactoryPhysicsAsset", "ActorFactoryPhysicsAsset Engine.Default__ActorFactoryPhysicsAsset")); }
	@property final
	{
		auto ref
		{
			Vector DrawScale3D() { mixin(MGPC("Vector", 116)); }
			Vector InitialVelocity() { mixin(MGPC("Vector", 104)); }
			// WARNING: Property 'SkeletalMesh' has the same name as a defined type!
			// WARNING: Property 'PhysicsAsset' has the same name as a defined type!
		}
		bool bCastDynamicShadow() { mixin(MGBPC(100, 0x10)); }
		bool bCastDynamicShadow(bool val) { mixin(MSBPC(100, 0x10)); }
		bool bUseCompartment() { mixin(MGBPC(100, 0x8)); }
		bool bUseCompartment(bool val) { mixin(MSBPC(100, 0x8)); }
		bool bNotifyRigidBodyCollision() { mixin(MGBPC(100, 0x4)); }
		bool bNotifyRigidBodyCollision(bool val) { mixin(MSBPC(100, 0x4)); }
		bool bDamageAppliesImpulse() { mixin(MGBPC(100, 0x2)); }
		bool bDamageAppliesImpulse(bool val) { mixin(MSBPC(100, 0x2)); }
		bool bStartAwake() { mixin(MGBPC(100, 0x1)); }
		bool bStartAwake(bool val) { mixin(MSBPC(100, 0x1)); }
	}
}
