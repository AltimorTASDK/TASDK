module UnrealScript.TribesGame.TrSkin_Brute_Merc;

import ScriptClasses;
import UnrealScript.TribesGame.TrSkin;

extern(C++) interface TrSkin_Brute_Merc : TrSkin
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrSkin_Brute_Merc")); }
	private static __gshared TrSkin_Brute_Merc mDefaultProperties;
	@property final static TrSkin_Brute_Merc DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrSkin_Brute_Merc)("TrSkin_Brute_Merc TribesGame.Default__TrSkin_Brute_Merc")); }
}
