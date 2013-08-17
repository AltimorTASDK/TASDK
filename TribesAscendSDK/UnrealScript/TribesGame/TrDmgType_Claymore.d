module UnrealScript.TribesGame.TrDmgType_Claymore;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Mine;

extern(C++) interface TrDmgType_Claymore : TrDmgType_Mine
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_Claymore")()); }
	private static __gshared TrDmgType_Claymore mDefaultProperties;
	@property final static TrDmgType_Claymore DefaultProperties() { mixin(MGDPC!(TrDmgType_Claymore, "TrDmgType_Claymore TribesGame.Default__TrDmgType_Claymore")()); }
}
