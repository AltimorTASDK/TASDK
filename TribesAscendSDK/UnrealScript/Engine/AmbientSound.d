module UnrealScript.Engine.AmbientSound;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Keypoint;

extern(C++) interface AmbientSound : Keypoint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.AmbientSound")); }
	private static __gshared AmbientSound mDefaultProperties;
	@property final static AmbientSound DefaultProperties() { mixin(MGDPC("AmbientSound", "AmbientSound Engine.Default__AmbientSound")); }
	@property final
	{
		// WARNING: Property 'AudioComponent' has the same name as a defined type!
		bool bIsPlaying() { mixin(MGBPC(480, 0x2)); }
		bool bIsPlaying(bool val) { mixin(MSBPC(480, 0x2)); }
		bool bAutoPlay() { mixin(MGBPC(480, 0x1)); }
		bool bAutoPlay(bool val) { mixin(MSBPC(480, 0x1)); }
	}
}
