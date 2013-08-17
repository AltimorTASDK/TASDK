module UnrealScript.Engine.UIDataStore_MenuItems;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.UIDataStore_GameResource;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.UIDataProvider_MenuItem;
import UnrealScript.Engine.UIDataProvider;

extern(C++) interface UIDataStore_MenuItems : UIDataStore_GameResource
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.UIDataStore_MenuItems")); }
	private static __gshared UIDataStore_MenuItems mDefaultProperties;
	@property final static UIDataStore_MenuItems DefaultProperties() { mixin(MGDPC("UIDataStore_MenuItems", "UIDataStore_MenuItems Engine.Default__UIDataStore_MenuItems")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mClearSet;
			ScriptFunction mAppendToSet;
			ScriptFunction mGetSet;
			ScriptFunction mOnGameSettingsChanged;
			ScriptFunction mRegistered;
			ScriptFunction mUnregistered;
		}
		public @property static final
		{
			ScriptFunction ClearSet() { mixin(MGF("mClearSet", "Function Engine.UIDataStore_MenuItems.ClearSet")); }
			ScriptFunction AppendToSet() { mixin(MGF("mAppendToSet", "Function Engine.UIDataStore_MenuItems.AppendToSet")); }
			ScriptFunction GetSet() { mixin(MGF("mGetSet", "Function Engine.UIDataStore_MenuItems.GetSet")); }
			ScriptFunction OnGameSettingsChanged() { mixin(MGF("mOnGameSettingsChanged", "Function Engine.UIDataStore_MenuItems.OnGameSettingsChanged")); }
			ScriptFunction Registered() { mixin(MGF("mRegistered", "Function Engine.UIDataStore_MenuItems.Registered")); }
			ScriptFunction Unregistered() { mixin(MGF("mUnregistered", "Function Engine.UIDataStore_MenuItems.Unregistered")); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(UIDataProvider_MenuItem) DynamicProviders() { mixin(MGPC("ScriptArray!(UIDataProvider_MenuItem)", 264)); }
		UObject.MultiMap_Mirror OptionProviders() { mixin(MGPC("UObject.MultiMap_Mirror", 204)); }
		ScriptName CurrentGameSettingsTag() { mixin(MGPC("ScriptName", 196)); }
	}
final:
	void ClearSet(ScriptName SetName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SetName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearSet, params.ptr, cast(void*)0);
	}
	void AppendToSet(ScriptName SetName, int NumOptions)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SetName;
		*cast(int*)&params[8] = NumOptions;
		(cast(ScriptObject)this).ProcessEvent(Functions.AppendToSet, params.ptr, cast(void*)0);
	}
	void GetSet(ScriptName SetName, ref ScriptArray!(UIDataProvider_MenuItem) OutProviders)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SetName;
		*cast(ScriptArray!(UIDataProvider_MenuItem)*)&params[8] = OutProviders;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSet, params.ptr, cast(void*)0);
		OutProviders = *cast(ScriptArray!(UIDataProvider_MenuItem)*)&params[8];
	}
	void OnGameSettingsChanged(UIDataProvider SourceProvider, ScriptName* PropTag = null)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UIDataProvider*)params.ptr = SourceProvider;
		if (PropTag !is null)
			*cast(ScriptName*)&params[4] = *PropTag;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnGameSettingsChanged, params.ptr, cast(void*)0);
	}
	void Registered(LocalPlayer PlayerOwner)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = PlayerOwner;
		(cast(ScriptObject)this).ProcessEvent(Functions.Registered, params.ptr, cast(void*)0);
	}
	void Unregistered(LocalPlayer PlayerOwner)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = PlayerOwner;
		(cast(ScriptObject)this).ProcessEvent(Functions.Unregistered, params.ptr, cast(void*)0);
	}
}
