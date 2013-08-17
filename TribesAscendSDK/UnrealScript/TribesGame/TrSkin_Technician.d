module UnrealScript.TribesGame.TrSkin_Technician;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrSkin;

extern(C++) interface TrSkin_Technician : TrSkin
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrSkin_Technician")); }
	private static __gshared TrSkin_Technician mDefaultProperties;
	@property final static TrSkin_Technician DefaultProperties() { mixin(MGDPC("TrSkin_Technician", "TrSkin_Technician TribesGame.Default__TrSkin_Technician")); }
}
