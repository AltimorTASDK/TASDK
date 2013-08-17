module UnrealScript.Engine.SoundNodeAmbientNonLoopToggle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundNodeAmbientNonLoop;

extern(C++) interface SoundNodeAmbientNonLoopToggle : SoundNodeAmbientNonLoop
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SoundNodeAmbientNonLoopToggle")()); }
	private static __gshared SoundNodeAmbientNonLoopToggle mDefaultProperties;
	@property final static SoundNodeAmbientNonLoopToggle DefaultProperties() { mixin(MGDPC!(SoundNodeAmbientNonLoopToggle, "SoundNodeAmbientNonLoopToggle Engine.Default__SoundNodeAmbientNonLoopToggle")()); }
}
