module UnrealScript.UTGame.UTTeamStaticMesh;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.StaticMeshActor;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.Material;

extern(C++) interface UTTeamStaticMesh : StaticMeshActor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTTeamStaticMesh")()); }
	private static __gshared UTTeamStaticMesh mDefaultProperties;
	@property final static UTTeamStaticMesh DefaultProperties() { mixin(MGDPC!(UTTeamStaticMesh, "UTTeamStaticMesh UTGame.Default__UTTeamStaticMesh")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPreBeginPlay;
			ScriptFunction mSetTeamNum;
		}
		public @property static final
		{
			ScriptFunction PreBeginPlay() { mixin(MGF!("mPreBeginPlay", "Function UTGame.UTTeamStaticMesh.PreBeginPlay")()); }
			ScriptFunction SetTeamNum() { mixin(MGF!("mSetTeamNum", "Function UTGame.UTTeamStaticMesh.SetTeamNum")()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(MaterialInterface) TeamMaterials() { mixin(MGPC!("ScriptArray!(MaterialInterface)", 484)()); }
		Material NeutralMaterial() { mixin(MGPC!("Material", 496)()); }
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
