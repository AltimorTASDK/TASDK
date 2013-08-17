module UnrealScript.TribesGame.TrDevice_RhinoSMG;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_ConstantFire;

extern(C++) interface TrDevice_RhinoSMG : TrDevice_ConstantFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDevice_RhinoSMG")); }
	private static __gshared TrDevice_RhinoSMG mDefaultProperties;
	@property final static TrDevice_RhinoSMG DefaultProperties() { mixin(MGDPC("TrDevice_RhinoSMG", "TrDevice_RhinoSMG TribesGame.Default__TrDevice_RhinoSMG")); }
}
