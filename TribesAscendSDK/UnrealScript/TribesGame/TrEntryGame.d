module UnrealScript.TribesGame.TrEntryGame;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTEntryGame;

extern(C++) interface TrEntryGame : UTEntryGame
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrEntryGame")); }
	private static __gshared TrEntryGame mDefaultProperties;
	@property final static TrEntryGame DefaultProperties() { mixin(MGDPC("TrEntryGame", "TrEntryGame TribesGame.Default__TrEntryGame")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSendMenuEngineLoaded;
			ScriptFunction mSetGameType;
			ScriptFunction mOnEngineHasLoaded;
		}
		public @property static final
		{
			ScriptFunction SendMenuEngineLoaded() { mixin(MGF("mSendMenuEngineLoaded", "Function TribesGame.TrEntryGame.SendMenuEngineLoaded")); }
			ScriptFunction SetGameType() { mixin(MGF("mSetGameType", "Function TribesGame.TrEntryGame.SetGameType")); }
			ScriptFunction OnEngineHasLoaded() { mixin(MGF("mOnEngineHasLoaded", "Function TribesGame.TrEntryGame.OnEngineHasLoaded")); }
		}
	}
final:
	void SendMenuEngineLoaded()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SendMenuEngineLoaded, cast(void*)0, cast(void*)0);
	}
	static ScriptClass SetGameType(ScriptString MapName, ScriptString Options, ScriptString Portal)
	{
		ubyte params[40];
		params[] = 0;
		*cast(ScriptString*)params.ptr = MapName;
		*cast(ScriptString*)&params[12] = Options;
		*cast(ScriptString*)&params[24] = Portal;
		StaticClass.ProcessEvent(Functions.SetGameType, params.ptr, cast(void*)0);
		return *cast(ScriptClass*)&params[36];
	}
	void OnEngineHasLoaded()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnEngineHasLoaded, cast(void*)0, cast(void*)0);
	}
}
