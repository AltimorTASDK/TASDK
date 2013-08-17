module UnrealScript.Engine.RB_RadialForceActor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.RigidBodyBase;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface RB_RadialForceActor : RigidBodyBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.RB_RadialForceActor")); }
	private static __gshared RB_RadialForceActor mDefaultProperties;
	@property final static RB_RadialForceActor DefaultProperties() { mixin(MGDPC("RB_RadialForceActor", "RB_RadialForceActor Engine.Default__RB_RadialForceActor")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mOnToggle;
		public @property static final ScriptFunction OnToggle() { mixin(MGF("mOnToggle", "Function Engine.RB_RadialForceActor.OnToggle")); }
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
			PrimitiveComponent.RBCollisionChannelContainer CollideWithChannels() { mixin(MGPC("PrimitiveComponent.RBCollisionChannelContainer", 504)); }
			RB_RadialForceActor.ERadialForceType RadialForceMode() { mixin(MGPC("RB_RadialForceActor.ERadialForceType", 497)); }
			PrimitiveComponent.ERadialImpulseFalloff ForceFalloff() { mixin(MGPC("PrimitiveComponent.ERadialImpulseFalloff", 496)); }
			float SpinTorque() { mixin(MGPC("float", 492)); }
			float SwirlStrength() { mixin(MGPC("float", 488)); }
			float ForceRadius() { mixin(MGPC("float", 484)); }
			float ForceStrength() { mixin(MGPC("float", 480)); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'RenderComponent'!
		}
		bool bForceActive() { mixin(MGBPC(500, 0x1)); }
		bool bForceActive(bool val) { mixin(MSBPC(500, 0x1)); }
		bool bForceApplyToProjectiles() { mixin(MGBPC(500, 0x10)); }
		bool bForceApplyToProjectiles(bool val) { mixin(MSBPC(500, 0x10)); }
		bool bForceApplyToRigidBodies() { mixin(MGBPC(500, 0x8)); }
		bool bForceApplyToRigidBodies(bool val) { mixin(MSBPC(500, 0x8)); }
		bool bForceApplyToFluid() { mixin(MGBPC(500, 0x4)); }
		bool bForceApplyToFluid(bool val) { mixin(MSBPC(500, 0x4)); }
		bool bForceApplyToCloth() { mixin(MGBPC(500, 0x2)); }
		bool bForceApplyToCloth(bool val) { mixin(MSBPC(500, 0x2)); }
	}
	final void OnToggle(SeqAct_Toggle inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnToggle, params.ptr, cast(void*)0);
	}
}
