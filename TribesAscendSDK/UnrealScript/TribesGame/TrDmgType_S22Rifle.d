module UnrealScript.TribesGame.TrDmgType_S22Rifle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_S22Rifle : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_S22Rifle")); }
	private static __gshared TrDmgType_S22Rifle mDefaultProperties;
	@property final static TrDmgType_S22Rifle DefaultProperties() { mixin(MGDPC("TrDmgType_S22Rifle", "TrDmgType_S22Rifle TribesGame.Default__TrDmgType_S22Rifle")); }
}
