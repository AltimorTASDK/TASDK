module UnrealScript.TribesGame.TrDmgType_NovaSlug;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_NovaSlug : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_NovaSlug")()); }
	private static __gshared TrDmgType_NovaSlug mDefaultProperties;
	@property final static TrDmgType_NovaSlug DefaultProperties() { mixin(MGDPC!(TrDmgType_NovaSlug, "TrDmgType_NovaSlug TribesGame.Default__TrDmgType_NovaSlug")()); }
}
