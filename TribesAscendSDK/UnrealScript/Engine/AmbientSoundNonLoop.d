module UnrealScript.Engine.AmbientSoundNonLoop;

import ScriptClasses;
import UnrealScript.Engine.AmbientSoundSimple;

extern(C++) interface AmbientSoundNonLoop : AmbientSoundSimple
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AmbientSoundNonLoop")); }
	private static __gshared AmbientSoundNonLoop mDefaultProperties;
	@property final static AmbientSoundNonLoop DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AmbientSoundNonLoop)("AmbientSoundNonLoop Engine.Default__AmbientSoundNonLoop")); }
}
