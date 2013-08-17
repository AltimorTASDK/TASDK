module UnrealScript.TribesGame.GFxTrPage_Login;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_Login : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.GFxTrPage_Login")()); }
	private static __gshared GFxTrPage_Login mDefaultProperties;
	@property final static GFxTrPage_Login DefaultProperties() { mixin(MGDPC!(GFxTrPage_Login, "GFxTrPage_Login TribesGame.Default__GFxTrPage_Login")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mTakeAction;
			ScriptFunction mFillData;
			ScriptFunction mFillOption;
			ScriptFunction mShowModel;
		}
		public @property static final
		{
			ScriptFunction TakeAction() { mixin(MGF!("mTakeAction", "Function TribesGame.GFxTrPage_Login.TakeAction")()); }
			ScriptFunction FillData() { mixin(MGF!("mFillData", "Function TribesGame.GFxTrPage_Login.FillData")()); }
			ScriptFunction FillOption() { mixin(MGF!("mFillOption", "Function TribesGame.GFxTrPage_Login.FillOption")()); }
			ScriptFunction ShowModel() { mixin(MGF!("mShowModel", "Function TribesGame.GFxTrPage_Login.ShowModel")()); }
		}
	}
	enum MENU_ACTION_LOGIN : ubyte
	{
		MAL_LOAD = 0,
		MAL_SUBMIT = 1,
		MAL_BETAKEY = 2,
		MAL_EXIT = 3,
		MAL_HELPUSERNAME = 4,
		MAL_HELPPASSWORD = 5,
		MAL_NEWACCOUNT = 6,
		MAL_REMEMBERME = 7,
		MAL_MAX = 8,
	}
	@property final auto ref
	{
		ScriptString CreateAccountLabel() { mixin(MGPC!("ScriptString", 464)()); }
		ScriptString HelpPasswordLabel() { mixin(MGPC!("ScriptString", 452)()); }
		ScriptString HelpUsernameLabel() { mixin(MGPC!("ScriptString", 440)()); }
		ScriptString CheckboxLabel() { mixin(MGPC!("ScriptString", 428)()); }
		ScriptString PasswordLabel() { mixin(MGPC!("ScriptString", 416)()); }
		ScriptString UsernameLabel() { mixin(MGPC!("ScriptString", 404)()); }
		ScriptString BetaKeyLabel() { mixin(MGPC!("ScriptString", 392)()); }
		ScriptString AccountLabel() { mixin(MGPC!("ScriptString", 380)()); }
		ScriptString SubmitLabel() { mixin(MGPC!("ScriptString", 368)()); }
		ScriptString HelpLabel() { mixin(MGPC!("ScriptString", 356)()); }
	}
final:
	int TakeAction(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeAction, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	void FillData(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillData, params.ptr, cast(void*)0);
	}
	GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillOption, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	void ShowModel()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowModel, cast(void*)0, cast(void*)0);
	}
}
