module UnrealScript.TribesGame.GFxTrScene_ExperienceSummary;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrScene;

extern(C++) interface GFxTrScene_ExperienceSummary : GFxTrScene
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.GFxTrScene_ExperienceSummary")()); }
	private static __gshared GFxTrScene_ExperienceSummary mDefaultProperties;
	@property final static GFxTrScene_ExperienceSummary DefaultProperties() { mixin(MGDPC!(GFxTrScene_ExperienceSummary, "GFxTrScene_ExperienceSummary TribesGame.Default__GFxTrScene_ExperienceSummary")()); }
}
