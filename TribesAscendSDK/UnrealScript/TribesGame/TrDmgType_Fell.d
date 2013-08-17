module UnrealScript.TribesGame.TrDmgType_Fell;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_Fell : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_Fell")); }
	private static __gshared TrDmgType_Fell mDefaultProperties;
	@property final static TrDmgType_Fell DefaultProperties() { mixin(MGDPC("TrDmgType_Fell", "TrDmgType_Fell TribesGame.Default__TrDmgType_Fell")); }
}
