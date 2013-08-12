module UnrealScript.TribesGame.TrDmgType_WallTurret;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_WallTurret : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_WallTurret")); }
	private static __gshared TrDmgType_WallTurret mDefaultProperties;
	@property final static TrDmgType_WallTurret DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_WallTurret)("TrDmgType_WallTurret TribesGame.Default__TrDmgType_WallTurret")); }
}
