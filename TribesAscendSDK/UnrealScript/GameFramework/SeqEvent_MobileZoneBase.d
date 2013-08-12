module UnrealScript.GameFramework.SeqEvent_MobileZoneBase;

import ScriptClasses;
import UnrealScript.GameFramework.SeqEvent_MobileBase;
import UnrealScript.GameFramework.MobilePlayerInput;

extern(C++) interface SeqEvent_MobileZoneBase : SeqEvent_MobileBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.SeqEvent_MobileZoneBase")); }
	private static __gshared SeqEvent_MobileZoneBase mDefaultProperties;
	@property final static SeqEvent_MobileZoneBase DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqEvent_MobileZoneBase)("SeqEvent_MobileZoneBase GameFramework.Default__SeqEvent_MobileZoneBase")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mAddToMobileInput;
		public @property static final ScriptFunction AddToMobileInput() { return mAddToMobileInput ? mAddToMobileInput : (mAddToMobileInput = ScriptObject.Find!(ScriptFunction)("Function GameFramework.SeqEvent_MobileZoneBase.AddToMobileInput")); }
	}
	@property final auto ref ScriptString TargetZoneName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 256); }
	final void AddToMobileInput(MobilePlayerInput MPI)
	{
		ubyte params[4];
		params[] = 0;
		*cast(MobilePlayerInput*)params.ptr = MPI;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddToMobileInput, params.ptr, cast(void*)0);
	}
}
