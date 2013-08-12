module UnrealScript.TribesGame.TrFamilyInfo_LightDiamondSword;

import ScriptClasses;
import UnrealScript.TribesGame.TrFamilyInfo_Light;

extern(C++) interface TrFamilyInfo_LightDiamondSword : TrFamilyInfo_Light
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFamilyInfo_LightDiamondSword")); }
	private static __gshared TrFamilyInfo_LightDiamondSword mDefaultProperties;
	@property final static TrFamilyInfo_LightDiamondSword DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrFamilyInfo_LightDiamondSword)("TrFamilyInfo_LightDiamondSword TribesGame.Default__TrFamilyInfo_LightDiamondSword")); }
}
