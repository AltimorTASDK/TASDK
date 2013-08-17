module UnrealScript.Engine.FileChannel;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Channel;

extern(C++) interface FileChannel : Channel
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.FileChannel")()); }
	private static __gshared FileChannel mDefaultProperties;
	@property final static FileChannel DefaultProperties() { mixin(MGDPC!(FileChannel, "FileChannel Engine.Default__FileChannel")()); }
}
