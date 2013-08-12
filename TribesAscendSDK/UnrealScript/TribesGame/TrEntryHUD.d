module UnrealScript.TribesGame.TrEntryHUD;

import ScriptClasses;
import UnrealScript.Engine.HUD;

extern(C++) interface TrEntryHUD : HUD
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrEntryHUD")); }
	private static __gshared TrEntryHUD mDefaultProperties;
	@property final static TrEntryHUD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrEntryHUD)("TrEntryHUD TribesGame.Default__TrEntryHUD")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mCreateMainMenu;
			ScriptFunction mPostBeginPlay;
		}
		public @property static final
		{
			ScriptFunction CreateMainMenu() { return mCreateMainMenu ? mCreateMainMenu : (mCreateMainMenu = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEntryHUD.CreateMainMenu")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEntryHUD.PostBeginPlay")); }
		}
	}
final:
	void CreateMainMenu()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateMainMenu, cast(void*)0, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
}
