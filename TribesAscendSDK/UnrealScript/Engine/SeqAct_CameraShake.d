module UnrealScript.Engine.SeqAct_CameraShake;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.CameraShake;
import UnrealScript.Engine.Camera;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_CameraShake : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_CameraShake")); }
	private static __gshared SeqAct_CameraShake mDefaultProperties;
	@property final static SeqAct_CameraShake DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_CameraShake)("SeqAct_CameraShake Engine.Default__SeqAct_CameraShake")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { return mGetObjClassVersion ? mGetObjClassVersion : (mGetObjClassVersion = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqAct_CameraShake.GetObjClassVersion")); }
	}
	@property final
	{
		auto ref
		{
			Actor LocationActor() { return *cast(Actor*)(cast(size_t)cast(void*)this + 260); }
			CameraShake Shake() { return *cast(CameraShake*)(cast(size_t)cast(void*)this + 232); }
			float RadialShake_InnerRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
			float RadialShake_OuterRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
			float RadialShake_Falloff() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
			float ShakeScale() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
			Camera.ECameraAnimPlaySpace PlaySpace() { return *cast(Camera.ECameraAnimPlaySpace*)(cast(size_t)cast(void*)this + 256); }
		}
		bool bRadialShake() { return (*cast(uint*)(cast(size_t)cast(void*)this + 240) & 0x2) != 0; }
		bool bRadialShake(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 240) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 240) &= ~0x2; } return val; }
		bool bDoControllerVibration() { return (*cast(uint*)(cast(size_t)cast(void*)this + 240) & 0x1) != 0; }
		bool bDoControllerVibration(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 240) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 240) &= ~0x1; } return val; }
		bool bOrientTowardRadialEpicenter() { return (*cast(uint*)(cast(size_t)cast(void*)this + 240) & 0x4) != 0; }
		bool bOrientTowardRadialEpicenter(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 240) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 240) &= ~0x4; } return val; }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
