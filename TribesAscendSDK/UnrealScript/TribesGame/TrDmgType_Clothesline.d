module UnrealScript.TribesGame.TrDmgType_Clothesline;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_Clothesline : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_Clothesline")()); }
	private static __gshared TrDmgType_Clothesline mDefaultProperties;
	@property final static TrDmgType_Clothesline DefaultProperties() { mixin(MGDPC!(TrDmgType_Clothesline, "TrDmgType_Clothesline TribesGame.Default__TrDmgType_Clothesline")()); }
}
