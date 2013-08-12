module UnrealScript.Engine.SoundNodeAmbientNonLoopToggle;

import ScriptClasses;
import UnrealScript.Engine.SoundNodeAmbientNonLoop;

extern(C++) interface SoundNodeAmbientNonLoopToggle : SoundNodeAmbientNonLoop
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SoundNodeAmbientNonLoopToggle")); }
}
