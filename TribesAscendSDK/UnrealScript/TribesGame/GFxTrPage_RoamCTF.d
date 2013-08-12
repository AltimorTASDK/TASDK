module UnrealScript.TribesGame.GFxTrPage_RoamCTF;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;

extern(C++) interface GFxTrPage_RoamCTF : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrPage_RoamCTF")); }
	private static __gshared GFxTrPage_RoamCTF mDefaultProperties;
	@property final static GFxTrPage_RoamCTF DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxTrPage_RoamCTF)("GFxTrPage_RoamCTF TribesGame.Default__GFxTrPage_RoamCTF")); }
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
			ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_RoamCTF.Initialize")); }
			ScriptFunction SpecialAction() { return mSpecialAction ? mSpecialAction : (mSpecialAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_RoamCTF.SpecialAction")); }
			ScriptFunction JoinLocalGame() { return mJoinLocalGame ? mJoinLocalGame : (mJoinLocalGame = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_RoamCTF.JoinLocalGame")); }
			ScriptFunction ShowModel() { return mShowModel ? mShowModel : (mShowModel = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_RoamCTF.ShowModel")); }
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
