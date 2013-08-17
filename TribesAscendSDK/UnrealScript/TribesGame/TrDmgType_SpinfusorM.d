module UnrealScript.TribesGame.TrDmgType_SpinfusorM;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Spinfusor;

extern(C++) interface TrDmgType_SpinfusorM : TrDmgType_Spinfusor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_SpinfusorM")); }
	private static __gshared TrDmgType_SpinfusorM mDefaultProperties;
	@property final static TrDmgType_SpinfusorM DefaultProperties() { mixin(MGDPC("TrDmgType_SpinfusorM", "TrDmgType_SpinfusorM TribesGame.Default__TrDmgType_SpinfusorM")); }
}
