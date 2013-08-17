module UnrealScript.TribesGame.TrDevice_MIRVLauncher;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_MIRVLauncher : TrDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDevice_MIRVLauncher")); }
	private static __gshared TrDevice_MIRVLauncher mDefaultProperties;
	@property final static TrDevice_MIRVLauncher DefaultProperties() { mixin(MGDPC("TrDevice_MIRVLauncher", "TrDevice_MIRVLauncher TribesGame.Default__TrDevice_MIRVLauncher")); }
}
