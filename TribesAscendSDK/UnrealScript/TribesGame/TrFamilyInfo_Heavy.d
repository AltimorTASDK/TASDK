module UnrealScript.TribesGame.TrFamilyInfo_Heavy;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrFamilyInfo;

extern(C++) interface TrFamilyInfo_Heavy : TrFamilyInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrFamilyInfo_Heavy")()); }
	private static __gshared TrFamilyInfo_Heavy mDefaultProperties;
	@property final static TrFamilyInfo_Heavy DefaultProperties() { mixin(MGDPC!(TrFamilyInfo_Heavy, "TrFamilyInfo_Heavy TribesGame.Default__TrFamilyInfo_Heavy")()); }
}
