module UnrealScript.Engine.SeqAct_ProjectileFactory;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_ActorFactory;
import UnrealScript.Engine.ParticleSystem;

extern(C++) interface SeqAct_ProjectileFactory : SeqAct_ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_ProjectileFactory")()); }
	private static __gshared SeqAct_ProjectileFactory mDefaultProperties;
	@property final static SeqAct_ProjectileFactory DefaultProperties() { mixin(MGDPC!(SeqAct_ProjectileFactory, "SeqAct_ProjectileFactory Engine.Default__SeqAct_ProjectileFactory")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { mixin(MGF!("mGetObjClassVersion", "Function Engine.SeqAct_ProjectileFactory.GetObjClassVersion")()); }
	}
	@property final auto ref
	{
		ScriptName BoneName() { mixin(MGPC!("ScriptName", 328)()); }
		ScriptName SocketName() { mixin(MGPC!("ScriptName", 320)()); }
		ParticleSystem PSTemplate() { mixin(MGPC!("ParticleSystem", 316)()); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
