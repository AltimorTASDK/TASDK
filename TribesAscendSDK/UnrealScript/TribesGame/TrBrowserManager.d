module UnrealScript.TribesGame.TrBrowserManager;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface TrBrowserManager : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrBrowserManager")); }
	private static __gshared TrBrowserManager mDefaultProperties;
	@property final static TrBrowserManager DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrBrowserManager)("TrBrowserManager TribesGame.Default__TrBrowserManager")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOpenURL;
			ScriptFunction mOpenVideo;
			ScriptFunction mGetLanguageString;
			ScriptFunction mAlert;
			ScriptFunction mGold;
			ScriptFunction mStore;
			ScriptFunction mBooster;
			ScriptFunction mSupport;
			ScriptFunction mProfile;
			ScriptFunction mActivateKey;
			ScriptFunction mRecoverPassword;
			ScriptFunction mRecoverUsername;
			ScriptFunction mClassVideo;
			ScriptFunction mCreateAccount;
			ScriptFunction mGetLangParam;
		}
		public @property static final
		{
			ScriptFunction OpenURL() { return mOpenURL ? mOpenURL : (mOpenURL = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrBrowserManager.OpenURL")); }
			ScriptFunction OpenVideo() { return mOpenVideo ? mOpenVideo : (mOpenVideo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrBrowserManager.OpenVideo")); }
			ScriptFunction GetLanguageString() { return mGetLanguageString ? mGetLanguageString : (mGetLanguageString = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrBrowserManager.GetLanguageString")); }
			ScriptFunction Alert() { return mAlert ? mAlert : (mAlert = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrBrowserManager.Alert")); }
			ScriptFunction Gold() { return mGold ? mGold : (mGold = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrBrowserManager.Gold")); }
			ScriptFunction Store() { return mStore ? mStore : (mStore = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrBrowserManager.Store")); }
			ScriptFunction Booster() { return mBooster ? mBooster : (mBooster = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrBrowserManager.Booster")); }
			ScriptFunction Support() { return mSupport ? mSupport : (mSupport = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrBrowserManager.Support")); }
			ScriptFunction Profile() { return mProfile ? mProfile : (mProfile = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrBrowserManager.Profile")); }
			ScriptFunction ActivateKey() { return mActivateKey ? mActivateKey : (mActivateKey = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrBrowserManager.ActivateKey")); }
			ScriptFunction RecoverPassword() { return mRecoverPassword ? mRecoverPassword : (mRecoverPassword = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrBrowserManager.RecoverPassword")); }
			ScriptFunction RecoverUsername() { return mRecoverUsername ? mRecoverUsername : (mRecoverUsername = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrBrowserManager.RecoverUsername")); }
			ScriptFunction ClassVideo() { return mClassVideo ? mClassVideo : (mClassVideo = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrBrowserManager.ClassVideo")); }
			ScriptFunction CreateAccount() { return mCreateAccount ? mCreateAccount : (mCreateAccount = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrBrowserManager.CreateAccount")); }
			ScriptFunction GetLangParam() { return mGetLangParam ? mGetLangParam : (mGetLangParam = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrBrowserManager.GetLangParam")); }
		}
	}
	@property final auto ref
	{
		ScriptString URLCreateSteamAccount() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 204); }
		ScriptString URLRecoverUsername() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 192); }
		ScriptString URLRecoverPassword() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 180); }
		ScriptString URLCreateAccount() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 168); }
		ScriptString URLActivateKey() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 156); }
		ScriptString URLClassVideo() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 144); }
		ScriptString URLRedirect() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 132); }
		ScriptString URLProfile() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 120); }
		ScriptString URLSupport() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 108); }
		ScriptString URLBooster() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 96); }
		ScriptString URLStore() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 84); }
		ScriptString URLAlert() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 72); }
		ScriptString URLGold() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 60); }
	}
final:
	void OpenURL(ScriptString pURL)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = pURL;
		(cast(ScriptObject)this).ProcessEvent(Functions.OpenURL, params.ptr, cast(void*)0);
	}
	void OpenVideo(ScriptString pURL)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = pURL;
		(cast(ScriptObject)this).ProcessEvent(Functions.OpenVideo, params.ptr, cast(void*)0);
	}
	ScriptString GetLanguageString()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetLanguageString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	void Alert()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Alert, cast(void*)0, cast(void*)0);
	}
	void Gold()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Gold, cast(void*)0, cast(void*)0);
	}
	void Store()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Store, cast(void*)0, cast(void*)0);
	}
	void Booster()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Booster, cast(void*)0, cast(void*)0);
	}
	void Support()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Support, cast(void*)0, cast(void*)0);
	}
	void Profile()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Profile, cast(void*)0, cast(void*)0);
	}
	void ActivateKey()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ActivateKey, cast(void*)0, cast(void*)0);
	}
	void RecoverPassword()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RecoverPassword, cast(void*)0, cast(void*)0);
	}
	void RecoverUsername()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RecoverUsername, cast(void*)0, cast(void*)0);
	}
	void ClassVideo(int Id)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Id;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClassVideo, params.ptr, cast(void*)0);
	}
	void CreateAccount(bool bUsingSteam)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bUsingSteam;
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateAccount, params.ptr, cast(void*)0);
	}
	ScriptString GetLangParam()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetLangParam, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
