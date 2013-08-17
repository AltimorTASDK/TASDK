module UnrealScript.UTGame.UTKActor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKKActorBreakable;

extern(C++) interface UTKActor : UDKKActorBreakable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTKActor")); }
	private static __gshared UTKActor mDefaultProperties;
	@property final static UTKActor DefaultProperties() { mixin(MGDPC("UTKActor", "UTKActor UTGame.Default__UTKActor")); }
}
