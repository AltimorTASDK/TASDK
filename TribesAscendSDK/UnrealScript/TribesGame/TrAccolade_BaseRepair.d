module UnrealScript.TribesGame.TrAccolade_BaseRepair;

import ScriptClasses;
import UnrealScript.TribesGame.TrAccolade;

extern(C++) interface TrAccolade_BaseRepair : TrAccolade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAccolade_BaseRepair")); }
	private static __gshared TrAccolade_BaseRepair mDefaultProperties;
	@property final static TrAccolade_BaseRepair DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrAccolade_BaseRepair)("TrAccolade_BaseRepair TribesGame.Default__TrAccolade_BaseRepair")); }
}
