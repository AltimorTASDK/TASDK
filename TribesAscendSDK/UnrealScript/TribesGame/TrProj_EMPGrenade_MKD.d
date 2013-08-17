module UnrealScript.TribesGame.TrProj_EMPGrenade_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProj_EMPGrenade;

extern(C++) interface TrProj_EMPGrenade_MKD : TrProj_EMPGrenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrProj_EMPGrenade_MKD")()); }
	private static __gshared TrProj_EMPGrenade_MKD mDefaultProperties;
	@property final static TrProj_EMPGrenade_MKD DefaultProperties() { mixin(MGDPC!(TrProj_EMPGrenade_MKD, "TrProj_EMPGrenade_MKD TribesGame.Default__TrProj_EMPGrenade_MKD")()); }
}
