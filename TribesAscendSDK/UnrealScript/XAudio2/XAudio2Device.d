module UnrealScript.XAudio2.XAudio2Device;

import ScriptClasses;
import UnrealScript.Engine.AudioDevice;

extern(C++) interface XAudio2Device : AudioDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class XAudio2.XAudio2Device")); }
}
