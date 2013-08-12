module UnrealScript.TribesGame.TrSkin_Brute;

import ScriptClasses;
import UnrealScript.TribesGame.TrSkin;

extern(C++) interface TrSkin_Brute : TrSkin
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrSkin_Brute")); }
	private static __gshared TrSkin_Brute mDefaultProperties;
	@property final static TrSkin_Brute DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrSkin_Brute)("TrSkin_Brute TribesGame.Default__TrSkin_Brute")); }
}
