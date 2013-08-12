module UnrealScript.TribesGame.TrPerk_Survivalist;

import ScriptClasses;
import UnrealScript.TribesGame.TrPerk;

extern(C++) interface TrPerk_Survivalist : TrPerk
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrPerk_Survivalist")); }
	private static __gshared TrPerk_Survivalist mDefaultProperties;
	@property final static TrPerk_Survivalist DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrPerk_Survivalist)("TrPerk_Survivalist TribesGame.Default__TrPerk_Survivalist")); }
}
