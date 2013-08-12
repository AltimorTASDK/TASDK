module UnrealScript.UTGame.UTEntryHUD;

import ScriptClasses;
import UnrealScript.Engine.HUD;

extern(C++) interface UTEntryHUD : HUD
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTEntryHUD")); }
	private static __gshared UTEntryHUD mDefaultProperties;
	@property final static UTEntryHUD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTEntryHUD)("UTEntryHUD UTGame.Default__UTEntryHUD")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mPostRender;
		public @property static final ScriptFunction PostRender() { return mPostRender ? mPostRender : (mPostRender = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTEntryHUD.PostRender")); }
	}
	final void PostRender()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostRender, cast(void*)0, cast(void*)0);
	}
}
