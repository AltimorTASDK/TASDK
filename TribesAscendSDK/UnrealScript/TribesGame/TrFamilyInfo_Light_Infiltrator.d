module UnrealScript.TribesGame.TrFamilyInfo_Light_Infiltrator;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrFamilyInfo_Light;

extern(C++) interface TrFamilyInfo_Light_Infiltrator : TrFamilyInfo_Light
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrFamilyInfo_Light_Infiltrator")()); }
	private static __gshared TrFamilyInfo_Light_Infiltrator mDefaultProperties;
	@property final static TrFamilyInfo_Light_Infiltrator DefaultProperties() { mixin(MGDPC!(TrFamilyInfo_Light_Infiltrator, "TrFamilyInfo_Light_Infiltrator TribesGame.Default__TrFamilyInfo_Light_Infiltrator")()); }
}
