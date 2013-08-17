module UnrealScript.TribesGame.TrDmgType_H1;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_H1 : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_H1")()); }
	private static __gshared TrDmgType_H1 mDefaultProperties;
	@property final static TrDmgType_H1 DefaultProperties() { mixin(MGDPC!(TrDmgType_H1, "TrDmgType_H1 TribesGame.Default__TrDmgType_H1")()); }
}
