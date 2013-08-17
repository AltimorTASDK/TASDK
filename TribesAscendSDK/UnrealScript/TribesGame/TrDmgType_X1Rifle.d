module UnrealScript.TribesGame.TrDmgType_X1Rifle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_X1Rifle : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_X1Rifle")()); }
	private static __gshared TrDmgType_X1Rifle mDefaultProperties;
	@property final static TrDmgType_X1Rifle DefaultProperties() { mixin(MGDPC!(TrDmgType_X1Rifle, "TrDmgType_X1Rifle TribesGame.Default__TrDmgType_X1Rifle")()); }
}
