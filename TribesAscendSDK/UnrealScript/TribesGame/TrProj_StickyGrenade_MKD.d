module UnrealScript.TribesGame.TrProj_StickyGrenade_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProj_StickyGrenade;

extern(C++) interface TrProj_StickyGrenade_MKD : TrProj_StickyGrenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrProj_StickyGrenade_MKD")()); }
	private static __gshared TrProj_StickyGrenade_MKD mDefaultProperties;
	@property final static TrProj_StickyGrenade_MKD DefaultProperties() { mixin(MGDPC!(TrProj_StickyGrenade_MKD, "TrProj_StickyGrenade_MKD TribesGame.Default__TrProj_StickyGrenade_MKD")()); }
}
