module UnrealScript.TribesGame.TrFamilyInfo_Light_Sentinel_DS;

import ScriptClasses;
import UnrealScript.TribesGame.TrFamilyInfo_Light_Sentinel;

extern(C++) interface TrFamilyInfo_Light_Sentinel_DS : TrFamilyInfo_Light_Sentinel
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFamilyInfo_Light_Sentinel_DS")); }
}
