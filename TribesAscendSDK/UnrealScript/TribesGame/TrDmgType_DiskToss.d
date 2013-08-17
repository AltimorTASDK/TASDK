module UnrealScript.TribesGame.TrDmgType_DiskToss;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Spinfusor;

extern(C++) interface TrDmgType_DiskToss : TrDmgType_Spinfusor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_DiskToss")); }
	private static __gshared TrDmgType_DiskToss mDefaultProperties;
	@property final static TrDmgType_DiskToss DefaultProperties() { mixin(MGDPC("TrDmgType_DiskToss", "TrDmgType_DiskToss TribesGame.Default__TrDmgType_DiskToss")); }
}
