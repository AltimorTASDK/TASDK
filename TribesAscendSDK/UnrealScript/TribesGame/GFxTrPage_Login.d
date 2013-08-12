module UnrealScript.TribesGame.GFxTrPage_Login;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_Login : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrPage_Login")); }
	private static __gshared GFxTrPage_Login mDefaultProperties;
	@property final static GFxTrPage_Login DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxTrPage_Login)("GFxTrPage_Login TribesGame.Default__GFxTrPage_Login")); }
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
			ScriptFunction TakeAction() { return mTakeAction ? mTakeAction : (mTakeAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Login.TakeAction")); }
			ScriptFunction FillData() { return mFillData ? mFillData : (mFillData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Login.FillData")); }
			ScriptFunction FillOption() { return mFillOption ? mFillOption : (mFillOption = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Login.FillOption")); }
			ScriptFunction ShowModel() { return mShowModel ? mShowModel : (mShowModel = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_Login.ShowModel")); }
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
		ScriptString CreateAccountLabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 464); }
		ScriptString HelpPasswordLabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 452); }
		ScriptString HelpUsernameLabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 440); }
		ScriptString CheckboxLabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 428); }
		ScriptString PasswordLabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 416); }
		ScriptString UsernameLabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 404); }
		ScriptString BetaKeyLabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 392); }
		ScriptString AccountLabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 380); }
		ScriptString SubmitLabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 368); }
		ScriptString HelpLabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 356); }
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
