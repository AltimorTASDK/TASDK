module UnrealScript.UDKBase.UDKGameViewportClient;

import ScriptClasses;
import UnrealScript.Engine.GameViewportClient;

extern(C++) interface UDKGameViewportClient : GameViewportClient
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKGameViewportClient")); }
	private static __gshared UDKGameViewportClient mDefaultProperties;
	@property final static UDKGameViewportClient DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UDKGameViewportClient)("UDKGameViewportClient UDKBase.Default__UDKGameViewportClient")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mLoadRandomLocalizedHintMessage;
		public @property static final ScriptFunction LoadRandomLocalizedHintMessage() { return mLoadRandomLocalizedHintMessage ? mLoadRandomLocalizedHintMessage : (mLoadRandomLocalizedHintMessage = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKGameViewportClient.LoadRandomLocalizedHintMessage")); }
	}
	@property final auto ref ScriptString HintLocFileName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 288); }
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
