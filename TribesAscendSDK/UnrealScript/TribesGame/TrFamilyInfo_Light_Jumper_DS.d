module UnrealScript.TribesGame.TrFamilyInfo_Light_Jumper_DS;

import ScriptClasses;
import UnrealScript.TribesGame.TrFamilyInfo_Light_Jumper;

extern(C++) interface TrFamilyInfo_Light_Jumper_DS : TrFamilyInfo_Light_Jumper
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFamilyInfo_Light_Jumper_DS")); }
}
