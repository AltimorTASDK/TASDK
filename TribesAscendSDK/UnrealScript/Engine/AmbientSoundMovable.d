module UnrealScript.Engine.AmbientSoundMovable;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AmbientSound;

extern(C++) interface AmbientSoundMovable : AmbientSound
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.AmbientSoundMovable")()); }
	private static __gshared AmbientSoundMovable mDefaultProperties;
	@property final static AmbientSoundMovable DefaultProperties() { mixin(MGDPC!(AmbientSoundMovable, "AmbientSoundMovable Engine.Default__AmbientSoundMovable")()); }
}
