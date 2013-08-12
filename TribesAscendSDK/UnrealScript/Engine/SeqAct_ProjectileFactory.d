module UnrealScript.Engine.SeqAct_ProjectileFactory;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_ActorFactory;
import UnrealScript.Engine.ParticleSystem;

extern(C++) interface SeqAct_ProjectileFactory : SeqAct_ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_ProjectileFactory")); }
	private static __gshared SeqAct_ProjectileFactory mDefaultProperties;
	@property final static SeqAct_ProjectileFactory DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_ProjectileFactory)("SeqAct_ProjectileFactory Engine.Default__SeqAct_ProjectileFactory")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { return mGetObjClassVersion ? mGetObjClassVersion : (mGetObjClassVersion = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqAct_ProjectileFactory.GetObjClassVersion")); }
	}
	@property final auto ref
	{
		ScriptName BoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 328); }
		ScriptName SocketName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 320); }
		ParticleSystem PSTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 316); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
