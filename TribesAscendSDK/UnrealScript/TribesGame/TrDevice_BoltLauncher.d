module UnrealScript.TribesGame.TrDevice_BoltLauncher;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_BoltLauncher : TrDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_BoltLauncher")); }
	private static __gshared TrDevice_BoltLauncher mDefaultProperties;
	@property final static TrDevice_BoltLauncher DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_BoltLauncher)("TrDevice_BoltLauncher TribesGame.Default__TrDevice_BoltLauncher")); }
}
