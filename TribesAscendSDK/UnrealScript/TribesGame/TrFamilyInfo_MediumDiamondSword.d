module UnrealScript.TribesGame.TrFamilyInfo_MediumDiamondSword;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrFamilyInfo_Medium;

extern(C++) interface TrFamilyInfo_MediumDiamondSword : TrFamilyInfo_Medium
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrFamilyInfo_MediumDiamondSword")); }
	private static __gshared TrFamilyInfo_MediumDiamondSword mDefaultProperties;
	@property final static TrFamilyInfo_MediumDiamondSword DefaultProperties() { mixin(MGDPC("TrFamilyInfo_MediumDiamondSword", "TrFamilyInfo_MediumDiamondSword TribesGame.Default__TrFamilyInfo_MediumDiamondSword")); }
}
