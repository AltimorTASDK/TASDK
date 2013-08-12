module UnrealScript.TribesGame.TrSkin_Infiltrator_Merc;

import ScriptClasses;
import UnrealScript.TribesGame.TrSkin;

extern(C++) interface TrSkin_Infiltrator_Merc : TrSkin
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrSkin_Infiltrator_Merc")); }
	private static __gshared TrSkin_Infiltrator_Merc mDefaultProperties;
	@property final static TrSkin_Infiltrator_Merc DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrSkin_Infiltrator_Merc)("TrSkin_Infiltrator_Merc TribesGame.Default__TrSkin_Infiltrator_Merc")); }
}
