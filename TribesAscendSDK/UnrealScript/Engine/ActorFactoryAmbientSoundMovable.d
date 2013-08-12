module UnrealScript.Engine.ActorFactoryAmbientSoundMovable;

import ScriptClasses;
import UnrealScript.Engine.ActorFactoryAmbientSound;

extern(C++) interface ActorFactoryAmbientSoundMovable : ActorFactoryAmbientSound
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ActorFactoryAmbientSoundMovable")); }
}
