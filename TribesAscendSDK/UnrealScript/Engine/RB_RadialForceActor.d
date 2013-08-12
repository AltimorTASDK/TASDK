module UnrealScript.Engine.RB_RadialForceActor;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.RigidBodyBase;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface RB_RadialForceActor : RigidBodyBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.RB_RadialForceActor")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mOnToggle;
		public @property static final ScriptFunction OnToggle() { return mOnToggle ? mOnToggle : (mOnToggle = ScriptObject.Find!(ScriptFunction)("Function Engine.RB_RadialForceActor.OnToggle")); }
	}
	enum ERadialForceType : ubyte
	{
		RFT_Force = 0,
		RFT_Impulse = 1,
		RFT_MAX = 2,
	}
	@property final
	{
		auto ref
		{
			PrimitiveComponent.RBCollisionChannelContainer CollideWithChannels() { return *cast(PrimitiveComponent.RBCollisionChannelContainer*)(cast(size_t)cast(void*)this + 504); }
			RB_RadialForceActor.ERadialForceType RadialForceMode() { return *cast(RB_RadialForceActor.ERadialForceType*)(cast(size_t)cast(void*)this + 497); }
			PrimitiveComponent.ERadialImpulseFalloff ForceFalloff() { return *cast(PrimitiveComponent.ERadialImpulseFalloff*)(cast(size_t)cast(void*)this + 496); }
			float SpinTorque() { return *cast(float*)(cast(size_t)cast(void*)this + 492); }
			float SwirlStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 488); }
			float ForceRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 484); }
			float ForceStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 480); }
		}
		bool bForceActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 500) & 0x1) != 0; }
		bool bForceActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 500) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 500) &= ~0x1; } return val; }
		bool bForceApplyToProjectiles() { return (*cast(uint*)(cast(size_t)cast(void*)this + 500) & 0x10) != 0; }
		bool bForceApplyToProjectiles(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 500) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 500) &= ~0x10; } return val; }
		bool bForceApplyToRigidBodies() { return (*cast(uint*)(cast(size_t)cast(void*)this + 500) & 0x8) != 0; }
		bool bForceApplyToRigidBodies(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 500) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 500) &= ~0x8; } return val; }
		bool bForceApplyToFluid() { return (*cast(uint*)(cast(size_t)cast(void*)this + 500) & 0x4) != 0; }
		bool bForceApplyToFluid(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 500) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 500) &= ~0x4; } return val; }
		bool bForceApplyToCloth() { return (*cast(uint*)(cast(size_t)cast(void*)this + 500) & 0x2) != 0; }
		bool bForceApplyToCloth(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 500) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 500) &= ~0x2; } return val; }
	}
	final void OnToggle(SeqAct_Toggle inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnToggle, params.ptr, cast(void*)0);
	}
}
