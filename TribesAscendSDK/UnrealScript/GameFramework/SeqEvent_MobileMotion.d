module UnrealScript.GameFramework.SeqEvent_MobileMotion;

import ScriptClasses;
import UnrealScript.GameFramework.SeqEvent_MobileBase;

extern(C++) interface SeqEvent_MobileMotion : SeqEvent_MobileBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.SeqEvent_MobileMotion")); }
	private static __gshared SeqEvent_MobileMotion mDefaultProperties;
	@property final static SeqEvent_MobileMotion DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqEvent_MobileMotion)("SeqEvent_MobileMotion GameFramework.Default__SeqEvent_MobileMotion")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { return mGetObjClassVersion ? mGetObjClassVersion : (mGetObjClassVersion = ScriptObject.Find!(ScriptFunction)("Function GameFramework.SeqEvent_MobileMotion.GetObjClassVersion")); }
	}
	@property final auto ref
	{
		float DeltaYaw() { return *cast(float*)(cast(size_t)cast(void*)this + 276); }
		float DeltaPitch() { return *cast(float*)(cast(size_t)cast(void*)this + 272); }
		float DeltaRoll() { return *cast(float*)(cast(size_t)cast(void*)this + 268); }
		float Yaw() { return *cast(float*)(cast(size_t)cast(void*)this + 264); }
		float Pitch() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
		float Roll() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
