module UnrealScript.Engine.AmbientSoundMovable;

import ScriptClasses;
import UnrealScript.Engine.AmbientSound;

extern(C++) interface AmbientSoundMovable : AmbientSound
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AmbientSoundMovable")); }
	private static __gshared AmbientSoundMovable mDefaultProperties;
	@property final static AmbientSoundMovable DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AmbientSoundMovable)("AmbientSoundMovable Engine.Default__AmbientSoundMovable")); }
}
