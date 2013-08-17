module UnrealScript.TribesGame.TrDevice_BoltLauncher;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_BoltLauncher : TrDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_BoltLauncher")()); }
	private static __gshared TrDevice_BoltLauncher mDefaultProperties;
	@property final static TrDevice_BoltLauncher DefaultProperties() { mixin(MGDPC!(TrDevice_BoltLauncher, "TrDevice_BoltLauncher TribesGame.Default__TrDevice_BoltLauncher")()); }
}
