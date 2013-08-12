module UnrealScript.TribesGame.TrDmgType_Claymore;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Mine;

extern(C++) interface TrDmgType_Claymore : TrDmgType_Mine
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_Claymore")); }
	private static __gshared TrDmgType_Claymore mDefaultProperties;
	@property final static TrDmgType_Claymore DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_Claymore)("TrDmgType_Claymore TribesGame.Default__TrDmgType_Claymore")); }
}
