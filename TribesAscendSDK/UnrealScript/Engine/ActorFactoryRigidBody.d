module UnrealScript.Engine.ActorFactoryRigidBody;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorFactoryDynamicSM;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface ActorFactoryRigidBody : ActorFactoryDynamicSM
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ActorFactoryRigidBody")()); }
	private static __gshared ActorFactoryRigidBody mDefaultProperties;
	@property final static ActorFactoryRigidBody DefaultProperties() { mixin(MGDPC!(ActorFactoryRigidBody, "ActorFactoryRigidBody Engine.Default__ActorFactoryRigidBody")()); }
	@property final
	{
		auto ref
		{
			float StayUprightMaxTorque() { mixin(MGPC!("float", 148)()); }
			float StayUprightTorqueFactor() { mixin(MGPC!("float", 144)()); }
			PrimitiveComponent.ERBCollisionChannel RBChannel() { mixin(MGPC!("PrimitiveComponent.ERBCollisionChannel", 140)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'InitialAngularVelocity'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'AdditionalVelocity'!
			Vector InitialVelocity() { mixin(MGPC!("Vector", 120)()); }
		}
		bool bEnableStayUprightSpring() { mixin(MGBPC!(116, 0x8)()); }
		bool bEnableStayUprightSpring(bool val) { mixin(MSBPC!(116, 0x8)()); }
		bool bLocalSpaceInitialVelocity() { mixin(MGBPC!(116, 0x4)()); }
		bool bLocalSpaceInitialVelocity(bool val) { mixin(MSBPC!(116, 0x4)()); }
		bool bDamageAppliesImpulse() { mixin(MGBPC!(116, 0x2)()); }
		bool bDamageAppliesImpulse(bool val) { mixin(MSBPC!(116, 0x2)()); }
		bool bStartAwake() { mixin(MGBPC!(116, 0x1)()); }
		bool bStartAwake(bool val) { mixin(MSBPC!(116, 0x1)()); }
	}
}
