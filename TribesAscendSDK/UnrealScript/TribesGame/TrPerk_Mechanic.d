module UnrealScript.TribesGame.TrPerk_Mechanic;

import ScriptClasses;
import UnrealScript.TribesGame.TrPerk;

extern(C++) interface TrPerk_Mechanic : TrPerk
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrPerk_Mechanic")); }
	private static __gshared TrPerk_Mechanic mDefaultProperties;
	@property final static TrPerk_Mechanic DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrPerk_Mechanic)("TrPerk_Mechanic TribesGame.Default__TrPerk_Mechanic")); }
}
