module UnrealScript.TribesGame.TrDmgType_SpinfusorD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Spinfusor;

extern(C++) interface TrDmgType_SpinfusorD : TrDmgType_Spinfusor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_SpinfusorD")()); }
	private static __gshared TrDmgType_SpinfusorD mDefaultProperties;
	@property final static TrDmgType_SpinfusorD DefaultProperties() { mixin(MGDPC!(TrDmgType_SpinfusorD, "TrDmgType_SpinfusorD TribesGame.Default__TrDmgType_SpinfusorD")()); }
}
