module UnrealScript.Engine.ActorFactoryAmbientSoundNonLoop;

import ScriptClasses;
import UnrealScript.Engine.ActorFactoryAmbientSoundSimple;

extern(C++) interface ActorFactoryAmbientSoundNonLoop : ActorFactoryAmbientSoundSimple
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ActorFactoryAmbientSoundNonLoop")); }
	private static __gshared ActorFactoryAmbientSoundNonLoop mDefaultProperties;
	@property final static ActorFactoryAmbientSoundNonLoop DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(ActorFactoryAmbientSoundNonLoop)("ActorFactoryAmbientSoundNonLoop Engine.Default__ActorFactoryAmbientSoundNonLoop")); }
}
