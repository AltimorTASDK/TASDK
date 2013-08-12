module UnrealScript.UTGame.UTSkelControl_HoverboardSwing;

import ScriptClasses;
import UnrealScript.UDKBase.UDKSkelControl_HoverboardSwing;

extern(C++) interface UTSkelControl_HoverboardSwing : UDKSkelControl_HoverboardSwing
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTSkelControl_HoverboardSwing")); }
	private static __gshared UTSkelControl_HoverboardSwing mDefaultProperties;
	@property final static UTSkelControl_HoverboardSwing DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTSkelControl_HoverboardSwing)("UTSkelControl_HoverboardSwing UTGame.Default__UTSkelControl_HoverboardSwing")); }
}
