module UnrealScript.TribesGame.TrSkin_Doombringer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrSkin;

extern(C++) interface TrSkin_Doombringer : TrSkin
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrSkin_Doombringer")()); }
	private static __gshared TrSkin_Doombringer mDefaultProperties;
	@property final static TrSkin_Doombringer DefaultProperties() { mixin(MGDPC!(TrSkin_Doombringer, "TrSkin_Doombringer TribesGame.Default__TrSkin_Doombringer")()); }
}
