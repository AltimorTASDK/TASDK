module UnrealScript.TribesGame.TrDmgType_Shotgun;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_Shotgun : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_Shotgun")); }
	private static __gshared TrDmgType_Shotgun mDefaultProperties;
	@property final static TrDmgType_Shotgun DefaultProperties() { mixin(MGDPC("TrDmgType_Shotgun", "TrDmgType_Shotgun TribesGame.Default__TrDmgType_Shotgun")); }
}
