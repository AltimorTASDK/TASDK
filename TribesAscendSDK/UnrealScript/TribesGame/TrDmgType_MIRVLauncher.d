module UnrealScript.TribesGame.TrDmgType_MIRVLauncher;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_MIRVLauncher : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_MIRVLauncher")()); }
	private static __gshared TrDmgType_MIRVLauncher mDefaultProperties;
	@property final static TrDmgType_MIRVLauncher DefaultProperties() { mixin(MGDPC!(TrDmgType_MIRVLauncher, "TrDmgType_MIRVLauncher TribesGame.Default__TrDmgType_MIRVLauncher")()); }
}
