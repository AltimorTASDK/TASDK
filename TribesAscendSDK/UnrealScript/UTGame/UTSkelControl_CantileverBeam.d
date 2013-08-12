module UnrealScript.UTGame.UTSkelControl_CantileverBeam;

import ScriptClasses;
import UnrealScript.UDKBase.UDKSkelControl_CantileverBeam;

extern(C++) interface UTSkelControl_CantileverBeam : UDKSkelControl_CantileverBeam
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTSkelControl_CantileverBeam")); }
	private static __gshared UTSkelControl_CantileverBeam mDefaultProperties;
	@property final static UTSkelControl_CantileverBeam DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTSkelControl_CantileverBeam)("UTSkelControl_CantileverBeam UTGame.Default__UTSkelControl_CantileverBeam")); }
}
