module UnrealScript.TribesGame.TrDmgType_SpinfusorD_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Spinfusor;

extern(C++) interface TrDmgType_SpinfusorD_MKD : TrDmgType_Spinfusor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_SpinfusorD_MKD")()); }
	private static __gshared TrDmgType_SpinfusorD_MKD mDefaultProperties;
	@property final static TrDmgType_SpinfusorD_MKD DefaultProperties() { mixin(MGDPC!(TrDmgType_SpinfusorD_MKD, "TrDmgType_SpinfusorD_MKD TribesGame.Default__TrDmgType_SpinfusorD_MKD")()); }
}
