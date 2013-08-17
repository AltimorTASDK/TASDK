module UnrealScript.UTGame.UTSkelControl_SpinControl;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKSkelControl_SpinControl;

extern(C++) interface UTSkelControl_SpinControl : UDKSkelControl_SpinControl
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTSkelControl_SpinControl")()); }
	private static __gshared UTSkelControl_SpinControl mDefaultProperties;
	@property final static UTSkelControl_SpinControl DefaultProperties() { mixin(MGDPC!(UTSkelControl_SpinControl, "UTSkelControl_SpinControl UTGame.Default__UTSkelControl_SpinControl")()); }
}
