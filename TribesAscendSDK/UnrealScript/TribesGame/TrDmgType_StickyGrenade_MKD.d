module UnrealScript.TribesGame.TrDmgType_StickyGrenade_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_StickyGrenade_MKD : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_StickyGrenade_MKD")); }
	private static __gshared TrDmgType_StickyGrenade_MKD mDefaultProperties;
	@property final static TrDmgType_StickyGrenade_MKD DefaultProperties() { mixin(MGDPC("TrDmgType_StickyGrenade_MKD", "TrDmgType_StickyGrenade_MKD TribesGame.Default__TrDmgType_StickyGrenade_MKD")); }
}
