module UnrealScript.Engine.AmbientSoundNonLoop;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AmbientSoundSimple;

extern(C++) interface AmbientSoundNonLoop : AmbientSoundSimple
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.AmbientSoundNonLoop")()); }
	private static __gshared AmbientSoundNonLoop mDefaultProperties;
	@property final static AmbientSoundNonLoop DefaultProperties() { mixin(MGDPC!(AmbientSoundNonLoop, "AmbientSoundNonLoop Engine.Default__AmbientSoundNonLoop")()); }
}
