module UnrealScript.UDKBase.UDKGameViewportClient;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.GameViewportClient;

extern(C++) interface UDKGameViewportClient : GameViewportClient
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKGameViewportClient")()); }
	private static __gshared UDKGameViewportClient mDefaultProperties;
	@property final static UDKGameViewportClient DefaultProperties() { mixin(MGDPC!(UDKGameViewportClient, "UDKGameViewportClient UDKBase.Default__UDKGameViewportClient")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mLoadRandomLocalizedHintMessage;
		public @property static final ScriptFunction LoadRandomLocalizedHintMessage() { mixin(MGF!("mLoadRandomLocalizedHintMessage", "Function UDKBase.UDKGameViewportClient.LoadRandomLocalizedHintMessage")()); }
	}
	@property final auto ref ScriptString HintLocFileName() { mixin(MGPC!("ScriptString", 288)()); }
	final ScriptString LoadRandomLocalizedHintMessage(ScriptString Category1Name, ScriptString Category2Name)
	{
		ubyte params[36];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Category1Name;
		*cast(ScriptString*)&params[12] = Category2Name;
		(cast(ScriptObject)this).ProcessEvent(Functions.LoadRandomLocalizedHintMessage, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[24];
	}
}
