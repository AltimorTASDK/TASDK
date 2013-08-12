module UnrealScript.TribesGame.TrPerk_Rage;

import ScriptClasses;
import UnrealScript.TribesGame.TrPerk;

extern(C++) interface TrPerk_Rage : TrPerk
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrPerk_Rage")); }
	private static __gshared TrPerk_Rage mDefaultProperties;
	@property final static TrPerk_Rage DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrPerk_Rage)("TrPerk_Rage TribesGame.Default__TrPerk_Rage")); }
}
