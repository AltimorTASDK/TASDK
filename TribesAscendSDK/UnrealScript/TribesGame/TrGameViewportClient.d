module UnrealScript.TribesGame.TrGameViewportClient;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Canvas;
import UnrealScript.TribesGame.TrChatConsole;
import UnrealScript.UTGame.UTGameViewportClient;

extern(C++) interface TrGameViewportClient : UTGameViewportClient
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrGameViewportClient")()); }
	private static __gshared TrGameViewportClient mDefaultProperties;
	@property final static TrGameViewportClient DefaultProperties() { mixin(MGDPC!(TrGameViewportClient, "TrGameViewportClient TribesGame.Default__TrGameViewportClient")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInit;
			ScriptFunction mPostRender;
		}
		public @property static final
		{
			ScriptFunction Init() { mixin(MGF!("mInit", "Function TribesGame.TrGameViewportClient.Init")()); }
			ScriptFunction PostRender() { mixin(MGF!("mPostRender", "Function TribesGame.TrGameViewportClient.PostRender")()); }
		}
	}
	@property final auto ref TrChatConsole ChatConsole() { mixin(MGPC!(TrChatConsole, 408)()); }
final:
	bool Init(ref ScriptString OutError)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = OutError;
		(cast(ScriptObject)this).ProcessEvent(Functions.Init, params.ptr, cast(void*)0);
		*OutError = *cast(ScriptString*)params.ptr;
		return *cast(bool*)&params[12];
	}
	void PostRender(Canvas pCanvas)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostRender, params.ptr, cast(void*)0);
	}
}
