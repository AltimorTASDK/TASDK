module UnrealScript.TribesGame.TrDmgType_EMPGrenade;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_EMPGrenade : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_EMPGrenade")); }
	private static __gshared TrDmgType_EMPGrenade mDefaultProperties;
	@property final static TrDmgType_EMPGrenade DefaultProperties() { mixin(MGDPC("TrDmgType_EMPGrenade", "TrDmgType_EMPGrenade TribesGame.Default__TrDmgType_EMPGrenade")); }
}
