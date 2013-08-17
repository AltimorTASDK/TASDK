module UnrealScript.Engine.UIDataStore_GameState;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.UIDataStore;

extern(C++) interface UIDataStore_GameState : UIDataStore
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.UIDataStore_GameState")); }
	private static __gshared UIDataStore_GameState mDefaultProperties;
	@property final static UIDataStore_GameState DefaultProperties() { mixin(MGDPC("UIDataStore_GameState", "UIDataStore_GameState Engine.Default__UIDataStore_GameState")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnRefreshDataFieldValue;
			ScriptFunction mNotifyGameSessionEnded;
		}
		public @property static final
		{
			ScriptFunction OnRefreshDataFieldValue() { mixin(MGF("mOnRefreshDataFieldValue", "Function Engine.UIDataStore_GameState.OnRefreshDataFieldValue")); }
			ScriptFunction NotifyGameSessionEnded() { mixin(MGF("mNotifyGameSessionEnded", "Function Engine.UIDataStore_GameState.NotifyGameSessionEnded")); }
		}
	}
	// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnRefreshDataFieldValue__Delegate'!
final:
	void OnRefreshDataFieldValue()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnRefreshDataFieldValue, cast(void*)0, cast(void*)0);
	}
	bool NotifyGameSessionEnded()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyGameSessionEnded, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
