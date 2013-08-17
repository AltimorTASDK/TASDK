module UnrealScript.TribesGame.GFxTrPage_RoamTDM;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;

extern(C++) interface GFxTrPage_RoamTDM : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.GFxTrPage_RoamTDM")()); }
	private static __gshared GFxTrPage_RoamTDM mDefaultProperties;
	@property final static GFxTrPage_RoamTDM DefaultProperties() { mixin(MGDPC!(GFxTrPage_RoamTDM, "GFxTrPage_RoamTDM TribesGame.Default__GFxTrPage_RoamTDM")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitialize;
			ScriptFunction mSpecialAction;
			ScriptFunction mJoinLocalGame;
			ScriptFunction mShowModel;
		}
		public @property static final
		{
			ScriptFunction Initialize() { mixin(MGF!("mInitialize", "Function TribesGame.GFxTrPage_RoamTDM.Initialize")()); }
			ScriptFunction SpecialAction() { mixin(MGF!("mSpecialAction", "Function TribesGame.GFxTrPage_RoamTDM.SpecialAction")()); }
			ScriptFunction JoinLocalGame() { mixin(MGF!("mJoinLocalGame", "Function TribesGame.GFxTrPage_RoamTDM.JoinLocalGame")()); }
			ScriptFunction ShowModel() { mixin(MGF!("mShowModel", "Function TribesGame.GFxTrPage_RoamTDM.ShowModel")()); }
		}
	}
final:
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
	void SpecialAction(GFxTrAction Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrAction*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpecialAction, params.ptr, cast(void*)0);
	}
	void JoinLocalGame(ScriptString SessionName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = SessionName;
		(cast(ScriptObject)this).ProcessEvent(Functions.JoinLocalGame, params.ptr, cast(void*)0);
	}
	void ShowModel()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowModel, cast(void*)0, cast(void*)0);
	}
}
