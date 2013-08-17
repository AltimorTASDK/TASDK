module UnrealScript.UTGame.UTEmit_HeadShotHelmet;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTReplicatedEmitter;

extern(C++) interface UTEmit_HeadShotHelmet : UTReplicatedEmitter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTEmit_HeadShotHelmet")); }
	private static __gshared UTEmit_HeadShotHelmet mDefaultProperties;
	@property final static UTEmit_HeadShotHelmet DefaultProperties() { mixin(MGDPC("UTEmit_HeadShotHelmet", "UTEmit_HeadShotHelmet UTGame.Default__UTEmit_HeadShotHelmet")); }
}
