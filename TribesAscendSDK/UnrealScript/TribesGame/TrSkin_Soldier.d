module UnrealScript.TribesGame.TrSkin_Soldier;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrSkin;

extern(C++) interface TrSkin_Soldier : TrSkin
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrSkin_Soldier")); }
	private static __gshared TrSkin_Soldier mDefaultProperties;
	@property final static TrSkin_Soldier DefaultProperties() { mixin(MGDPC("TrSkin_Soldier", "TrSkin_Soldier TribesGame.Default__TrSkin_Soldier")); }
}
