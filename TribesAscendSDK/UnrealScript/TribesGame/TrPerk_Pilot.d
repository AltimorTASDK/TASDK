module UnrealScript.TribesGame.TrPerk_Pilot;

import ScriptClasses;
import UnrealScript.TribesGame.TrPerk;

extern(C++) interface TrPerk_Pilot : TrPerk
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrPerk_Pilot")); }
	private static __gshared TrPerk_Pilot mDefaultProperties;
	@property final static TrPerk_Pilot DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrPerk_Pilot)("TrPerk_Pilot TribesGame.Default__TrPerk_Pilot")); }
}
