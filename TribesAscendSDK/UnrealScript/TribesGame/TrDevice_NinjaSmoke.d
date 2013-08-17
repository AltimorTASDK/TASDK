module UnrealScript.TribesGame.TrDevice_NinjaSmoke;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_AutoFire;

extern(C++) interface TrDevice_NinjaSmoke : TrDevice_AutoFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_NinjaSmoke")()); }
	private static __gshared TrDevice_NinjaSmoke mDefaultProperties;
	@property final static TrDevice_NinjaSmoke DefaultProperties() { mixin(MGDPC!(TrDevice_NinjaSmoke, "TrDevice_NinjaSmoke TribesGame.Default__TrDevice_NinjaSmoke")()); }
}
