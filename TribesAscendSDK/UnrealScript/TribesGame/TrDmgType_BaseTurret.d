module UnrealScript.TribesGame.TrDmgType_BaseTurret;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_BaseTurret : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_BaseTurret")); }
	private static __gshared TrDmgType_BaseTurret mDefaultProperties;
	@property final static TrDmgType_BaseTurret DefaultProperties() { mixin(MGDPC("TrDmgType_BaseTurret", "TrDmgType_BaseTurret TribesGame.Default__TrDmgType_BaseTurret")); }
}
