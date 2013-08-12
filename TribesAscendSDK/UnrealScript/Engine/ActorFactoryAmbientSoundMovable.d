module UnrealScript.Engine.ActorFactoryAmbientSoundMovable;

import ScriptClasses;
import UnrealScript.Engine.ActorFactoryAmbientSound;

extern(C++) interface ActorFactoryAmbientSoundMovable : ActorFactoryAmbientSound
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ActorFactoryAmbientSoundMovable")); }
	private static __gshared ActorFactoryAmbientSoundMovable mDefaultProperties;
	@property final static ActorFactoryAmbientSoundMovable DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ActorFactoryAmbientSoundMovable)("ActorFactoryAmbientSoundMovable Engine.Default__ActorFactoryAmbientSoundMovable")); }
}
