module UnrealScript.UDKBase.UDKSkelControl_Rotate;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SkelControlSingleBone;

extern(C++) interface UDKSkelControl_Rotate : SkelControlSingleBone
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKSkelControl_Rotate")()); }
	private static __gshared UDKSkelControl_Rotate mDefaultProperties;
	@property final static UDKSkelControl_Rotate DefaultProperties() { mixin(MGDPC!(UDKSkelControl_Rotate, "UDKSkelControl_Rotate UDKBase.Default__UDKSkelControl_Rotate")()); }
	@property final auto ref
	{
		Rotator DesiredBoneRotationRate() { mixin(MGPC!("Rotator", 248)()); }
		Rotator DesiredBoneRotation() { mixin(MGPC!("Rotator", 236)()); }
	}
}
