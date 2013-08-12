module UnrealScript.Engine.ChannelDownload;

import ScriptClasses;
import UnrealScript.Engine.Download;

extern(C++) interface ChannelDownload : Download
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.ChannelDownload")); }
}
