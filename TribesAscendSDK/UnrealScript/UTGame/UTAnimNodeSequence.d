module UnrealScript.UTGame.UTAnimNodeSequence;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKAnimNodeSequence;

extern(C++) interface UTAnimNodeSequence : UDKAnimNodeSequence
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTAnimNodeSequence")); }
	private static __gshared UTAnimNodeSequence mDefaultProperties;
	@property final static UTAnimNodeSequence DefaultProperties() { mixin(MGDPC("UTAnimNodeSequence", "UTAnimNodeSequence UTGame.Default__UTAnimNodeSequence")); }
}
