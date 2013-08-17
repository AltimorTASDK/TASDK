module UnrealScript.TribesGame.TrDaDCore_BE;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDaDCore;

extern(C++) interface TrDaDCore_BE : TrDaDCore
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDaDCore_BE")); }
	private static __gshared TrDaDCore_BE mDefaultProperties;
	@property final static TrDaDCore_BE DefaultProperties() { mixin(MGDPC("TrDaDCore_BE", "TrDaDCore_BE TribesGame.Default__TrDaDCore_BE")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mPostBeginPlay;
		public @property static final ScriptFunction PostBeginPlay() { mixin(MGF("mPostBeginPlay", "Function TribesGame.TrDaDCore_BE.PostBeginPlay")); }
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
}
