module UnrealScript.Engine.AmbientSoundSimple;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.AmbientSound;
import UnrealScript.Engine.SoundNodeAmbient;

extern(C++) interface AmbientSoundSimple : AmbientSound
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AmbientSoundSimple")); }
	private static __gshared AmbientSoundSimple mDefaultProperties;
	@property final static AmbientSoundSimple DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AmbientSoundSimple)("AmbientSoundSimple Engine.Default__AmbientSoundSimple")); }
	@property final auto ref
	{
		SoundNodeAmbient SoundNodeInstance() { return *cast(SoundNodeAmbient*)(cast(size_t)cast(void*)this + 496); }
		SoundCue SoundCueInstance() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 492); }
		SoundNodeAmbient AmbientProperties() { return *cast(SoundNodeAmbient*)(cast(size_t)cast(void*)this + 488); }
	}
}
