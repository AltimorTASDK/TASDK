module UnrealScript.UDKBase.UDKSkelControl_CantileverBeam;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SkelControlLookAt;

extern(C++) interface UDKSkelControl_CantileverBeam : SkelControlLookAt
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKSkelControl_CantileverBeam")()); }
	private static __gshared UDKSkelControl_CantileverBeam mDefaultProperties;
	@property final static UDKSkelControl_CantileverBeam DefaultProperties() { mixin(MGDPC!(UDKSkelControl_CantileverBeam, "UDKSkelControl_CantileverBeam UDKBase.Default__UDKSkelControl_CantileverBeam")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mEntireBeamVelocity;
		public @property static final ScriptFunction EntireBeamVelocity() { mixin(MGF!("mEntireBeamVelocity", "Function UDKBase.UDKSkelControl_CantileverBeam.EntireBeamVelocity")()); }
	}
	@property final auto ref
	{
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__EntireBeamVelocity__Delegate'!
		float PercentBeamVelocityTransfer() { mixin(MGPC!("float", 364)()); }
		float SpringDamping() { mixin(MGPC!("float", 360)()); }
		float SpringStiffness() { mixin(MGPC!("float", 356)()); }
		Vector Velocity() { mixin(MGPC!("Vector", 344)()); }
		Vector InitialWorldSpaceGoalOffset() { mixin(MGPC!("Vector", 332)()); }
		Vector WorldSpaceGoal() { mixin(MGPC!("Vector", 320)()); }
	}
	final Vector EntireBeamVelocity()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.EntireBeamVelocity, params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
}
