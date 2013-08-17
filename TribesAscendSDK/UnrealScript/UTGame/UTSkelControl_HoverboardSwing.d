module UnrealScript.UTGame.UTSkelControl_HoverboardSwing;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKSkelControl_HoverboardSwing;

extern(C++) interface UTSkelControl_HoverboardSwing : UDKSkelControl_HoverboardSwing
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTSkelControl_HoverboardSwing")()); }
	private static __gshared UTSkelControl_HoverboardSwing mDefaultProperties;
	@property final static UTSkelControl_HoverboardSwing DefaultProperties() { mixin(MGDPC!(UTSkelControl_HoverboardSwing, "UTSkelControl_HoverboardSwing UTGame.Default__UTSkelControl_HoverboardSwing")()); }
}
