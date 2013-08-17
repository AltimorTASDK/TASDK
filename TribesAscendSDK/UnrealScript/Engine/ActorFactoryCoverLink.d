module UnrealScript.Engine.ActorFactoryCoverLink;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorFactory;

extern(C++) interface ActorFactoryCoverLink : ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ActorFactoryCoverLink")); }
	private static __gshared ActorFactoryCoverLink mDefaultProperties;
	@property final static ActorFactoryCoverLink DefaultProperties() { mixin(MGDPC("ActorFactoryCoverLink", "ActorFactoryCoverLink Engine.Default__ActorFactoryCoverLink")); }
}
