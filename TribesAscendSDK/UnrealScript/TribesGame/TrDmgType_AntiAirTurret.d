module UnrealScript.TribesGame.TrDmgType_AntiAirTurret;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_AntiAirTurret : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_AntiAirTurret")); }
	private static __gshared TrDmgType_AntiAirTurret mDefaultProperties;
	@property final static TrDmgType_AntiAirTurret DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_AntiAirTurret)("TrDmgType_AntiAirTurret TribesGame.Default__TrDmgType_AntiAirTurret")); }
}
