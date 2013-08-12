module UnrealScript.TribesGame.TrAccolade_TurretAssist;

import ScriptClasses;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_TurretAssist : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAccolade_TurretAssist")); }
	private static __gshared TrAccolade_TurretAssist mDefaultProperties;
	@property final static TrAccolade_TurretAssist DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAccolade_TurretAssist)("TrAccolade_TurretAssist TribesGame.Default__TrAccolade_TurretAssist")); }
}
