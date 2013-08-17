module UnrealScript.TribesGame.TrDmgType_LaserTargeter;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_LaserTargeter : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_LaserTargeter")()); }
	private static __gshared TrDmgType_LaserTargeter mDefaultProperties;
	@property final static TrDmgType_LaserTargeter DefaultProperties() { mixin(MGDPC!(TrDmgType_LaserTargeter, "TrDmgType_LaserTargeter TribesGame.Default__TrDmgType_LaserTargeter")()); }
}
