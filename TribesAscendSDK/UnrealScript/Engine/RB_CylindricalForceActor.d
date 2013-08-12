module UnrealScript.Engine.RB_CylindricalForceActor;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.RigidBodyBase;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface RB_CylindricalForceActor : RigidBodyBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.RB_CylindricalForceActor")); }
	private static __gshared RB_CylindricalForceActor mDefaultProperties;
	@property final static RB_CylindricalForceActor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(RB_CylindricalForceActor)("RB_CylindricalForceActor Engine.Default__RB_CylindricalForceActor")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mOnToggle;
		public @property static final ScriptFunction OnToggle() { return mOnToggle ? mOnToggle : (mOnToggle = ScriptObject.Find!(ScriptFunction)("Function Engine.RB_CylindricalForceActor.OnToggle")); }
	}
	@property final
	{
		auto ref
		{
			PrimitiveComponent.RBCollisionChannelContainer CollideWithChannels() { return *cast(PrimitiveComponent.RBCollisionChannelContainer*)(cast(size_t)cast(void*)this + 520); }
			float HeightOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 512); }
			float ForceHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 508); }
			float ForceTopRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 504); }
			float ForceRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 500); }
			float EscapeVelocity() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
			float LiftFalloffHeight() { return *cast(float*)(cast(size_t)cast(void*)this + 492); }
			float LiftStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 488); }
			float RotationalStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 484); }
			float RadialStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 480); }
		}
		bool bForceApplyToProjectiles() { return (*cast(uint*)(cast(size_t)cast(void*)this + 516) & 0x10) != 0; }
		bool bForceApplyToProjectiles(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 516) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 516) &= ~0x10; } return val; }
		bool bForceApplyToRigidBodies() { return (*cast(uint*)(cast(size_t)cast(void*)this + 516) & 0x8) != 0; }
		bool bForceApplyToRigidBodies(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 516) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 516) &= ~0x8; } return val; }
		bool bForceApplyToFluid() { return (*cast(uint*)(cast(size_t)cast(void*)this + 516) & 0x4) != 0; }
		bool bForceApplyToFluid(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 516) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 516) &= ~0x4; } return val; }
		bool bForceApplyToCloth() { return (*cast(uint*)(cast(size_t)cast(void*)this + 516) & 0x2) != 0; }
		bool bForceApplyToCloth(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 516) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 516) &= ~0x2; } return val; }
		bool bForceActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 516) & 0x1) != 0; }
		bool bForceActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 516) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 516) &= ~0x1; } return val; }
	}
	final void OnToggle(SeqAct_Toggle inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnToggle, params.ptr, cast(void*)0);
	}
}
