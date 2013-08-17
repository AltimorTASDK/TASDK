module UnrealScript.TribesGame.TrDevice_ChainGun_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_ChainGun;

extern(C++) interface TrDevice_ChainGun_MKD : TrDevice_ChainGun
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDevice_ChainGun_MKD")); }
	private static __gshared TrDevice_ChainGun_MKD mDefaultProperties;
	@property final static TrDevice_ChainGun_MKD DefaultProperties() { mixin(MGDPC("TrDevice_ChainGun_MKD", "TrDevice_ChainGun_MKD TribesGame.Default__TrDevice_ChainGun_MKD")); }
}
