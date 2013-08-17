module UnrealScript.TribesGame.TrDmgType_NinjaSmoke;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_NinjaSmoke : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDmgType_NinjaSmoke")); }
	private static __gshared TrDmgType_NinjaSmoke mDefaultProperties;
	@property final static TrDmgType_NinjaSmoke DefaultProperties() { mixin(MGDPC("TrDmgType_NinjaSmoke", "TrDmgType_NinjaSmoke TribesGame.Default__TrDmgType_NinjaSmoke")); }
}
