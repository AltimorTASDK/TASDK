module UnrealScript.Engine.ActorFactoryAmbientSoundSimpleToggleable;

import ScriptClasses;
import UnrealScript.Engine.ActorFactoryAmbientSoundSimple;

extern(C++) interface ActorFactoryAmbientSoundSimpleToggleable : ActorFactoryAmbientSoundSimple
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ActorFactoryAmbientSoundSimpleToggleable")); }
}
