module UnrealScript.UDKBase.UDKSkelControl_HoverboardSuspension;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SkelControlSingleBone;

extern(C++) interface UDKSkelControl_HoverboardSuspension : SkelControlSingleBone
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKSkelControl_HoverboardSuspension")()); }
	private static __gshared UDKSkelControl_HoverboardSuspension mDefaultProperties;
	@property final static UDKSkelControl_HoverboardSuspension DefaultProperties() { mixin(MGDPC!(UDKSkelControl_HoverboardSuspension, "UDKSkelControl_HoverboardSuspension UDKBase.Default__UDKSkelControl_HoverboardSuspension")()); }
	@property final auto ref
	{
		float CurrentRot() { mixin(MGPC!("float", 268)()); }
		float MaxRotRate() { mixin(MGPC!("float", 264)()); }
		float MaxRot() { mixin(MGPC!("float", 260)()); }
		float RotScale() { mixin(MGPC!("float", 256)()); }
		float MinTrans() { mixin(MGPC!("float", 252)()); }
		float MaxTrans() { mixin(MGPC!("float", 248)()); }
		float TransOffset() { mixin(MGPC!("float", 244)()); }
		float TransScale() { mixin(MGPC!("float", 240)()); }
		float TransIgnore() { mixin(MGPC!("float", 236)()); }
	}
}
