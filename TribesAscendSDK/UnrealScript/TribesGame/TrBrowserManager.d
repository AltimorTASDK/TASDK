module UnrealScript.TribesGame.TrBrowserManager;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface TrBrowserManager : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrBrowserManager")); }
	private static __gshared TrBrowserManager mDefaultProperties;
	@property final static TrBrowserManager DefaultProperties() { mixin(MGDPC("TrBrowserManager", "TrBrowserManager TribesGame.Default__TrBrowserManager")); }
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
			ScriptFunction OpenURL() { mixin(MGF("mOpenURL", "Function TribesGame.TrBrowserManager.OpenURL")); }
			ScriptFunction OpenVideo() { mixin(MGF("mOpenVideo", "Function TribesGame.TrBrowserManager.OpenVideo")); }
			ScriptFunction GetLanguageString() { mixin(MGF("mGetLanguageString", "Function TribesGame.TrBrowserManager.GetLanguageString")); }
			ScriptFunction Alert() { mixin(MGF("mAlert", "Function TribesGame.TrBrowserManager.Alert")); }
			ScriptFunction Gold() { mixin(MGF("mGold", "Function TribesGame.TrBrowserManager.Gold")); }
			ScriptFunction Store() { mixin(MGF("mStore", "Function TribesGame.TrBrowserManager.Store")); }
			ScriptFunction Booster() { mixin(MGF("mBooster", "Function TribesGame.TrBrowserManager.Booster")); }
			ScriptFunction Support() { mixin(MGF("mSupport", "Function TribesGame.TrBrowserManager.Support")); }
			ScriptFunction Profile() { mixin(MGF("mProfile", "Function TribesGame.TrBrowserManager.Profile")); }
			ScriptFunction ActivateKey() { mixin(MGF("mActivateKey", "Function TribesGame.TrBrowserManager.ActivateKey")); }
			ScriptFunction RecoverPassword() { mixin(MGF("mRecoverPassword", "Function TribesGame.TrBrowserManager.RecoverPassword")); }
			ScriptFunction RecoverUsername() { mixin(MGF("mRecoverUsername", "Function TribesGame.TrBrowserManager.RecoverUsername")); }
			ScriptFunction ClassVideo() { mixin(MGF("mClassVideo", "Function TribesGame.TrBrowserManager.ClassVideo")); }
			ScriptFunction CreateAccount() { mixin(MGF("mCreateAccount", "Function TribesGame.TrBrowserManager.CreateAccount")); }
			ScriptFunction GetLangParam() { mixin(MGF("mGetLangParam", "Function TribesGame.TrBrowserManager.GetLangParam")); }
		}
	}
	@property final auto ref
	{
		ScriptString URLCreateSteamAccount() { mixin(MGPC("ScriptString", 204)); }
		ScriptString URLRecoverUsername() { mixin(MGPC("ScriptString", 192)); }
		ScriptString URLRecoverPassword() { mixin(MGPC("ScriptString", 180)); }
		ScriptString URLCreateAccount() { mixin(MGPC("ScriptString", 168)); }
		ScriptString URLActivateKey() { mixin(MGPC("ScriptString", 156)); }
		ScriptString URLClassVideo() { mixin(MGPC("ScriptString", 144)); }
		ScriptString URLRedirect() { mixin(MGPC("ScriptString", 132)); }
		ScriptString URLProfile() { mixin(MGPC("ScriptString", 120)); }
		ScriptString URLSupport() { mixin(MGPC("ScriptString", 108)); }
		ScriptString URLBooster() { mixin(MGPC("ScriptString", 96)); }
		ScriptString URLStore() { mixin(MGPC("ScriptString", 84)); }
		ScriptString URLAlert() { mixin(MGPC("ScriptString", 72)); }
		ScriptString URLGold() { mixin(MGPC("ScriptString", 60)); }
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
