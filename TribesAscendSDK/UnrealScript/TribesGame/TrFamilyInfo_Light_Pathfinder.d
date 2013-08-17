module UnrealScript.TribesGame.TrFamilyInfo_Light_Pathfinder;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrFamilyInfo_Light;

extern(C++) interface TrFamilyInfo_Light_Pathfinder : TrFamilyInfo_Light
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrFamilyInfo_Light_Pathfinder")()); }
	private static __gshared TrFamilyInfo_Light_Pathfinder mDefaultProperties;
	@property final static TrFamilyInfo_Light_Pathfinder DefaultProperties() { mixin(MGDPC!(TrFamilyInfo_Light_Pathfinder, "TrFamilyInfo_Light_Pathfinder TribesGame.Default__TrFamilyInfo_Light_Pathfinder")()); }
}
