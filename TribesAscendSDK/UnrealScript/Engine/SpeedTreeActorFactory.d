module UnrealScript.Engine.SpeedTreeActorFactory;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorFactory;
import UnrealScript.Engine.SpeedTree;

extern(C++) interface SpeedTreeActorFactory : ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SpeedTreeActorFactory")); }
	private static __gshared SpeedTreeActorFactory mDefaultProperties;
	@property final static SpeedTreeActorFactory DefaultProperties() { mixin(MGDPC("SpeedTreeActorFactory", "SpeedTreeActorFactory Engine.Default__SpeedTreeActorFactory")); }
	// WARNING: Property 'SpeedTree' has the same name as a defined type!
}
