module UnrealScript.TribesGame.TrDevice_ArmoredClaymore;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_Claymore;

extern(C++) interface TrDevice_ArmoredClaymore : TrDevice_Claymore
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_ArmoredClaymore")); }
	private static __gshared TrDevice_ArmoredClaymore mDefaultProperties;
	@property final static TrDevice_ArmoredClaymore DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_ArmoredClaymore)("TrDevice_ArmoredClaymore TribesGame.Default__TrDevice_ArmoredClaymore")); }
}
