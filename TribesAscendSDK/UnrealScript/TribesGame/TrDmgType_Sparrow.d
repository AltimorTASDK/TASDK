module UnrealScript.TribesGame.TrDmgType_Sparrow;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_Sparrow : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_Sparrow")()); }
	private static __gshared TrDmgType_Sparrow mDefaultProperties;
	@property final static TrDmgType_Sparrow DefaultProperties() { mixin(MGDPC!(TrDmgType_Sparrow, "TrDmgType_Sparrow TribesGame.Default__TrDmgType_Sparrow")()); }
}
