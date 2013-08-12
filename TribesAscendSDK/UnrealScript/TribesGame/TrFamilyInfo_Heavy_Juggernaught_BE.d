module UnrealScript.TribesGame.TrFamilyInfo_Heavy_Juggernaught_BE;

import ScriptClasses;
import UnrealScript.TribesGame.TrFamilyInfo_Heavy_Juggernaught;

extern(C++) interface TrFamilyInfo_Heavy_Juggernaught_BE : TrFamilyInfo_Heavy_Juggernaught
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFamilyInfo_Heavy_Juggernaught_BE")); }
}
