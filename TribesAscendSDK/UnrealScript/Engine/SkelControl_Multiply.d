module UnrealScript.Engine.SkelControl_Multiply;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SkelControlBase;

extern(C++) interface SkelControl_Multiply : SkelControlBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SkelControl_Multiply")()); }
	private static __gshared SkelControl_Multiply mDefaultProperties;
	@property final static SkelControl_Multiply DefaultProperties() { mixin(MGDPC!(SkelControl_Multiply, "SkelControl_Multiply Engine.Default__SkelControl_Multiply")()); }
	@property final auto ref float Multiplier() { mixin(MGPC!("float", 188)()); }
}
