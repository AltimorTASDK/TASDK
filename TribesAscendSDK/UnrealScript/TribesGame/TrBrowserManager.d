module UnrealScript.TribesGame.TrBrowserManager;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface TrBrowserManager : UObject
{
	public @property final auto ref ScriptString URLCreateSteamAccount() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 204); }
	public @property final auto ref ScriptString URLRecoverUsername() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 192); }
	public @property final auto ref ScriptString URLRecoverPassword() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 180); }
	public @property final auto ref ScriptString URLCreateAccount() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref ScriptString URLActivateKey() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 156); }
	public @property final auto ref ScriptString URLClassVideo() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref ScriptString URLRedirect() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref ScriptString URLProfile() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref ScriptString URLSupport() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref ScriptString URLBooster() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref ScriptString URLStore() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref ScriptString URLAlert() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref ScriptString URLGold() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 60); }
	final void OpenURL(ScriptString URL)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = URL;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73715], params.ptr, cast(void*)0);
	}
	final void OpenVideo(ScriptString URL)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = URL;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73717], params.ptr, cast(void*)0);
	}
	final ScriptString GetLanguageString()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73719], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	final void Alert()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73721], cast(void*)0, cast(void*)0);
	}
	final void Gold()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73722], cast(void*)0, cast(void*)0);
	}
	final void Store()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73723], cast(void*)0, cast(void*)0);
	}
	final void Booster()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73724], cast(void*)0, cast(void*)0);
	}
	final void Support()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73725], cast(void*)0, cast(void*)0);
	}
	final void Profile()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73726], cast(void*)0, cast(void*)0);
	}
	final void ActivateKey()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73727], cast(void*)0, cast(void*)0);
	}
	final void RecoverPassword()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73728], cast(void*)0, cast(void*)0);
	}
	final void RecoverUsername()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73729], cast(void*)0, cast(void*)0);
	}
	final void ClassVideo(int Id)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Id;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73730], params.ptr, cast(void*)0);
	}
	final void CreateAccount(bool bUsingSteam)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bUsingSteam;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73732], params.ptr, cast(void*)0);
	}
	final ScriptString GetLangParam()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73734], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
