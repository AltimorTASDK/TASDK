module UnrealScript.TribesGame.TrDmgType_StormShield;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_StormShield : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_StormShield")()); }
	private static __gshared TrDmgType_StormShield mDefaultProperties;
	@property final static TrDmgType_StormShield DefaultProperties() { mixin(MGDPC!(TrDmgType_StormShield, "TrDmgType_StormShield TribesGame.Default__TrDmgType_StormShield")()); }
}
