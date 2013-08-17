module UnrealScript.TribesGame.TrDmgType_TacticalStrike;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_TacticalStrike : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_TacticalStrike")()); }
	private static __gshared TrDmgType_TacticalStrike mDefaultProperties;
	@property final static TrDmgType_TacticalStrike DefaultProperties() { mixin(MGDPC!(TrDmgType_TacticalStrike, "TrDmgType_TacticalStrike TribesGame.Default__TrDmgType_TacticalStrike")()); }
}
