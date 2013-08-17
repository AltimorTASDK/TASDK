module UnrealScript.TribesGame.TrDmgType_AVMine;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Mine;

extern(C++) interface TrDmgType_AVMine : TrDmgType_Mine
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_AVMine")()); }
	private static __gshared TrDmgType_AVMine mDefaultProperties;
	@property final static TrDmgType_AVMine DefaultProperties() { mixin(MGDPC!(TrDmgType_AVMine, "TrDmgType_AVMine TribesGame.Default__TrDmgType_AVMine")()); }
}
