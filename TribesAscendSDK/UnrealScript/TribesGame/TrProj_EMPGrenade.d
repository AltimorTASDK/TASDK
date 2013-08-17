module UnrealScript.TribesGame.TrProj_EMPGrenade;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProj_Grenade;

extern(C++) interface TrProj_EMPGrenade : TrProj_Grenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_EMPGrenade")); }
	private static __gshared TrProj_EMPGrenade mDefaultProperties;
	@property final static TrProj_EMPGrenade DefaultProperties() { mixin(MGDPC("TrProj_EMPGrenade", "TrProj_EMPGrenade TribesGame.Default__TrProj_EMPGrenade")); }
}
