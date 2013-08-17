module UnrealScript.Engine.ActorFactoryAmbientSoundSimple;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorFactory;
import UnrealScript.Engine.SoundNodeWave;

extern(C++) interface ActorFactoryAmbientSoundSimple : ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ActorFactoryAmbientSoundSimple")()); }
	private static __gshared ActorFactoryAmbientSoundSimple mDefaultProperties;
	@property final static ActorFactoryAmbientSoundSimple DefaultProperties() { mixin(MGDPC!(ActorFactoryAmbientSoundSimple, "ActorFactoryAmbientSoundSimple Engine.Default__ActorFactoryAmbientSoundSimple")()); }
	// WARNING: Property 'SoundNodeWave' has the same name as a defined type!
}
