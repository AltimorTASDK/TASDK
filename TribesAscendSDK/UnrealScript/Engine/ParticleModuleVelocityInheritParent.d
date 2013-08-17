module UnrealScript.Engine.ParticleModuleVelocityInheritParent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ParticleModuleVelocityBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleVelocityInheritParent : ParticleModuleVelocityBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ParticleModuleVelocityInheritParent")()); }
	private static __gshared ParticleModuleVelocityInheritParent mDefaultProperties;
	@property final static ParticleModuleVelocityInheritParent DefaultProperties() { mixin(MGDPC!(ParticleModuleVelocityInheritParent, "ParticleModuleVelocityInheritParent Engine.Default__ParticleModuleVelocityInheritParent")()); }
	@property final auto ref DistributionVector.RawDistributionVector Scale() { mixin(MGPC!("DistributionVector.RawDistributionVector", 76)()); }
}
