module UnrealScript.UTGame.UTTeamStaticMesh;

import ScriptClasses;
import UnrealScript.Engine.StaticMeshActor;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.Material;

extern(C++) interface UTTeamStaticMesh : StaticMeshActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTTeamStaticMesh")); }
	private static __gshared UTTeamStaticMesh mDefaultProperties;
	@property final static UTTeamStaticMesh DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTTeamStaticMesh)("UTTeamStaticMesh UTGame.Default__UTTeamStaticMesh")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPreBeginPlay;
			ScriptFunction mSetTeamNum;
		}
		public @property static final
		{
			ScriptFunction PreBeginPlay() { return mPreBeginPlay ? mPreBeginPlay : (mPreBeginPlay = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamStaticMesh.PreBeginPlay")); }
			ScriptFunction SetTeamNum() { return mSetTeamNum ? mSetTeamNum : (mSetTeamNum = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTTeamStaticMesh.SetTeamNum")); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(MaterialInterface) TeamMaterials() { return *cast(ScriptArray!(MaterialInterface)*)(cast(size_t)cast(void*)this + 484); }
		Material NeutralMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 496); }
	}
final:
	void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PreBeginPlay, cast(void*)0, cast(void*)0);
	}
	void SetTeamNum(ubyte NewTeam)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = NewTeam;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetTeamNum, params.ptr, cast(void*)0);
	}
}
