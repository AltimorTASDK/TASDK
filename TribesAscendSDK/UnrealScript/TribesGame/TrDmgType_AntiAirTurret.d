module UnrealScript.TribesGame.TrDmgType_AntiAirTurret;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_AntiAirTurret : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_AntiAirTurret")); }
	private static __gshared TrDmgType_AntiAirTurret mDefaultProperties;
	@property final static TrDmgType_AntiAirTurret DefaultProperties() { mixin(MGDPC("TrDmgType_AntiAirTurret", "TrDmgType_AntiAirTurret TribesGame.Default__TrDmgType_AntiAirTurret")); }
}
