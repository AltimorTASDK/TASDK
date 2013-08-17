module UnrealScript.TribesGame.TrDmgType_ThrowingKnives;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_ThrowingKnives : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_ThrowingKnives")()); }
	private static __gshared TrDmgType_ThrowingKnives mDefaultProperties;
	@property final static TrDmgType_ThrowingKnives DefaultProperties() { mixin(MGDPC!(TrDmgType_ThrowingKnives, "TrDmgType_ThrowingKnives TribesGame.Default__TrDmgType_ThrowingKnives")()); }
}
