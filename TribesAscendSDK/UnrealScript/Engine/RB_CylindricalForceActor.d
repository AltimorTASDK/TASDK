module UnrealScript.Engine.RB_CylindricalForceActor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.RigidBodyBase;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface RB_CylindricalForceActor : RigidBodyBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.RB_CylindricalForceActor")()); }
	private static __gshared RB_CylindricalForceActor mDefaultProperties;
	@property final static RB_CylindricalForceActor DefaultProperties() { mixin(MGDPC!(RB_CylindricalForceActor, "RB_CylindricalForceActor Engine.Default__RB_CylindricalForceActor")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mOnToggle;
		public @property static final ScriptFunction OnToggle() { mixin(MGF!("mOnToggle", "Function Engine.RB_CylindricalForceActor.OnToggle")()); }
	}
	@property final
	{
		auto ref
		{
			PrimitiveComponent.RBCollisionChannelContainer CollideWithChannels() { mixin(MGPC!("PrimitiveComponent.RBCollisionChannelContainer", 520)()); }
			float HeightOffset() { mixin(MGPC!("float", 512)()); }
			float ForceHeight() { mixin(MGPC!("float", 508)()); }
			float ForceTopRadius() { mixin(MGPC!("float", 504)()); }
			float ForceRadius() { mixin(MGPC!("float", 500)()); }
			float EscapeVelocity() { mixin(MGPC!("float", 496)()); }
			float LiftFalloffHeight() { mixin(MGPC!("float", 492)()); }
			float LiftStrength() { mixin(MGPC!("float", 488)()); }
			float RotationalStrength() { mixin(MGPC!("float", 484)()); }
			float RadialStrength() { mixin(MGPC!("float", 480)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'RenderComponent'!
		}
		bool bForceApplyToProjectiles() { mixin(MGBPC!(516, 0x10)()); }
		bool bForceApplyToProjectiles(bool val) { mixin(MSBPC!(516, 0x10)()); }
		bool bForceApplyToRigidBodies() { mixin(MGBPC!(516, 0x8)()); }
		bool bForceApplyToRigidBodies(bool val) { mixin(MSBPC!(516, 0x8)()); }
		bool bForceApplyToFluid() { mixin(MGBPC!(516, 0x4)()); }
		bool bForceApplyToFluid(bool val) { mixin(MSBPC!(516, 0x4)()); }
		bool bForceApplyToCloth() { mixin(MGBPC!(516, 0x2)()); }
		bool bForceApplyToCloth(bool val) { mixin(MSBPC!(516, 0x2)()); }
		bool bForceActive() { mixin(MGBPC!(516, 0x1)()); }
		bool bForceActive(bool val) { mixin(MSBPC!(516, 0x1)()); }
	}
	final void OnToggle(SeqAct_Toggle inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnToggle, params.ptr, cast(void*)0);
	}
}
