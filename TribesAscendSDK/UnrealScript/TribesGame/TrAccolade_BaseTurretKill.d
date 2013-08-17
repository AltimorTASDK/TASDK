module UnrealScript.TribesGame.TrAccolade_BaseTurretKill;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_BaseTurretKill : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAccolade_BaseTurretKill")); }
	private static __gshared TrAccolade_BaseTurretKill mDefaultProperties;
	@property final static TrAccolade_BaseTurretKill DefaultProperties() { mixin(MGDPC("TrAccolade_BaseTurretKill", "TrAccolade_BaseTurretKill TribesGame.Default__TrAccolade_BaseTurretKill")); }
}
