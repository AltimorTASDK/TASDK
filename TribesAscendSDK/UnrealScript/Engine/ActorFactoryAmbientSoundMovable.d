module UnrealScript.Engine.ActorFactoryAmbientSoundMovable;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorFactoryAmbientSound;

extern(C++) interface ActorFactoryAmbientSoundMovable : ActorFactoryAmbientSound
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ActorFactoryAmbientSoundMovable")); }
	private static __gshared ActorFactoryAmbientSoundMovable mDefaultProperties;
	@property final static ActorFactoryAmbientSoundMovable DefaultProperties() { mixin(MGDPC("ActorFactoryAmbientSoundMovable", "ActorFactoryAmbientSoundMovable Engine.Default__ActorFactoryAmbientSoundMovable")); }
}
