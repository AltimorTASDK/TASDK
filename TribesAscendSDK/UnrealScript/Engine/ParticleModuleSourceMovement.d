module UnrealScript.Engine.ParticleModuleSourceMovement;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleLocationBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleSourceMovement : ParticleModuleLocationBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.ParticleModuleSourceMovement")); }
	private static __gshared ParticleModuleSourceMovement mDefaultProperties;
	@property final static ParticleModuleSourceMovement DefaultProperties() { mixin(MGDPC("ParticleModuleSourceMovement", "ParticleModuleSourceMovement Engine.Default__ParticleModuleSourceMovement")); }
	@property final auto ref DistributionVector.RawDistributionVector SourceMovementScale() { mixin(MGPC("DistributionVector.RawDistributionVector", 72)); }
}
