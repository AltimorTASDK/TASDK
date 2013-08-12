module UnrealScript.TribesGame.TrDevice_BoltLauncher;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_BoltLauncher : TrDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_BoltLauncher")); }
}
