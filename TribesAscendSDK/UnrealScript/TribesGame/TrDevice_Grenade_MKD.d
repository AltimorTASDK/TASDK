module UnrealScript.TribesGame.TrDevice_Grenade_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_Grenade;

extern(C++) interface TrDevice_Grenade_MKD : TrDevice_Grenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_Grenade_MKD")()); }
	private static __gshared TrDevice_Grenade_MKD mDefaultProperties;
	@property final static TrDevice_Grenade_MKD DefaultProperties() { mixin(MGDPC!(TrDevice_Grenade_MKD, "TrDevice_Grenade_MKD TribesGame.Default__TrDevice_Grenade_MKD")()); }
}
