module UnrealScript.TribesGame.TrAccolade_TurretAssist;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_TurretAssist : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAccolade_TurretAssist")()); }
	private static __gshared TrAccolade_TurretAssist mDefaultProperties;
	@property final static TrAccolade_TurretAssist DefaultProperties() { mixin(MGDPC!(TrAccolade_TurretAssist, "TrAccolade_TurretAssist TribesGame.Default__TrAccolade_TurretAssist")()); }
}
