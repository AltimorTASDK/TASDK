module UnrealScript.TribesGame.TrSubDevice_LightTurret;

import ScriptClasses;
import UnrealScript.TribesGame.TrSubDevice_Turret;

extern(C++) interface TrSubDevice_LightTurret : TrSubDevice_Turret
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrSubDevice_LightTurret")); }
	private static __gshared TrSubDevice_LightTurret mDefaultProperties;
	@property final static TrSubDevice_LightTurret DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrSubDevice_LightTurret)("TrSubDevice_LightTurret TribesGame.Default__TrSubDevice_LightTurret")); }
}
