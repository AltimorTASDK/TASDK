module UnrealScript.TribesGame.GFxTrPage_RoamingMatch;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrPage;

extern(C++) interface GFxTrPage_RoamingMatch : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.GFxTrPage_RoamingMatch")()); }
	private static __gshared GFxTrPage_RoamingMatch mDefaultProperties;
	@property final static GFxTrPage_RoamingMatch DefaultProperties() { mixin(MGDPC!(GFxTrPage_RoamingMatch, "GFxTrPage_RoamingMatch TribesGame.Default__GFxTrPage_RoamingMatch")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitialize;
			ScriptFunction mShowModel;
		}
		public @property static final
		{
			ScriptFunction Initialize() { mixin(MGF!("mInitialize", "Function TribesGame.GFxTrPage_RoamingMatch.Initialize")()); }
			ScriptFunction ShowModel() { mixin(MGF!("mShowModel", "Function TribesGame.GFxTrPage_RoamingMatch.ShowModel")()); }
		}
	}
final:
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
	void ShowModel()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowModel, cast(void*)0, cast(void*)0);
	}
}
