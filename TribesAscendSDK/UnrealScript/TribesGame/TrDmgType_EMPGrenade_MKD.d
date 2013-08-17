module UnrealScript.TribesGame.TrDmgType_EMPGrenade_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_EMPGrenade_MKD : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_EMPGrenade_MKD")); }
	private static __gshared TrDmgType_EMPGrenade_MKD mDefaultProperties;
	@property final static TrDmgType_EMPGrenade_MKD DefaultProperties() { mixin(MGDPC("TrDmgType_EMPGrenade_MKD", "TrDmgType_EMPGrenade_MKD TribesGame.Default__TrDmgType_EMPGrenade_MKD")); }
}
