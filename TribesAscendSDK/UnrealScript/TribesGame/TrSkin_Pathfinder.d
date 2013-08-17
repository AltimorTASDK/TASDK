module UnrealScript.TribesGame.TrSkin_Pathfinder;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrSkin;

extern(C++) interface TrSkin_Pathfinder : TrSkin
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrSkin_Pathfinder")); }
	private static __gshared TrSkin_Pathfinder mDefaultProperties;
	@property final static TrSkin_Pathfinder DefaultProperties() { mixin(MGDPC("TrSkin_Pathfinder", "TrSkin_Pathfinder TribesGame.Default__TrSkin_Pathfinder")); }
}
