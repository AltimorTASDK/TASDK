module UnrealScript.Engine.UIDataStore_GameState;

import ScriptClasses;
import UnrealScript.Engine.UIDataStore;

extern(C++) interface UIDataStore_GameState : UIDataStore
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.UIDataStore_GameState")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnRefreshDataFieldValue;
			ScriptFunction mNotifyGameSessionEnded;
		}
		public @property static final
		{
			ScriptFunction OnRefreshDataFieldValue() { return mOnRefreshDataFieldValue ? mOnRefreshDataFieldValue : (mOnRefreshDataFieldValue = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStore_GameState.OnRefreshDataFieldValue")); }
			ScriptFunction NotifyGameSessionEnded() { return mNotifyGameSessionEnded ? mNotifyGameSessionEnded : (mNotifyGameSessionEnded = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataStore_GameState.NotifyGameSessionEnded")); }
		}
	}
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
