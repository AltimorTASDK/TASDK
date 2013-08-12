module UnrealScript.Engine.SoundNodeAmbientNonLoopToggle;

import ScriptClasses;
import UnrealScript.Engine.SoundNodeAmbientNonLoop;

extern(C++) interface SoundNodeAmbientNonLoopToggle : SoundNodeAmbientNonLoop
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SoundNodeAmbientNonLoopToggle")); }
	private static __gshared SoundNodeAmbientNonLoopToggle mDefaultProperties;
	@property final static SoundNodeAmbientNonLoopToggle DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SoundNodeAmbientNonLoopToggle)("SoundNodeAmbientNonLoopToggle Engine.Default__SoundNodeAmbientNonLoopToggle")); }
}
