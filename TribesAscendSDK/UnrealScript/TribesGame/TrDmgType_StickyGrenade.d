module UnrealScript.TribesGame.TrDmgType_StickyGrenade;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_StickyGrenade : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_StickyGrenade")()); }
	private static __gshared TrDmgType_StickyGrenade mDefaultProperties;
	@property final static TrDmgType_StickyGrenade DefaultProperties() { mixin(MGDPC!(TrDmgType_StickyGrenade, "TrDmgType_StickyGrenade TribesGame.Default__TrDmgType_StickyGrenade")()); }
}
