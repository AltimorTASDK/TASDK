module UnrealScript.Engine.VoiceChannel;

import ScriptClasses;
import UnrealScript.Engine.Channel;

extern(C++) interface VoiceChannel : Channel
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.VoiceChannel")); }
	private static __gshared VoiceChannel mDefaultProperties;
	@property final static VoiceChannel DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(VoiceChannel)("VoiceChannel Engine.Default__VoiceChannel")); }
}
