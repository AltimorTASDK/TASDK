module UnrealScript.TribesGame.TrFamilyInfo_HeavyBloodEagle;

import ScriptClasses;
import UnrealScript.TribesGame.TrFamilyInfo_Heavy;

extern(C++) interface TrFamilyInfo_HeavyBloodEagle : TrFamilyInfo_Heavy
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFamilyInfo_HeavyBloodEagle")); }
}
