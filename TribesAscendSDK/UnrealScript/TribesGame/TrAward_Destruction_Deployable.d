module UnrealScript.TribesGame.TrAward_Destruction_Deployable;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrAward;

extern(C++) interface TrAward_Destruction_Deployable : TrAward
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAward_Destruction_Deployable")); }
	private static __gshared TrAward_Destruction_Deployable mDefaultProperties;
	@property final static TrAward_Destruction_Deployable DefaultProperties() { mixin(MGDPC("TrAward_Destruction_Deployable", "TrAward_Destruction_Deployable TribesGame.Default__TrAward_Destruction_Deployable")); }
}
