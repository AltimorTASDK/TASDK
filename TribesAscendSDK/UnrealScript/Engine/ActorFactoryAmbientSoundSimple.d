module UnrealScript.Engine.ActorFactoryAmbientSoundSimple;

import ScriptClasses;
import UnrealScript.Engine.ActorFactory;
import UnrealScript.Engine.SoundNodeWave;

extern(C++) interface ActorFactoryAmbientSoundSimple : ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ActorFactoryAmbientSoundSimple")); }
	private static __gshared ActorFactoryAmbientSoundSimple mDefaultProperties;
	@property final static ActorFactoryAmbientSoundSimple DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ActorFactoryAmbientSoundSimple)("ActorFactoryAmbientSoundSimple Engine.Default__ActorFactoryAmbientSoundSimple")); }
	// WARNING: Property 'SoundNodeWave' has the same name as a defined type!
}
