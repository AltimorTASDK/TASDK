module UnrealScript.Engine.ActorFactoryAmbientSound;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.ActorFactory;

extern(C++) interface ActorFactoryAmbientSound : ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ActorFactoryAmbientSound")); }
	@property final auto ref SoundCue AmbientSoundCue() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 92); }
}
