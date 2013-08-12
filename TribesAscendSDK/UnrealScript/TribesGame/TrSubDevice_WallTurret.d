module UnrealScript.TribesGame.TrSubDevice_WallTurret;

import ScriptClasses;
import UnrealScript.TribesGame.TrSubDevice_Turret;

extern(C++) interface TrSubDevice_WallTurret : TrSubDevice_Turret
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrSubDevice_WallTurret")); }
	private static __gshared TrSubDevice_WallTurret mDefaultProperties;
	@property final static TrSubDevice_WallTurret DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrSubDevice_WallTurret)("TrSubDevice_WallTurret TribesGame.Default__TrSubDevice_WallTurret")); }
}
