module UnrealScript.TribesGame.TrDmgType_HeavyAPGrenade;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_HeavyAPGrenade : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_HeavyAPGrenade")()); }
	private static __gshared TrDmgType_HeavyAPGrenade mDefaultProperties;
	@property final static TrDmgType_HeavyAPGrenade DefaultProperties() { mixin(MGDPC!(TrDmgType_HeavyAPGrenade, "TrDmgType_HeavyAPGrenade TribesGame.Default__TrDmgType_HeavyAPGrenade")()); }
}
