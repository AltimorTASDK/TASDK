module UnrealScript.TribesGame.GFxTrPage_RoamTDM;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;

extern(C++) interface GFxTrPage_RoamTDM : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrPage_RoamTDM")); }
	private static __gshared GFxTrPage_RoamTDM mDefaultProperties;
	@property final static GFxTrPage_RoamTDM DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxTrPage_RoamTDM)("GFxTrPage_RoamTDM TribesGame.Default__GFxTrPage_RoamTDM")); }
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
			ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_RoamTDM.Initialize")); }
			ScriptFunction SpecialAction() { return mSpecialAction ? mSpecialAction : (mSpecialAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_RoamTDM.SpecialAction")); }
			ScriptFunction JoinLocalGame() { return mJoinLocalGame ? mJoinLocalGame : (mJoinLocalGame = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_RoamTDM.JoinLocalGame")); }
			ScriptFunction ShowModel() { return mShowModel ? mShowModel : (mShowModel = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_RoamTDM.ShowModel")); }
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
