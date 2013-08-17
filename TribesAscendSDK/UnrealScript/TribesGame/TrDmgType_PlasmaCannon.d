module UnrealScript.TribesGame.TrDmgType_PlasmaCannon;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_PlasmaCannon : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_PlasmaCannon")()); }
	private static __gshared TrDmgType_PlasmaCannon mDefaultProperties;
	@property final static TrDmgType_PlasmaCannon DefaultProperties() { mixin(MGDPC!(TrDmgType_PlasmaCannon, "TrDmgType_PlasmaCannon TribesGame.Default__TrDmgType_PlasmaCannon")()); }
}
