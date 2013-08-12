module UnrealScript.TribesGame.TrSkin_Sentinel_Merc;

import ScriptClasses;
import UnrealScript.TribesGame.TrSkin;

extern(C++) interface TrSkin_Sentinel_Merc : TrSkin
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrSkin_Sentinel_Merc")); }
	private static __gshared TrSkin_Sentinel_Merc mDefaultProperties;
	@property final static TrSkin_Sentinel_Merc DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrSkin_Sentinel_Merc)("TrSkin_Sentinel_Merc TribesGame.Default__TrSkin_Sentinel_Merc")); }
}
