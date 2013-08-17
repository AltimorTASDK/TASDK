module UnrealScript.Engine.UIManager;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Core.UObject;

extern(C++) interface UIManager : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.UIManager")()); }
	private static __gshared UIManager mDefaultProperties;
	@property final static UIManager DefaultProperties() { mixin(MGDPC!(UIManager, "UIManager Engine.Default__UIManager")()); }
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
			ScriptFunction GetUIManager() { mixin(MGF!("mGetUIManager", "Function Engine.UIManager.GetUIManager")()); }
			ScriptFunction CanUnpauseInternalUI() { mixin(MGF!("mCanUnpauseInternalUI", "Function Engine.UIManager.CanUnpauseInternalUI")()); }
			ScriptFunction PauseGame() { mixin(MGF!("mPauseGame", "Function Engine.UIManager.PauseGame")()); }
			ScriptFunction NotifyPlayerAdded() { mixin(MGF!("mNotifyPlayerAdded", "Function Engine.UIManager.NotifyPlayerAdded")()); }
			ScriptFunction NotifyPlayerRemoved() { mixin(MGF!("mNotifyPlayerRemoved", "Function Engine.UIManager.NotifyPlayerRemoved")()); }
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
	void PauseGame(bool bDesiredPauseState, int* PlayerIndex = null)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bDesiredPauseState;
		if (PlayerIndex !is null)
			*cast(int*)&params[4] = *PlayerIndex;
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
