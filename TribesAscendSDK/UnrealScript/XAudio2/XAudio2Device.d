module UnrealScript.XAudio2.XAudio2Device;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AudioDevice;

extern(C++) interface XAudio2Device : AudioDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class XAudio2.XAudio2Device")); }
	private static __gshared XAudio2Device mDefaultProperties;
	@property final static XAudio2Device DefaultProperties() { mixin(MGDPC("XAudio2Device", "XAudio2Device XAudio2.Default__XAudio2Device")); }
}
