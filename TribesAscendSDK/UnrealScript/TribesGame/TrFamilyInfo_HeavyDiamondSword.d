module UnrealScript.TribesGame.TrFamilyInfo_HeavyDiamondSword;

import ScriptClasses;
import UnrealScript.TribesGame.TrFamilyInfo_Heavy;

extern(C++) interface TrFamilyInfo_HeavyDiamondSword : TrFamilyInfo_Heavy
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFamilyInfo_HeavyDiamondSword")); }
}
