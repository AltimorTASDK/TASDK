module UnrealScript.UTGame.UTTeamStaticMesh;

import ScriptClasses;
import UnrealScript.Engine.StaticMeshActor;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.Material;

extern(C++) interface UTTeamStaticMesh : StaticMeshActor
{
	public @property final auto ref ScriptArray!(MaterialInterface) TeamMaterials() { return *cast(ScriptArray!(MaterialInterface)*)(cast(size_t)cast(void*)this + 484); }
	public @property final auto ref Material NeutralMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 496); }
	final void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49460], cast(void*)0, cast(void*)0);
	}
	final void SetTeamNum(ubyte NewTeam)
	{
		ubyte params[1];
		params[] = 0;
		params[0] = NewTeam;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49465], params.ptr, cast(void*)0);
	}
}
