module UnrealScript.TribesGame.TrProj_Chaingun_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProj_Chaingun;

extern(C++) interface TrProj_Chaingun_MKD : TrProj_Chaingun
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_Chaingun_MKD")); }
	private static __gshared TrProj_Chaingun_MKD mDefaultProperties;
	@property final static TrProj_Chaingun_MKD DefaultProperties() { mixin(MGDPC("TrProj_Chaingun_MKD", "TrProj_Chaingun_MKD TribesGame.Default__TrProj_Chaingun_MKD")); }
}
