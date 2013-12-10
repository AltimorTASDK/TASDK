module UnrealScript.Engine.SpeedTreeActor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;

extern(C++) interface SpeedTreeActor : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SpeedTreeActor")); }
	private static __gshared SpeedTreeActor mDefaultProperties;
	@property final static SpeedTreeActor DefaultProperties() { mixin(MGDPC("SpeedTreeActor", "SpeedTreeActor Engine.Default__SpeedTreeActor")); }
	// ERROR: Unsupported object class 'ComponentProperty' for the property named 'SpeedTreeComponent'!
}
