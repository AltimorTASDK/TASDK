module UnrealScript.TribesGame.TrPerk_Stealthy;

import ScriptClasses;
import UnrealScript.TribesGame.TrPerk;

extern(C++) interface TrPerk_Stealthy : TrPerk
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrPerk_Stealthy")); }
	private static __gshared TrPerk_Stealthy mDefaultProperties;
	@property final static TrPerk_Stealthy DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrPerk_Stealthy)("TrPerk_Stealthy TribesGame.Default__TrPerk_Stealthy")); }
}
