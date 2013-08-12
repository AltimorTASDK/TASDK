module UnrealScript.TribesGame.TrPerk_PotentialEnergy;

import ScriptClasses;
import UnrealScript.TribesGame.TrPerk;

extern(C++) interface TrPerk_PotentialEnergy : TrPerk
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrPerk_PotentialEnergy")); }
	private static __gshared TrPerk_PotentialEnergy mDefaultProperties;
	@property final static TrPerk_PotentialEnergy DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrPerk_PotentialEnergy)("TrPerk_PotentialEnergy TribesGame.Default__TrPerk_PotentialEnergy")); }
}
