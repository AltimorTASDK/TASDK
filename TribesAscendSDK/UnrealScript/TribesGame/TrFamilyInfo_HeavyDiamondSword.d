module UnrealScript.TribesGame.TrFamilyInfo_HeavyDiamondSword;

import ScriptClasses;
import UnrealScript.TribesGame.TrFamilyInfo_Heavy;

extern(C++) interface TrFamilyInfo_HeavyDiamondSword : TrFamilyInfo_Heavy
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFamilyInfo_HeavyDiamondSword")); }
	private static __gshared TrFamilyInfo_HeavyDiamondSword mDefaultProperties;
	@property final static TrFamilyInfo_HeavyDiamondSword DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrFamilyInfo_HeavyDiamondSword)("TrFamilyInfo_HeavyDiamondSword TribesGame.Default__TrFamilyInfo_HeavyDiamondSword")); }
}
