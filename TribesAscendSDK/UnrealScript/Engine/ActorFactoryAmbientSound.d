module UnrealScript.Engine.ActorFactoryAmbientSound;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.ActorFactory;

extern(C++) interface ActorFactoryAmbientSound : ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ActorFactoryAmbientSound")); }
	private static __gshared ActorFactoryAmbientSound mDefaultProperties;
	@property final static ActorFactoryAmbientSound DefaultProperties() { mixin(MGDPC("ActorFactoryAmbientSound", "ActorFactoryAmbientSound Engine.Default__ActorFactoryAmbientSound")); }
	@property final auto ref SoundCue AmbientSoundCue() { mixin(MGPC("SoundCue", 92)); }
}
