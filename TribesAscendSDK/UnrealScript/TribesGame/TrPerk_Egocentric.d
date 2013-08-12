module UnrealScript.TribesGame.TrPerk_Egocentric;

import ScriptClasses;
import UnrealScript.TribesGame.TrPerk;

extern(C++) interface TrPerk_Egocentric : TrPerk
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrPerk_Egocentric")); }
	private static __gshared TrPerk_Egocentric mDefaultProperties;
	@property final static TrPerk_Egocentric DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrPerk_Egocentric)("TrPerk_Egocentric TribesGame.Default__TrPerk_Egocentric")); }
}
