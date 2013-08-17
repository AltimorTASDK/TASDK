module UnrealScript.TribesGame.TrFamilyInfo_Heavy_Rook;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrFamilyInfo_Heavy;

extern(C++) interface TrFamilyInfo_Heavy_Rook : TrFamilyInfo_Heavy
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrFamilyInfo_Heavy_Rook")()); }
	private static __gshared TrFamilyInfo_Heavy_Rook mDefaultProperties;
	@property final static TrFamilyInfo_Heavy_Rook DefaultProperties() { mixin(MGDPC!(TrFamilyInfo_Heavy_Rook, "TrFamilyInfo_Heavy_Rook TribesGame.Default__TrFamilyInfo_Heavy_Rook")()); }
}
