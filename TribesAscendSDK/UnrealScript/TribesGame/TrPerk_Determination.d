module UnrealScript.TribesGame.TrPerk_Determination;

import ScriptClasses;
import UnrealScript.TribesGame.TrPerk;

extern(C++) interface TrPerk_Determination : TrPerk
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrPerk_Determination")); }
	private static __gshared TrPerk_Determination mDefaultProperties;
	@property final static TrPerk_Determination DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrPerk_Determination)("TrPerk_Determination TribesGame.Default__TrPerk_Determination")); }
}
