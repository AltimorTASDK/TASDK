module UnrealScript.UTGame.UTGameViewportClient;

import ScriptClasses;
import UnrealScript.Engine.Canvas;
import UnrealScript.Engine.PlayerController;
import UnrealScript.UDKBase.UDKGameViewportClient;
import UnrealScript.Engine.Font;

extern(C++) interface UTGameViewportClient : UDKGameViewportClient
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTGameViewportClient")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostRender;
			ScriptFunction mDrawTransition;
			ScriptFunction mRenderHeader;
			ScriptFunction mUpdateActiveSplitscreenType;
			ScriptFunction mSetProgressMessage;
			ScriptFunction mNotifyConnectionError;
		}
		public @property static final
		{
			ScriptFunction PostRender() { return mPostRender ? mPostRender : (mPostRender = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameViewportClient.PostRender")); }
			ScriptFunction DrawTransition() { return mDrawTransition ? mDrawTransition : (mDrawTransition = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameViewportClient.DrawTransition")); }
			ScriptFunction RenderHeader() { return mRenderHeader ? mRenderHeader : (mRenderHeader = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameViewportClient.RenderHeader")); }
			ScriptFunction UpdateActiveSplitscreenType() { return mUpdateActiveSplitscreenType ? mUpdateActiveSplitscreenType : (mUpdateActiveSplitscreenType = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameViewportClient.UpdateActiveSplitscreenType")); }
			ScriptFunction SetProgressMessage() { return mSetProgressMessage ? mSetProgressMessage : (mSetProgressMessage = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameViewportClient.SetProgressMessage")); }
			ScriptFunction NotifyConnectionError() { return mNotifyConnectionError ? mNotifyConnectionError : (mNotifyConnectionError = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTGameViewportClient.NotifyConnectionError")); }
		}
	}
	@property final auto ref
	{
		ScriptString LevelActionMessages() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 300); }
		ScriptString ProgressMessageSceneClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 396); }
		Font LoadingScreenHintMessageFont() { return *cast(Font*)(cast(size_t)cast(void*)this + 392); }
		Font LoadingScreenGameTypeNameFont() { return *cast(Font*)(cast(size_t)cast(void*)this + 388); }
		Font LoadingScreenMapNameFont() { return *cast(Font*)(cast(size_t)cast(void*)this + 384); }
		ScriptString UTFrontEndString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 372); }
	}
final:
	void PostRender(Canvas pCanvas)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostRender, params.ptr, cast(void*)0);
	}
	void DrawTransition(Canvas pCanvas)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		(cast(ScriptObject)this).ProcessEvent(Functions.DrawTransition, params.ptr, cast(void*)0);
	}
	void RenderHeader(Canvas pCanvas)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		(cast(ScriptObject)this).ProcessEvent(Functions.RenderHeader, params.ptr, cast(void*)0);
	}
	void UpdateActiveSplitscreenType()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateActiveSplitscreenType, cast(void*)0, cast(void*)0);
	}
	void SetProgressMessage(PlayerController.EProgressMessageType MessageType, ScriptString Message, ScriptString Title, bool bIgnoreFutureNetworkMessages)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController.EProgressMessageType*)params.ptr = MessageType;
		*cast(ScriptString*)&params[4] = Message;
		*cast(ScriptString*)&params[16] = Title;
		*cast(bool*)&params[28] = bIgnoreFutureNetworkMessages;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetProgressMessage, params.ptr, cast(void*)0);
	}
	void NotifyConnectionError(ScriptString Message, ScriptString Title)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Message;
		*cast(ScriptString*)&params[12] = Title;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyConnectionError, params.ptr, cast(void*)0);
	}
}
