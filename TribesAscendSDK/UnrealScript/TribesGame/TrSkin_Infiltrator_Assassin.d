module UnrealScript.TribesGame.TrSkin_Infiltrator_Assassin;

import ScriptClasses;
import UnrealScript.TribesGame.TrSkin;

extern(C++) interface TrSkin_Infiltrator_Assassin : TrSkin
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrSkin_Infiltrator_Assassin")); }
	private static __gshared TrSkin_Infiltrator_Assassin mDefaultProperties;
	@property final static TrSkin_Infiltrator_Assassin DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrSkin_Infiltrator_Assassin)("TrSkin_Infiltrator_Assassin TribesGame.Default__TrSkin_Infiltrator_Assassin")); }
}
