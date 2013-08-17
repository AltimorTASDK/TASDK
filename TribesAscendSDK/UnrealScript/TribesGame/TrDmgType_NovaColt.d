module UnrealScript.TribesGame.TrDmgType_NovaColt;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_NovaColt : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_NovaColt")); }
	private static __gshared TrDmgType_NovaColt mDefaultProperties;
	@property final static TrDmgType_NovaColt DefaultProperties() { mixin(MGDPC("TrDmgType_NovaColt", "TrDmgType_NovaColt TribesGame.Default__TrDmgType_NovaColt")); }
}
