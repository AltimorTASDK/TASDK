module UnrealScript.TribesGame.TrProj_SpinfusorD_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProj_SpinfusorD;

extern(C++) interface TrProj_SpinfusorD_MKD : TrProj_SpinfusorD
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrProj_SpinfusorD_MKD")()); }
	private static __gshared TrProj_SpinfusorD_MKD mDefaultProperties;
	@property final static TrProj_SpinfusorD_MKD DefaultProperties() { mixin(MGDPC!(TrProj_SpinfusorD_MKD, "TrProj_SpinfusorD_MKD TribesGame.Default__TrProj_SpinfusorD_MKD")()); }
}
