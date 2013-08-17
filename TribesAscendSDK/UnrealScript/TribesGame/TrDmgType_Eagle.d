module UnrealScript.TribesGame.TrDmgType_Eagle;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_Eagle : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_Eagle")); }
	private static __gshared TrDmgType_Eagle mDefaultProperties;
	@property final static TrDmgType_Eagle DefaultProperties() { mixin(MGDPC("TrDmgType_Eagle", "TrDmgType_Eagle TribesGame.Default__TrDmgType_Eagle")); }
}
