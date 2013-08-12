module UnrealScript.GFxUI.GFxInteraction;

import ScriptClasses;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Core.UObject;
import UnrealScript.GFxUI.GFxMoviePlayer;
import UnrealScript.Engine.Interaction;

extern(C++) interface GFxInteraction : Interaction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GFxUI.GFxInteraction")); }
	private static __gshared GFxInteraction mDefaultProperties;
	@property final static GFxInteraction DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxInteraction)("GFxInteraction GFxUI.Default__GFxInteraction")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetFocusMovie;
			ScriptFunction mNotifyGameSessionEnded;
			ScriptFunction mNotifyPlayerAdded;
			ScriptFunction mNotifyPlayerRemoved;
			ScriptFunction mCloseAllMoviePlayers;
		}
		public @property static final
		{
			ScriptFunction GetFocusMovie() { return mGetFocusMovie ? mGetFocusMovie : (mGetFocusMovie = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxInteraction.GetFocusMovie")); }
			ScriptFunction NotifyGameSessionEnded() { return mNotifyGameSessionEnded ? mNotifyGameSessionEnded : (mNotifyGameSessionEnded = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxInteraction.NotifyGameSessionEnded")); }
			ScriptFunction NotifyPlayerAdded() { return mNotifyPlayerAdded ? mNotifyPlayerAdded : (mNotifyPlayerAdded = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxInteraction.NotifyPlayerAdded")); }
			ScriptFunction NotifyPlayerRemoved() { return mNotifyPlayerRemoved ? mNotifyPlayerRemoved : (mNotifyPlayerRemoved = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxInteraction.NotifyPlayerRemoved")); }
			ScriptFunction CloseAllMoviePlayers() { return mCloseAllMoviePlayers ? mCloseAllMoviePlayers : (mCloseAllMoviePlayers = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxInteraction.CloseAllMoviePlayers")); }
		}
	}
	@property final auto ref UObject.Pointer VfTable_FCallbackEventDevice() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 108); }
final:
	GFxMoviePlayer GetFocusMovie(int ControllerId)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFocusMovie, params.ptr, cast(void*)0);
		return *cast(GFxMoviePlayer*)&params[4];
	}
	void NotifyGameSessionEnded()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyGameSessionEnded, cast(void*)0, cast(void*)0);
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
	void CloseAllMoviePlayers()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CloseAllMoviePlayers, cast(void*)0, cast(void*)0);
	}
}
