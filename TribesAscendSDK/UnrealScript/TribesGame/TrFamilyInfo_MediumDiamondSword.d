module UnrealScript.TribesGame.TrFamilyInfo_MediumDiamondSword;

import ScriptClasses;
import UnrealScript.TribesGame.TrFamilyInfo_Medium;

extern(C++) interface TrFamilyInfo_MediumDiamondSword : TrFamilyInfo_Medium
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFamilyInfo_MediumDiamondSword")); }
}
