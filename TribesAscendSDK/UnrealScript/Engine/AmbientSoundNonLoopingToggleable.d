module UnrealScript.Engine.AmbientSoundNonLoopingToggleable;

import ScriptClasses;
import UnrealScript.Engine.AmbientSoundSimpleToggleable;

extern(C++) interface AmbientSoundNonLoopingToggleable : AmbientSoundSimpleToggleable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AmbientSoundNonLoopingToggleable")); }
}
