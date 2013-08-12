module UnrealScript.TribesGame.TrPerk_SonicPunch;

import ScriptClasses;
import UnrealScript.TribesGame.TrPerk;

extern(C++) interface TrPerk_SonicPunch : TrPerk
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrPerk_SonicPunch")); }
	private static __gshared TrPerk_SonicPunch mDefaultProperties;
	@property final static TrPerk_SonicPunch DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrPerk_SonicPunch)("TrPerk_SonicPunch TribesGame.Default__TrPerk_SonicPunch")); }
}
