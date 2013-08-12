module UnrealScript.Engine.AmbientSound;

import ScriptClasses;
import UnrealScript.Engine.Keypoint;

extern(C++) interface AmbientSound : Keypoint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AmbientSound")); }
	private static __gshared AmbientSound mDefaultProperties;
	@property final static AmbientSound DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AmbientSound)("AmbientSound Engine.Default__AmbientSound")); }
	@property final
	{
		bool bIsPlaying() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x2) != 0; }
		bool bIsPlaying(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x2; } return val; }
		bool bAutoPlay() { return (*cast(uint*)(cast(size_t)cast(void*)this + 480) & 0x1) != 0; }
		bool bAutoPlay(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 480) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 480) &= ~0x1; } return val; }
	}
}
