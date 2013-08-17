module UnrealScript.TribesGame.TrDevice_ThumperD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrDevice_ThumperD : TrDevice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_ThumperD")()); }
	private static __gshared TrDevice_ThumperD mDefaultProperties;
	@property final static TrDevice_ThumperD DefaultProperties() { mixin(MGDPC!(TrDevice_ThumperD, "TrDevice_ThumperD TribesGame.Default__TrDevice_ThumperD")()); }
}
