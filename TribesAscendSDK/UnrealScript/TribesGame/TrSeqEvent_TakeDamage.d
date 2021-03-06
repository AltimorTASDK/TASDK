module UnrealScript.TribesGame.TrSeqEvent_TakeDamage;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SeqEvent_TakeDamage;

extern(C++) interface TrSeqEvent_TakeDamage : SeqEvent_TakeDamage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrSeqEvent_TakeDamage")); }
	private static __gshared TrSeqEvent_TakeDamage mDefaultProperties;
	@property final static TrSeqEvent_TakeDamage DefaultProperties() { mixin(MGDPC("TrSeqEvent_TakeDamage", "TrSeqEvent_TakeDamage TribesGame.Default__TrSeqEvent_TakeDamage")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetObjClassVersion;
			ScriptFunction mHandleDamage;
		}
		public @property static final
		{
			ScriptFunction GetObjClassVersion() { mixin(MGF("mGetObjClassVersion", "Function TribesGame.TrSeqEvent_TakeDamage.GetObjClassVersion")); }
			ScriptFunction HandleDamage() { mixin(MGF("mHandleDamage", "Function TribesGame.TrSeqEvent_TakeDamage.HandleDamage")); }
		}
	}
final:
	static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void HandleDamage(Actor InOriginator, Actor InInstigator, ScriptClass inDamageType, int inAmount)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Actor*)params.ptr = InOriginator;
		*cast(Actor*)&params[4] = InInstigator;
		*cast(ScriptClass*)&params[8] = inDamageType;
		*cast(int*)&params[12] = inAmount;
		(cast(ScriptObject)this).ProcessEvent(Functions.HandleDamage, params.ptr, cast(void*)0);
	}
}
