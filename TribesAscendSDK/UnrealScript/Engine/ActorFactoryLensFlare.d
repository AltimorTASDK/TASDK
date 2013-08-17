module UnrealScript.Engine.ActorFactoryLensFlare;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.LensFlare;
import UnrealScript.Engine.ActorFactory;

extern(C++) interface ActorFactoryLensFlare : ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ActorFactoryLensFlare")()); }
	private static __gshared ActorFactoryLensFlare mDefaultProperties;
	@property final static ActorFactoryLensFlare DefaultProperties() { mixin(MGDPC!(ActorFactoryLensFlare, "ActorFactoryLensFlare Engine.Default__ActorFactoryLensFlare")()); }
	@property final auto ref LensFlare LensFlareObject() { mixin(MGPC!(LensFlare, 92)()); }
}
