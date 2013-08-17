module UnrealScript.TribesGame.TrProj_ArxBuster_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProj_ArxBuster;

extern(C++) interface TrProj_ArxBuster_MKD : TrProj_ArxBuster
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_ArxBuster_MKD")); }
	private static __gshared TrProj_ArxBuster_MKD mDefaultProperties;
	@property final static TrProj_ArxBuster_MKD DefaultProperties() { mixin(MGDPC("TrProj_ArxBuster_MKD", "TrProj_ArxBuster_MKD TribesGame.Default__TrProj_ArxBuster_MKD")); }
}
