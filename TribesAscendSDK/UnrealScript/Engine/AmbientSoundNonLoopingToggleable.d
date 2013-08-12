module UnrealScript.Engine.AmbientSoundNonLoopingToggleable;

import ScriptClasses;
import UnrealScript.Engine.AmbientSoundSimpleToggleable;

extern(C++) interface AmbientSoundNonLoopingToggleable : AmbientSoundSimpleToggleable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AmbientSoundNonLoopingToggleable")); }
	private static __gshared AmbientSoundNonLoopingToggleable mDefaultProperties;
	@property final static AmbientSoundNonLoopingToggleable DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AmbientSoundNonLoopingToggleable)("AmbientSoundNonLoopingToggleable Engine.Default__AmbientSoundNonLoopingToggleable")); }
}
