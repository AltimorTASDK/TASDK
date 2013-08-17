module UnrealScript.TribesGame.TrProj_Falcon;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_Falcon : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrProj_Falcon")); }
	private static __gshared TrProj_Falcon mDefaultProperties;
	@property final static TrProj_Falcon DefaultProperties() { mixin(MGDPC("TrProj_Falcon", "TrProj_Falcon TribesGame.Default__TrProj_Falcon")); }
}
