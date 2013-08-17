module UnrealScript.TribesGame.TrDmgType_STGrenade;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_STGrenade : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_STGrenade")()); }
	private static __gshared TrDmgType_STGrenade mDefaultProperties;
	@property final static TrDmgType_STGrenade DefaultProperties() { mixin(MGDPC!(TrDmgType_STGrenade, "TrDmgType_STGrenade TribesGame.Default__TrDmgType_STGrenade")()); }
}
