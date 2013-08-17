module UnrealScript.Engine.SkelControl_TwistBone;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SkelControlBase;

extern(C++) interface SkelControl_TwistBone : SkelControlBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SkelControl_TwistBone")()); }
	private static __gshared SkelControl_TwistBone mDefaultProperties;
	@property final static SkelControl_TwistBone DefaultProperties() { mixin(MGDPC!(SkelControl_TwistBone, "SkelControl_TwistBone Engine.Default__SkelControl_TwistBone")()); }
	@property final auto ref
	{
		float TwistAngleScale() { mixin(MGPC!("float", 196)()); }
		ScriptName SourceBoneName() { mixin(MGPC!("ScriptName", 188)()); }
	}
}
