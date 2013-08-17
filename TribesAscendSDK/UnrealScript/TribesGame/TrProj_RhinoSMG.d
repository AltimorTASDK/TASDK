module UnrealScript.TribesGame.TrProj_RhinoSMG;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_RhinoSMG : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_RhinoSMG")); }
	private static __gshared TrProj_RhinoSMG mDefaultProperties;
	@property final static TrProj_RhinoSMG DefaultProperties() { mixin(MGDPC("TrProj_RhinoSMG", "TrProj_RhinoSMG TribesGame.Default__TrProj_RhinoSMG")); }
}
