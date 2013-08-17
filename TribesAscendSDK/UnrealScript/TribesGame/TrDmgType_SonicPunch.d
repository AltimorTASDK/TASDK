module UnrealScript.TribesGame.TrDmgType_SonicPunch;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_SonicPunch : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_SonicPunch")); }
	private static __gshared TrDmgType_SonicPunch mDefaultProperties;
	@property final static TrDmgType_SonicPunch DefaultProperties() { mixin(MGDPC("TrDmgType_SonicPunch", "TrDmgType_SonicPunch TribesGame.Default__TrDmgType_SonicPunch")); }
}
