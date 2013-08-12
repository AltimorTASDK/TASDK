module UnrealScript.TribesGame.TrAccolade_BaseTurretKill;

import ScriptClasses;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_BaseTurretKill : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAccolade_BaseTurretKill")); }
	private static __gshared TrAccolade_BaseTurretKill mDefaultProperties;
	@property final static TrAccolade_BaseTurretKill DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAccolade_BaseTurretKill)("TrAccolade_BaseTurretKill TribesGame.Default__TrAccolade_BaseTurretKill")); }
}
