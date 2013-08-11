module UnrealScript.Engine.ActorFactoryRigidBody;

import ScriptClasses;
import UnrealScript.Engine.ActorFactoryDynamicSM;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface ActorFactoryRigidBody : ActorFactoryDynamicSM
{
public extern(D):
	@property final
	{
		auto ref
		{
			float StayUprightMaxTorque() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
			float StayUprightTorqueFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 144); }
			PrimitiveComponent.ERBCollisionChannel RBChannel() { return *cast(PrimitiveComponent.ERBCollisionChannel*)(cast(size_t)cast(void*)this + 140); }
			Vector InitialVelocity() { return *cast(Vector*)(cast(size_t)cast(void*)this + 120); }
		}
		bool bEnableStayUprightSpring() { return (*cast(uint*)(cast(size_t)cast(void*)this + 116) & 0x8) != 0; }
		bool bEnableStayUprightSpring(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 116) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 116) &= ~0x8; } return val; }
		bool bLocalSpaceInitialVelocity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 116) & 0x4) != 0; }
		bool bLocalSpaceInitialVelocity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 116) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 116) &= ~0x4; } return val; }
		bool bDamageAppliesImpulse() { return (*cast(uint*)(cast(size_t)cast(void*)this + 116) & 0x2) != 0; }
		bool bDamageAppliesImpulse(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 116) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 116) &= ~0x2; } return val; }
		bool bStartAwake() { return (*cast(uint*)(cast(size_t)cast(void*)this + 116) & 0x1) != 0; }
		bool bStartAwake(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 116) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 116) &= ~0x1; } return val; }
	}
}
