module UnrealScript.Engine.FileChannel;

import ScriptClasses;
import UnrealScript.Engine.Channel;

extern(C++) interface FileChannel : Channel
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.FileChannel")); }
	private static __gshared FileChannel mDefaultProperties;
	@property final static FileChannel DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(FileChannel)("FileChannel Engine.Default__FileChannel")); }
}
