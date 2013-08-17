module UnrealScript.TribesGame.TrDmgType_ThumperD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_ThumperD : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_ThumperD")); }
	private static __gshared TrDmgType_ThumperD mDefaultProperties;
	@property final static TrDmgType_ThumperD DefaultProperties() { mixin(MGDPC("TrDmgType_ThumperD", "TrDmgType_ThumperD TribesGame.Default__TrDmgType_ThumperD")); }
}
