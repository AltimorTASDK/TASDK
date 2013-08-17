module UnrealScript.TribesGame.TrProj_ThumperD_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProj_ThumperD;

extern(C++) interface TrProj_ThumperD_MKD : TrProj_ThumperD
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_ThumperD_MKD")); }
	private static __gshared TrProj_ThumperD_MKD mDefaultProperties;
	@property final static TrProj_ThumperD_MKD DefaultProperties() { mixin(MGDPC("TrProj_ThumperD_MKD", "TrProj_ThumperD_MKD TribesGame.Default__TrProj_ThumperD_MKD")); }
}
