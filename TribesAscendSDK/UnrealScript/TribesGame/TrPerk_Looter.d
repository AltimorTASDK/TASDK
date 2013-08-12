module UnrealScript.TribesGame.TrPerk_Looter;

import ScriptClasses;
import UnrealScript.TribesGame.TrPerk;

extern(C++) interface TrPerk_Looter : TrPerk
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrPerk_Looter")); }
	private static __gshared TrPerk_Looter mDefaultProperties;
	@property final static TrPerk_Looter DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrPerk_Looter)("TrPerk_Looter TribesGame.Default__TrPerk_Looter")); }
}
