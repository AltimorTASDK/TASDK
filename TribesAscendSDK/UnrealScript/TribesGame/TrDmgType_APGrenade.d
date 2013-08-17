module UnrealScript.TribesGame.TrDmgType_APGrenade;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_APGrenade : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_APGrenade")); }
	private static __gshared TrDmgType_APGrenade mDefaultProperties;
	@property final static TrDmgType_APGrenade DefaultProperties() { mixin(MGDPC("TrDmgType_APGrenade", "TrDmgType_APGrenade TribesGame.Default__TrDmgType_APGrenade")); }
}
