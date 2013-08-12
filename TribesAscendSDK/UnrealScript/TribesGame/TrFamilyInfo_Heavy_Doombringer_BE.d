module UnrealScript.TribesGame.TrFamilyInfo_Heavy_Doombringer_BE;

import ScriptClasses;
import UnrealScript.TribesGame.TrFamilyInfo_Heavy_Doombringer;

extern(C++) interface TrFamilyInfo_Heavy_Doombringer_BE : TrFamilyInfo_Heavy_Doombringer
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFamilyInfo_Heavy_Doombringer_BE")); }
}
