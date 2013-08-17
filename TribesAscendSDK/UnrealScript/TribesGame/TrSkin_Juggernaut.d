module UnrealScript.TribesGame.TrSkin_Juggernaut;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrSkin;

extern(C++) interface TrSkin_Juggernaut : TrSkin
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrSkin_Juggernaut")); }
	private static __gshared TrSkin_Juggernaut mDefaultProperties;
	@property final static TrSkin_Juggernaut DefaultProperties() { mixin(MGDPC("TrSkin_Juggernaut", "TrSkin_Juggernaut TribesGame.Default__TrSkin_Juggernaut")); }
}
