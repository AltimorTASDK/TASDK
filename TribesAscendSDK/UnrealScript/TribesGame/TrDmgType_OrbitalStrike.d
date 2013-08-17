module UnrealScript.TribesGame.TrDmgType_OrbitalStrike;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_OrbitalStrike : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_OrbitalStrike")()); }
	private static __gshared TrDmgType_OrbitalStrike mDefaultProperties;
	@property final static TrDmgType_OrbitalStrike DefaultProperties() { mixin(MGDPC!(TrDmgType_OrbitalStrike, "TrDmgType_OrbitalStrike TribesGame.Default__TrDmgType_OrbitalStrike")()); }
}
