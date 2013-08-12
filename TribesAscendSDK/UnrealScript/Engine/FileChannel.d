module UnrealScript.Engine.FileChannel;

import ScriptClasses;
import UnrealScript.Engine.Channel;

extern(C++) interface FileChannel : Channel
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.FileChannel")); }
}
