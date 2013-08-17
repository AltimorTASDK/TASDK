module UnrealScript.TribesGame.TrDevice_ArxBuster;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_ConstantFire;

extern(C++) interface TrDevice_ArxBuster : TrDevice_ConstantFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDevice_ArxBuster")); }
	private static __gshared TrDevice_ArxBuster mDefaultProperties;
	@property final static TrDevice_ArxBuster DefaultProperties() { mixin(MGDPC("TrDevice_ArxBuster", "TrDevice_ArxBuster TribesGame.Default__TrDevice_ArxBuster")); }
}
