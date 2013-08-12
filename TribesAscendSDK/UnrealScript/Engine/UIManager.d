module UnrealScript.Engine.UIManager;

import ScriptClasses;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Core.UObject;

extern(C++) interface UIManager : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.UIManager")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetUIManager;
			ScriptFunction mCanUnpauseInternalUI;
			ScriptFunction mPauseGame;
			ScriptFunction mNotifyPlayerAdded;
			ScriptFunction mNotifyPlayerRemoved;
		}
		public @property static final
		{
			ScriptFunction GetUIManager() { return mGetUIManager ? mGetUIManager : (mGetUIManager = ScriptObject.Find!(ScriptFunction)("Function Engine.UIManager.GetUIManager")); }
			ScriptFunction CanUnpauseInternalUI() { return mCanUnpauseInternalUI ? mCanUnpauseInternalUI : (mCanUnpauseInternalUI = ScriptObject.Find!(ScriptFunction)("Function Engine.UIManager.CanUnpauseInternalUI")); }
			ScriptFunction PauseGame() { return mPauseGame ? mPauseGame : (mPauseGame = ScriptObject.Find!(ScriptFunction)("Function Engine.UIManager.PauseGame")); }
			ScriptFunction NotifyPlayerAdded() { return mNotifyPlayerAdded ? mNotifyPlayerAdded : (mNotifyPlayerAdded = ScriptObject.Find!(ScriptFunction)("Function Engine.UIManager.NotifyPlayerAdded")); }
			ScriptFunction NotifyPlayerRemoved() { return mNotifyPlayerRemoved ? mNotifyPlayerRemoved : (mNotifyPlayerRemoved = ScriptObject.Find!(ScriptFunction)("Function Engine.UIManager.NotifyPlayerRemoved")); }
		}
	}
final:
	static UIManager GetUIManager()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetUIManager, params.ptr, cast(void*)0);
		return *cast(UIManager*)params.ptr;
	}
	bool CanUnpauseInternalUI()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanUnpauseInternalUI, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void PauseGame(bool bDesiredPauseState, int PlayerIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bDesiredPauseState;
		*cast(int*)&params[4] = PlayerIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.PauseGame, params.ptr, cast(void*)0);
	}
	void NotifyPlayerAdded(int PlayerIndex, LocalPlayer AddedPlayer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PlayerIndex;
		*cast(LocalPlayer*)&params[4] = AddedPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyPlayerAdded, params.ptr, cast(void*)0);
	}
	void NotifyPlayerRemoved(int PlayerIndex, LocalPlayer RemovedPlayer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PlayerIndex;
		*cast(LocalPlayer*)&params[4] = RemovedPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyPlayerRemoved, params.ptr, cast(void*)0);
	}
}
