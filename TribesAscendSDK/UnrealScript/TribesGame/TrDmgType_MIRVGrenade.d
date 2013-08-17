module UnrealScript.TribesGame.TrDmgType_MIRVGrenade;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_MIRVGrenade : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_MIRVGrenade")); }
	private static __gshared TrDmgType_MIRVGrenade mDefaultProperties;
	@property final static TrDmgType_MIRVGrenade DefaultProperties() { mixin(MGDPC("TrDmgType_MIRVGrenade", "TrDmgType_MIRVGrenade TribesGame.Default__TrDmgType_MIRVGrenade")); }
}
