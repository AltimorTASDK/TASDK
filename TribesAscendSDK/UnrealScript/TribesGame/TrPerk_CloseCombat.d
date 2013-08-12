module UnrealScript.TribesGame.TrPerk_CloseCombat;

import ScriptClasses;
import UnrealScript.TribesGame.TrPerk;

extern(C++) interface TrPerk_CloseCombat : TrPerk
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrPerk_CloseCombat")); }
	private static __gshared TrPerk_CloseCombat mDefaultProperties;
	@property final static TrPerk_CloseCombat DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrPerk_CloseCombat)("TrPerk_CloseCombat TribesGame.Default__TrPerk_CloseCombat")); }
}
