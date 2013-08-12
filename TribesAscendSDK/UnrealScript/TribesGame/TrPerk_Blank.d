module UnrealScript.TribesGame.TrPerk_Blank;

import ScriptClasses;
import UnrealScript.TribesGame.TrPerk;

extern(C++) interface TrPerk_Blank : TrPerk
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrPerk_Blank")); }
	private static __gshared TrPerk_Blank mDefaultProperties;
	@property final static TrPerk_Blank DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrPerk_Blank)("TrPerk_Blank TribesGame.Default__TrPerk_Blank")); }
}
