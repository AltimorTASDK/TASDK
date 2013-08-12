module UnrealScript.TribesGame.TrDmgType_ArmoredClaymore;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Mine;

extern(C++) interface TrDmgType_ArmoredClaymore : TrDmgType_Mine
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_ArmoredClaymore")); }
	private static __gshared TrDmgType_ArmoredClaymore mDefaultProperties;
	@property final static TrDmgType_ArmoredClaymore DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_ArmoredClaymore)("TrDmgType_ArmoredClaymore TribesGame.Default__TrDmgType_ArmoredClaymore")); }
}
