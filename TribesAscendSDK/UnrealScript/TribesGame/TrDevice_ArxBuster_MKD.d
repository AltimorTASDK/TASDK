module UnrealScript.TribesGame.TrDevice_ArxBuster_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_ArxBuster;

extern(C++) interface TrDevice_ArxBuster_MKD : TrDevice_ArxBuster
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDevice_ArxBuster_MKD")); }
	private static __gshared TrDevice_ArxBuster_MKD mDefaultProperties;
	@property final static TrDevice_ArxBuster_MKD DefaultProperties() { mixin(MGDPC("TrDevice_ArxBuster_MKD", "TrDevice_ArxBuster_MKD TribesGame.Default__TrDevice_ArxBuster_MKD")); }
}
