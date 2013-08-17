module UnrealScript.TribesGame.TrDmgType_RocketLauncher;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_RocketLauncher : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_RocketLauncher")); }
	private static __gshared TrDmgType_RocketLauncher mDefaultProperties;
	@property final static TrDmgType_RocketLauncher DefaultProperties() { mixin(MGDPC("TrDmgType_RocketLauncher", "TrDmgType_RocketLauncher TribesGame.Default__TrDmgType_RocketLauncher")); }
}
