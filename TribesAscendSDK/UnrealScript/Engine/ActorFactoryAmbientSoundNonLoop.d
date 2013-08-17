module UnrealScript.Engine.ActorFactoryAmbientSoundNonLoop;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorFactoryAmbientSoundSimple;

extern(C++) interface ActorFactoryAmbientSoundNonLoop : ActorFactoryAmbientSoundSimple
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ActorFactoryAmbientSoundNonLoop")); }
	private static __gshared ActorFactoryAmbientSoundNonLoop mDefaultProperties;
	@property final static ActorFactoryAmbientSoundNonLoop DefaultProperties() { mixin(MGDPC("ActorFactoryAmbientSoundNonLoop", "ActorFactoryAmbientSoundNonLoop Engine.Default__ActorFactoryAmbientSoundNonLoop")); }
}
