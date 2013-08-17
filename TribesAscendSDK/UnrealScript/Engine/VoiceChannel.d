module UnrealScript.Engine.VoiceChannel;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Channel;

extern(C++) interface VoiceChannel : Channel
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.VoiceChannel")()); }
	private static __gshared VoiceChannel mDefaultProperties;
	@property final static VoiceChannel DefaultProperties() { mixin(MGDPC!(VoiceChannel, "VoiceChannel Engine.Default__VoiceChannel")()); }
}
