module UnrealScript.Engine.SeqAct_SetVelocity;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_SetVelocity : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_SetVelocity")); }
	private static __gshared SeqAct_SetVelocity mDefaultProperties;
	@property final static SeqAct_SetVelocity DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_SetVelocity)("SeqAct_SetVelocity Engine.Default__SeqAct_SetVelocity")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { return mGetObjClassVersion ? mGetObjClassVersion : (mGetObjClassVersion = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqAct_SetVelocity.GetObjClassVersion")); }
	}
	@property final
	{
		auto ref
		{
			float VelocityMag() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
			Vector VelocityDir() { return *cast(Vector*)(cast(size_t)cast(void*)this + 232); }
		}
		bool bVelocityRelativeToActorRotation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 248) & 0x1) != 0; }
		bool bVelocityRelativeToActorRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 248) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 248) &= ~0x1; } return val; }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
