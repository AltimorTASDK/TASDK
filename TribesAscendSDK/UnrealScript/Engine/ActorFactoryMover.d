module UnrealScript.Engine.ActorFactoryMover;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorFactoryDynamicSM;

extern(C++) interface ActorFactoryMover : ActorFactoryDynamicSM
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ActorFactoryMover")); }
	private static __gshared ActorFactoryMover mDefaultProperties;
	@property final static ActorFactoryMover DefaultProperties() { mixin(MGDPC("ActorFactoryMover", "ActorFactoryMover Engine.Default__ActorFactoryMover")); }
}
