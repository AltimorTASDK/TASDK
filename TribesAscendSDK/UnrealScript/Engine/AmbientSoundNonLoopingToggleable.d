module UnrealScript.Engine.AmbientSoundNonLoopingToggleable;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AmbientSoundSimpleToggleable;

extern(C++) interface AmbientSoundNonLoopingToggleable : AmbientSoundSimpleToggleable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.AmbientSoundNonLoopingToggleable")()); }
	private static __gshared AmbientSoundNonLoopingToggleable mDefaultProperties;
	@property final static AmbientSoundNonLoopingToggleable DefaultProperties() { mixin(MGDPC!(AmbientSoundNonLoopingToggleable, "AmbientSoundNonLoopingToggleable Engine.Default__AmbientSoundNonLoopingToggleable")()); }
}
