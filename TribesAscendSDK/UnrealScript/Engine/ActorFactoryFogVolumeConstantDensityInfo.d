module UnrealScript.Engine.ActorFactoryFogVolumeConstantDensityInfo;

import UnrealScript.Engine.ActorFactory;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface ActorFactoryFogVolumeConstantDensityInfo : ActorFactory
{
public extern(D):
	@property final
	{
		@property final auto ref MaterialInterface SelectedMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 92); }
		bool bNothingSelected() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x1) != 0; }
		bool bNothingSelected(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x1; } return val; }
	}
}
