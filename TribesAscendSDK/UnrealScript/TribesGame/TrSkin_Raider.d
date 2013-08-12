module UnrealScript.TribesGame.TrSkin_Raider;

import ScriptClasses;
import UnrealScript.TribesGame.TrSkin;

extern(C++) interface TrSkin_Raider : TrSkin
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrSkin_Raider")); }
	private static __gshared TrSkin_Raider mDefaultProperties;
	@property final static TrSkin_Raider DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrSkin_Raider)("TrSkin_Raider TribesGame.Default__TrSkin_Raider")); }
}
