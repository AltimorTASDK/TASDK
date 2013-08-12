module UnrealScript.TribesGame.GFxTrPage_KeybindInterface;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrPage_KeybindAction;

extern(C++) interface GFxTrPage_KeybindInterface : GFxTrPage_KeybindAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrPage_KeybindInterface")); }
	private static __gshared GFxTrPage_KeybindInterface mDefaultProperties;
	@property final static GFxTrPage_KeybindInterface DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxTrPage_KeybindInterface)("GFxTrPage_KeybindInterface TribesGame.Default__GFxTrPage_KeybindInterface")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mInitialize;
		public @property static final ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_KeybindInterface.Initialize")); }
	}
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
}
