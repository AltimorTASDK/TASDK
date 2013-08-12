module UnrealScript.TribesGame.TrFamilyInfo_Light_Wraith_BE;

import ScriptClasses;
import UnrealScript.TribesGame.TrFamilyInfo_Light_Wraith;

extern(C++) interface TrFamilyInfo_Light_Wraith_BE : TrFamilyInfo_Light_Wraith
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFamilyInfo_Light_Wraith_BE")); }
}
