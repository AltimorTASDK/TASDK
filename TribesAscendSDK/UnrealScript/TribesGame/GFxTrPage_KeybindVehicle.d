module UnrealScript.TribesGame.GFxTrPage_KeybindVehicle;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrPage_KeybindAction;

extern(C++) interface GFxTrPage_KeybindVehicle : GFxTrPage_KeybindAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrPage_KeybindVehicle")); }
	private static __gshared GFxTrPage_KeybindVehicle mDefaultProperties;
	@property final static GFxTrPage_KeybindVehicle DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxTrPage_KeybindVehicle)("GFxTrPage_KeybindVehicle TribesGame.Default__GFxTrPage_KeybindVehicle")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mInitialize;
		public @property static final ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_KeybindVehicle.Initialize")); }
	}
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
}
