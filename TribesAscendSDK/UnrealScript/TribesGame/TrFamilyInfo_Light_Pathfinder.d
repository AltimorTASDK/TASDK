module UnrealScript.TribesGame.TrFamilyInfo_Light_Pathfinder;

import ScriptClasses;
import UnrealScript.TribesGame.TrFamilyInfo_Light;

extern(C++) interface TrFamilyInfo_Light_Pathfinder : TrFamilyInfo_Light
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFamilyInfo_Light_Pathfinder")); }
	private static __gshared TrFamilyInfo_Light_Pathfinder mDefaultProperties;
	@property final static TrFamilyInfo_Light_Pathfinder DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrFamilyInfo_Light_Pathfinder)("TrFamilyInfo_Light_Pathfinder TribesGame.Default__TrFamilyInfo_Light_Pathfinder")); }
}
