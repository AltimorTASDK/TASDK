module UnrealScript.UTGame.UTSkelControl_MassBoneScaling;

import ScriptClasses;
import UnrealScript.UDKBase.UDKSkelControl_MassBoneScaling;

extern(C++) interface UTSkelControl_MassBoneScaling : UDKSkelControl_MassBoneScaling
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTSkelControl_MassBoneScaling")); }
	private static __gshared UTSkelControl_MassBoneScaling mDefaultProperties;
	@property final static UTSkelControl_MassBoneScaling DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTSkelControl_MassBoneScaling)("UTSkelControl_MassBoneScaling UTGame.Default__UTSkelControl_MassBoneScaling")); }
}
