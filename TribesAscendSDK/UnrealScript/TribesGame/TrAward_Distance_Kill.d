module UnrealScript.TribesGame.TrAward_Distance_Kill;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAward;

extern(C++) interface TrAward_Distance_Kill : TrAward
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAward_Distance_Kill")); }
	private static __gshared TrAward_Distance_Kill mDefaultProperties;
	@property final static TrAward_Distance_Kill DefaultProperties() { mixin(MGDPC("TrAward_Distance_Kill", "TrAward_Distance_Kill TribesGame.Default__TrAward_Distance_Kill")); }
}
