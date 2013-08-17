module UnrealScript.TribesGame.TrDmgType_BoltLauncher;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_BoltLauncher : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_BoltLauncher")); }
	private static __gshared TrDmgType_BoltLauncher mDefaultProperties;
	@property final static TrDmgType_BoltLauncher DefaultProperties() { mixin(MGDPC("TrDmgType_BoltLauncher", "TrDmgType_BoltLauncher TribesGame.Default__TrDmgType_BoltLauncher")); }
}
