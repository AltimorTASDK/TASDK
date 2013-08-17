module UnrealScript.TribesGame.TrProj_ThumperD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProj_Thumper;

extern(C++) interface TrProj_ThumperD : TrProj_Thumper
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrProj_ThumperD")()); }
	private static __gshared TrProj_ThumperD mDefaultProperties;
	@property final static TrProj_ThumperD DefaultProperties() { mixin(MGDPC!(TrProj_ThumperD, "TrProj_ThumperD TribesGame.Default__TrProj_ThumperD")()); }
}
