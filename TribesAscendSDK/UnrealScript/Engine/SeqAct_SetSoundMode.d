module UnrealScript.Engine.SeqAct_SetSoundMode;

import ScriptClasses;
import UnrealScript.Engine.SoundMode;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_SetSoundMode : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_SetSoundMode")); }
	private static __gshared SeqAct_SetSoundMode mDefaultProperties;
	@property final static SeqAct_SetSoundMode DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_SetSoundMode)("SeqAct_SetSoundMode Engine.Default__SeqAct_SetSoundMode")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mActivated;
			ScriptFunction mGetObjClassVersion;
		}
		public @property static final
		{
			ScriptFunction Activated() { return mActivated ? mActivated : (mActivated = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqAct_SetSoundMode.Activated")); }
			ScriptFunction GetObjClassVersion() { return mGetObjClassVersion ? mGetObjClassVersion : (mGetObjClassVersion = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqAct_SetSoundMode.GetObjClassVersion")); }
		}
	}
	@property final
	{
		// WARNING: Property 'SoundMode' has the same name as a defined type!
		bool bTopPriority() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x1) != 0; }
		bool bTopPriority(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x1; } return val; }
	}
final:
	void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Activated, cast(void*)0, cast(void*)0);
	}
	static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
