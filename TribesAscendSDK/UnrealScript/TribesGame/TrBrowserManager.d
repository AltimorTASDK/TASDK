module UnrealScript.TribesGame.TrBrowserManager;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface TrBrowserManager : UObject
{
public extern(D):
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73715], params.ptr, cast(void*)0);
	}
	void OpenVideo(ScriptString pURL)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = pURL;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73717], params.ptr, cast(void*)0);
	}
	ScriptString GetLanguageString()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73719], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	void Alert()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73721], cast(void*)0, cast(void*)0);
	}
	void Gold()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73722], cast(void*)0, cast(void*)0);
	}
	void Store()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73723], cast(void*)0, cast(void*)0);
	}
	void Booster()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73724], cast(void*)0, cast(void*)0);
	}
	void Support()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73725], cast(void*)0, cast(void*)0);
	}
	void Profile()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73726], cast(void*)0, cast(void*)0);
	}
	void ActivateKey()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73727], cast(void*)0, cast(void*)0);
	}
	void RecoverPassword()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73728], cast(void*)0, cast(void*)0);
	}
	void RecoverUsername()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73729], cast(void*)0, cast(void*)0);
	}
	void ClassVideo(int Id)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Id;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73730], params.ptr, cast(void*)0);
	}
	void CreateAccount(bool bUsingSteam)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bUsingSteam;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73732], params.ptr, cast(void*)0);
	}
	ScriptString GetLangParam()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73734], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
