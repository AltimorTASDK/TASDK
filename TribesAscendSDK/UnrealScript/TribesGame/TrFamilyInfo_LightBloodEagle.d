module UnrealScript.TribesGame.TrFamilyInfo_LightBloodEagle;

import ScriptClasses;
import UnrealScript.TribesGame.TrFamilyInfo_Light;

extern(C++) interface TrFamilyInfo_LightBloodEagle : TrFamilyInfo_Light
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFamilyInfo_LightBloodEagle")); }
}
