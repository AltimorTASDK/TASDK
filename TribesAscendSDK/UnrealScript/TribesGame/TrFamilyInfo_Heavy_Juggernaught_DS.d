module UnrealScript.TribesGame.TrFamilyInfo_Heavy_Juggernaught_DS;

import ScriptClasses;
import UnrealScript.TribesGame.TrFamilyInfo_Heavy_Juggernaught;

extern(C++) interface TrFamilyInfo_Heavy_Juggernaught_DS : TrFamilyInfo_Heavy_Juggernaught
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFamilyInfo_Heavy_Juggernaught_DS")); }
}
