module UnrealScript.TribesGame.TrProj_ArxBuster;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProj_StickyGrenade;

extern(C++) interface TrProj_ArxBuster : TrProj_StickyGrenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_ArxBuster")); }
	private static __gshared TrProj_ArxBuster mDefaultProperties;
	@property final static TrProj_ArxBuster DefaultProperties() { mixin(MGDPC("TrProj_ArxBuster", "TrProj_ArxBuster TribesGame.Default__TrProj_ArxBuster")); }
}
