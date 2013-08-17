module UnrealScript.TribesGame.TrProj_Chaingun;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrProjectile;

extern(C++) interface TrProj_Chaingun : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrProj_Chaingun")()); }
	private static __gshared TrProj_Chaingun mDefaultProperties;
	@property final static TrProj_Chaingun DefaultProperties() { mixin(MGDPC!(TrProj_Chaingun, "TrProj_Chaingun TribesGame.Default__TrProj_Chaingun")()); }
}
