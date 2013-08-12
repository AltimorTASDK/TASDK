module UnrealScript.TribesGame.TrPerk_SuperHeavy;

import ScriptClasses;
import UnrealScript.TribesGame.TrPerk;

extern(C++) interface TrPerk_SuperHeavy : TrPerk
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrPerk_SuperHeavy")); }
	private static __gshared TrPerk_SuperHeavy mDefaultProperties;
	@property final static TrPerk_SuperHeavy DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrPerk_SuperHeavy)("TrPerk_SuperHeavy TribesGame.Default__TrPerk_SuperHeavy")); }
}
