module UnrealScript.Engine.VoiceChannel;

import ScriptClasses;
import UnrealScript.Engine.Channel;

extern(C++) interface VoiceChannel : Channel
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.VoiceChannel")); }
}
