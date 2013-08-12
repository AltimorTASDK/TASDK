module UnrealScript.Engine.AmbientSoundMovable;

import ScriptClasses;
import UnrealScript.Engine.AmbientSound;

extern(C++) interface AmbientSoundMovable : AmbientSound
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AmbientSoundMovable")); }
}
