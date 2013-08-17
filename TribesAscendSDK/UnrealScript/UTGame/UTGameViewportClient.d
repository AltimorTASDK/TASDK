module UnrealScript.UTGame.UTGameViewportClient;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Canvas;
import UnrealScript.Engine.PlayerController;
import UnrealScript.UDKBase.UDKGameViewportClient;
import UnrealScript.Engine.Font;

extern(C++) interface UTGameViewportClient : UDKGameViewportClient
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTGameViewportClient")); }
	private static __gshared UTGameViewportClient mDefaultProperties;
	@property final static UTGameViewportClient DefaultProperties() { mixin(MGDPC("UTGameViewportClient", "UTGameViewportClient UTGame.Default__UTGameViewportClient")); }
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
			ScriptFunction PostRender() { mixin(MGF("mPostRender", "Function UTGame.UTGameViewportClient.PostRender")); }
			ScriptFunction DrawTransition() { mixin(MGF("mDrawTransition", "Function UTGame.UTGameViewportClient.DrawTransition")); }
			ScriptFunction RenderHeader() { mixin(MGF("mRenderHeader", "Function UTGame.UTGameViewportClient.RenderHeader")); }
			ScriptFunction UpdateActiveSplitscreenType() { mixin(MGF("mUpdateActiveSplitscreenType", "Function UTGame.UTGameViewportClient.UpdateActiveSplitscreenType")); }
			ScriptFunction SetProgressMessage() { mixin(MGF("mSetProgressMessage", "Function UTGame.UTGameViewportClient.SetProgressMessage")); }
			ScriptFunction NotifyConnectionError() { mixin(MGF("mNotifyConnectionError", "Function UTGame.UTGameViewportClient.NotifyConnectionError")); }
		}
	}
	@property final auto ref
	{
		ScriptString LevelActionMessages() { mixin(MGPC("ScriptString", 300)); }
		ScriptString ProgressMessageSceneClassName() { mixin(MGPC("ScriptString", 396)); }
		Font LoadingScreenHintMessageFont() { mixin(MGPC("Font", 392)); }
		Font LoadingScreenGameTypeNameFont() { mixin(MGPC("Font", 388)); }
		Font LoadingScreenMapNameFont() { mixin(MGPC("Font", 384)); }
		ScriptString UTFrontEndString() { mixin(MGPC("ScriptString", 372)); }
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
	void SetProgressMessage(PlayerController.EProgressMessageType MessageType, ScriptString Message, ScriptString* Title = null, bool* bIgnoreFutureNetworkMessages = null)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController.EProgressMessageType*)params.ptr = MessageType;
		*cast(ScriptString*)&params[4] = Message;
		if (Title !is null)
			*cast(ScriptString*)&params[16] = *Title;
		if (bIgnoreFutureNetworkMessages !is null)
			*cast(bool*)&params[28] = *bIgnoreFutureNetworkMessages;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetProgressMessage, params.ptr, cast(void*)0);
	}
	void NotifyConnectionError(ScriptString* Message = null, ScriptString* Title = null)
	{
		ubyte params[24];
		params[] = 0;
		if (Message !is null)
			*cast(ScriptString*)params.ptr = *Message;
		if (Title !is null)
			*cast(ScriptString*)&params[12] = *Title;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyConnectionError, params.ptr, cast(void*)0);
	}
}
