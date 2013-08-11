module UnrealScript.Engine.DOFAndBloomEffect;

import UnrealScript.Engine.DOFEffect;
import UnrealScript.Core.UObject;

extern(C++) interface DOFAndBloomEffect : DOFEffect
{
public extern(D):
	@property final
	{
		auto ref
		{
			float BlurBloomKernelSize() { return *cast(float*)(cast(size_t)cast(void*)this + 168); }
			float SceneMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
			float BloomScreenBlendThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 160); }
			UObject.Color BloomTint() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 156); }
			float BloomThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 152); }
			float BloomScale() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
		}
		bool bEnableDepthOfFieldHQ() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x4) != 0; }
		bool bEnableDepthOfFieldHQ(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x4; } return val; }
		bool bEnableReferenceDOF() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x2) != 0; }
		bool bEnableReferenceDOF(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x2; } return val; }
		bool bEnableSeparateBloom() { return (*cast(uint*)(cast(size_t)cast(void*)this + 172) & 0x1) != 0; }
		bool bEnableSeparateBloom(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 172) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 172) &= ~0x1; } return val; }
	}
}
