module UnrealScript.TribesGame.GFxTrPage_KeybindSpectator;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrPage;

extern(C++) interface GFxTrPage_KeybindSpectator : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrPage_KeybindSpectator")); }
	private static __gshared GFxTrPage_KeybindSpectator mDefaultProperties;
	@property final static GFxTrPage_KeybindSpectator DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxTrPage_KeybindSpectator)("GFxTrPage_KeybindSpectator TribesGame.Default__GFxTrPage_KeybindSpectator")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mInitialize;
		public @property static final ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_KeybindSpectator.Initialize")); }
	}
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
}
