module UnrealScript.TribesGame.TrDmgType_ArxBuster_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_ArxBuster;

extern(C++) interface TrDmgType_ArxBuster_MKD : TrDmgType_ArxBuster
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_ArxBuster_MKD")); }
	private static __gshared TrDmgType_ArxBuster_MKD mDefaultProperties;
	@property final static TrDmgType_ArxBuster_MKD DefaultProperties() { mixin(MGDPC("TrDmgType_ArxBuster_MKD", "TrDmgType_ArxBuster_MKD TribesGame.Default__TrDmgType_ArxBuster_MKD")); }
}
