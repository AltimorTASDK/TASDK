module UnrealScript.UTGame.UTUIDataProvider_GameModeInfo;

import ScriptClasses;
import UnrealScript.UTGame.UTUIResourceDataProvider;

extern(C++) interface UTUIDataProvider_GameModeInfo : UTUIResourceDataProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTUIDataProvider_GameModeInfo")); }
	private static __gshared UTUIDataProvider_GameModeInfo mDefaultProperties;
	@property final static UTUIDataProvider_GameModeInfo DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTUIDataProvider_GameModeInfo)("UTUIDataProvider_GameModeInfo UTGame.Default__UTUIDataProvider_GameModeInfo")); }
	@property final auto ref
	{
		ScriptString GameMode() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 152); }
		ScriptString DefaultMap() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 164); }
		ScriptString Prefixes() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 236); }
		ScriptString GameSettingsClass() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 176); }
		ScriptString Description() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 212); }
		ScriptString PreviewImageMarkup() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 224); }
		float IconVL() { return *cast(float*)(cast(size_t)cast(void*)this + 272); }
		float IconUL() { return *cast(float*)(cast(size_t)cast(void*)this + 268); }
		float IconV() { return *cast(float*)(cast(size_t)cast(void*)this + 264); }
		float IconU() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
		ScriptString IconImage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 248); }
		ScriptString OptionSet() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 200); }
		ScriptString GameSearchClass() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 188); }
	}
}
