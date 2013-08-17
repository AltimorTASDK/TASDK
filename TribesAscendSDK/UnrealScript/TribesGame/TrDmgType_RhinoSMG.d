module UnrealScript.TribesGame.TrDmgType_RhinoSMG;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Bullet;

extern(C++) interface TrDmgType_RhinoSMG : TrDmgType_Bullet
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_RhinoSMG")); }
	private static __gshared TrDmgType_RhinoSMG mDefaultProperties;
	@property final static TrDmgType_RhinoSMG DefaultProperties() { mixin(MGDPC("TrDmgType_RhinoSMG", "TrDmgType_RhinoSMG TribesGame.Default__TrDmgType_RhinoSMG")); }
}
