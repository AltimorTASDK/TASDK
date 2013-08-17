module UnrealScript.TribesGame.TrDevice_EMPGrenade_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_EMPGrenade;

extern(C++) interface TrDevice_EMPGrenade_MKD : TrDevice_EMPGrenade
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_EMPGrenade_MKD")()); }
	private static __gshared TrDevice_EMPGrenade_MKD mDefaultProperties;
	@property final static TrDevice_EMPGrenade_MKD DefaultProperties() { mixin(MGDPC!(TrDevice_EMPGrenade_MKD, "TrDevice_EMPGrenade_MKD TribesGame.Default__TrDevice_EMPGrenade_MKD")()); }
}
