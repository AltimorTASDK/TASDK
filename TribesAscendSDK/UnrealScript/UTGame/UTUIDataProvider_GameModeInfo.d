module UnrealScript.UTGame.UTUIDataProvider_GameModeInfo;

import ScriptClasses;
import UnrealScript.UTGame.UTUIResourceDataProvider;

extern(C++) interface UTUIDataProvider_GameModeInfo : UTUIResourceDataProvider
{
	public @property final auto ref ScriptString GameMode() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 152); }
	public @property final auto ref ScriptString DefaultMap() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref ScriptString Prefixes() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 236); }
	public @property final auto ref ScriptString GameSettingsClass() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 176); }
	public @property final auto ref ScriptString Description() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 212); }
	public @property final auto ref ScriptString PreviewImageMarkup() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 224); }
	public @property final auto ref float IconVL() { return *cast(float*)(cast(size_t)cast(void*)this + 272); }
	public @property final auto ref float IconUL() { return *cast(float*)(cast(size_t)cast(void*)this + 268); }
	public @property final auto ref float IconV() { return *cast(float*)(cast(size_t)cast(void*)this + 264); }
	public @property final auto ref float IconU() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
	public @property final auto ref ScriptString IconImage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 248); }
	public @property final auto ref ScriptString OptionSet() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 200); }
	public @property final auto ref ScriptString GameSearchClass() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 188); }
}
