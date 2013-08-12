module UnrealScript.Engine.SeqAct_GetLocationAndRotation;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_GetLocationAndRotation : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_GetLocationAndRotation")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { return mGetObjClassVersion ? mGetObjClassVersion : (mGetObjClassVersion = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqAct_GetLocationAndRotation.GetObjClassVersion")); }
	}
	@property final auto ref
	{
		ScriptName SocketOrBoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 268); }
		Vector Rotation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 256); }
		Vector RotationVector() { return *cast(Vector*)(cast(size_t)cast(void*)this + 244); }
		Vector Location() { return *cast(Vector*)(cast(size_t)cast(void*)this + 232); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
