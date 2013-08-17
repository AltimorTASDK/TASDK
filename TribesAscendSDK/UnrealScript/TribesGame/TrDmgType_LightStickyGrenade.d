module UnrealScript.TribesGame.TrDmgType_LightStickyGrenade;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_LightStickyGrenade : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_LightStickyGrenade")); }
	private static __gshared TrDmgType_LightStickyGrenade mDefaultProperties;
	@property final static TrDmgType_LightStickyGrenade DefaultProperties() { mixin(MGDPC("TrDmgType_LightStickyGrenade", "TrDmgType_LightStickyGrenade TribesGame.Default__TrDmgType_LightStickyGrenade")); }
}
