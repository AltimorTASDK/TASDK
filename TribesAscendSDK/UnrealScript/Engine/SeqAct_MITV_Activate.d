module UnrealScript.Engine.SeqAct_MITV_Activate;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_MITV_Activate : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_MITV_Activate")); }
	private static __gshared SeqAct_MITV_Activate mDefaultProperties;
	@property final static SeqAct_MITV_Activate DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_MITV_Activate)("SeqAct_MITV_Activate Engine.Default__SeqAct_MITV_Activate")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetObjClassVersion;
			ScriptFunction mActivated;
		}
		public @property static final
		{
			ScriptFunction GetObjClassVersion() { return mGetObjClassVersion ? mGetObjClassVersion : (mGetObjClassVersion = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqAct_MITV_Activate.GetObjClassVersion")); }
			ScriptFunction Activated() { return mActivated ? mActivated : (mActivated = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqAct_MITV_Activate.Activated")); }
		}
	}
	@property final auto ref float DurationOfMITV() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
final:
	static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Activated, cast(void*)0, cast(void*)0);
	}
}
