module UnrealScript.Engine.SkelControlTrail;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SkelControlBase;

extern(C++) interface SkelControlTrail : SkelControlBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SkelControlTrail")); }
	private static __gshared SkelControlTrail mDefaultProperties;
	@property final static SkelControlTrail DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SkelControlTrail)("SkelControlTrail Engine.Default__SkelControlTrail")); }
	@property final
	{
		auto ref
		{
			ScriptArray!(Vector) TrailBoneLocations() { return *cast(ScriptArray!(Vector)*)(cast(size_t)cast(void*)this + 224); }
			UObject.Matrix OldLocalToWorld() { return *cast(UObject.Matrix*)(cast(size_t)cast(void*)this + 240); }
			float ThisTimstep() { return *cast(float*)(cast(size_t)cast(void*)this + 220); }
			Vector FakeVelocity() { return *cast(Vector*)(cast(size_t)cast(void*)this + 208); }
			float StretchLimit() { return *cast(float*)(cast(size_t)cast(void*)this + 204); }
			float TrailRelaxation() { return *cast(float*)(cast(size_t)cast(void*)this + 200); }
			UObject.EAxis ChainBoneAxis() { return *cast(UObject.EAxis*)(cast(size_t)cast(void*)this + 192); }
			int ChainLength() { return *cast(int*)(cast(size_t)cast(void*)this + 188); }
		}
		bool bHadValidStrength() { return (*cast(uint*)(cast(size_t)cast(void*)this + 196) & 0x8) != 0; }
		bool bHadValidStrength(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 196) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 196) &= ~0x8; } return val; }
		bool bActorSpaceFakeVel() { return (*cast(uint*)(cast(size_t)cast(void*)this + 196) & 0x4) != 0; }
		bool bActorSpaceFakeVel(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 196) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 196) &= ~0x4; } return val; }
		bool bLimitStretch() { return (*cast(uint*)(cast(size_t)cast(void*)this + 196) & 0x2) != 0; }
		bool bLimitStretch(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 196) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 196) &= ~0x2; } return val; }
		bool bInvertChainBoneAxis() { return (*cast(uint*)(cast(size_t)cast(void*)this + 196) & 0x1) != 0; }
		bool bInvertChainBoneAxis(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 196) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 196) &= ~0x1; } return val; }
	}
}
