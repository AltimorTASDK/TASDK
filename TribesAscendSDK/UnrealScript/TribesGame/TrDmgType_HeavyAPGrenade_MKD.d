module UnrealScript.TribesGame.TrDmgType_HeavyAPGrenade_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_HeavyAPGrenade_MKD : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_HeavyAPGrenade_MKD")()); }
	private static __gshared TrDmgType_HeavyAPGrenade_MKD mDefaultProperties;
	@property final static TrDmgType_HeavyAPGrenade_MKD DefaultProperties() { mixin(MGDPC!(TrDmgType_HeavyAPGrenade_MKD, "TrDmgType_HeavyAPGrenade_MKD TribesGame.Default__TrDmgType_HeavyAPGrenade_MKD")()); }
}
