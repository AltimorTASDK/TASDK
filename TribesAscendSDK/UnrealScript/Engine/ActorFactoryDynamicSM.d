module UnrealScript.Engine.ActorFactoryDynamicSM;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorFactory;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.StaticMesh;

extern(C++) interface ActorFactoryDynamicSM : ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ActorFactoryDynamicSM")()); }
	private static __gshared ActorFactoryDynamicSM mDefaultProperties;
	@property final static ActorFactoryDynamicSM DefaultProperties() { mixin(MGDPC!(ActorFactoryDynamicSM, "ActorFactoryDynamicSM Engine.Default__ActorFactoryDynamicSM")()); }
	@property final
	{
		auto ref
		{
			Actor.ECollisionType CollisionType() { mixin(MGPC!(Actor.ECollisionType, 112)()); }
			Vector DrawScale3D() { mixin(MGPC!(Vector, 96)()); }
			// WARNING: Property 'StaticMesh' has the same name as a defined type!
		}
		bool bCastDynamicShadow() { mixin(MGBPC!(108, 0x10)()); }
		bool bCastDynamicShadow(bool val) { mixin(MSBPC!(108, 0x10)()); }
		bool bUseCompartment() { mixin(MGBPC!(108, 0x8)()); }
		bool bUseCompartment(bool val) { mixin(MSBPC!(108, 0x8)()); }
		bool bBlockRigidBody() { mixin(MGBPC!(108, 0x4)()); }
		bool bBlockRigidBody(bool val) { mixin(MSBPC!(108, 0x4)()); }
		bool bNotifyRigidBodyCollision() { mixin(MGBPC!(108, 0x2)()); }
		bool bNotifyRigidBodyCollision(bool val) { mixin(MSBPC!(108, 0x2)()); }
		bool bNoEncroachCheck() { mixin(MGBPC!(108, 0x1)()); }
		bool bNoEncroachCheck(bool val) { mixin(MSBPC!(108, 0x1)()); }
	}
}
