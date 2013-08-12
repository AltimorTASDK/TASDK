module UnrealScript.TribesGame.TrSkin_Soldier;

import ScriptClasses;
import UnrealScript.TribesGame.TrSkin;

extern(C++) interface TrSkin_Soldier : TrSkin
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrSkin_Soldier")); }
	private static __gshared TrSkin_Soldier mDefaultProperties;
	@property final static TrSkin_Soldier DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrSkin_Soldier)("TrSkin_Soldier TribesGame.Default__TrSkin_Soldier")); }
}
