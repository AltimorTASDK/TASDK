module UnrealScript.TribesGame.TrDmgType_NJ5SMG;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_NJ5SMG : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_NJ5SMG")); }
	private static __gshared TrDmgType_NJ5SMG mDefaultProperties;
	@property final static TrDmgType_NJ5SMG DefaultProperties() { mixin(MGDPC("TrDmgType_NJ5SMG", "TrDmgType_NJ5SMG TribesGame.Default__TrDmgType_NJ5SMG")); }
}
