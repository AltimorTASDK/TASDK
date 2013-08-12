module UnrealScript.UTGame.UTSkelControl_HugGround;

import ScriptClasses;
import UnrealScript.UDKBase.UDKSkelControl_HugGround;

extern(C++) interface UTSkelControl_HugGround : UDKSkelControl_HugGround
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTSkelControl_HugGround")); }
	private static __gshared UTSkelControl_HugGround mDefaultProperties;
	@property final static UTSkelControl_HugGround DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTSkelControl_HugGround)("UTSkelControl_HugGround UTGame.Default__UTSkelControl_HugGround")); }
}
