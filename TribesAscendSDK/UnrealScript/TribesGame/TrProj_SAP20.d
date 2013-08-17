module UnrealScript.TribesGame.TrProj_SAP20;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_SAP20 : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_SAP20")); }
	private static __gshared TrProj_SAP20 mDefaultProperties;
	@property final static TrProj_SAP20 DefaultProperties() { mixin(MGDPC("TrProj_SAP20", "TrProj_SAP20 TribesGame.Default__TrProj_SAP20")); }
}
