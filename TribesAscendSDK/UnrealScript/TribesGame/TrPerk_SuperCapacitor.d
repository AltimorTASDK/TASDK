module UnrealScript.TribesGame.TrPerk_SuperCapacitor;

import ScriptClasses;
import UnrealScript.TribesGame.TrPerk;

extern(C++) interface TrPerk_SuperCapacitor : TrPerk
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrPerk_SuperCapacitor")); }
	private static __gshared TrPerk_SuperCapacitor mDefaultProperties;
	@property final static TrPerk_SuperCapacitor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrPerk_SuperCapacitor)("TrPerk_SuperCapacitor TribesGame.Default__TrPerk_SuperCapacitor")); }
}
