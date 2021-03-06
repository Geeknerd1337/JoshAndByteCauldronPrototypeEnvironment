﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;


/// <summary>
/// This is the base class that controls the states of our AI Entityies in game, this contains multiple things that help track stats, stats, and various references.
/// </summary>
public class AIEntity : MonoBehaviour
{

    #region Private enemy info
    /// <summary>
    /// A reference to the enemy stats class.
    /// </summary>
    [SerializeField]
    private EnemyStats enemyStats;
    /// <summary>
    /// The 'eyes' of an enemy. Used for raycasts determining if an AI can 'see' a player
    /// </summary>
    [SerializeField]
    private Transform eyes;
    /// <summary>
    /// A target transform that may serve many purposes for various states in the AI. This can be used to chase the player, chase another enemy, or aim at a target or move to another particular target.
    /// </summary>
    private Transform currentTarget;
    /// <summary>
    /// Reference to the transform of the player
    /// </summary>
    private Transform player;
    /// <summary>
    /// Some AI may have weapons that act indepdently of their own animations or bodies. For instance, the Viroid cannon has behavior seperate from the viroid that must run concurrently. 
    /// So AI can have weapons that perform various tasks. 
    /// </summary>
    private AIWeapon weapon;
    #endregion

    /// <summary>
    /// Current state of the AI
    /// </summary>
    [Header("Enemy Information")]
    public AIState currentState;
    /// <summary>
    /// The default state of the AI, this is what the code uses to essentially prevent a state from moving on
    /// </summary>
    public AIState remainState;
    /// <summary>
    /// Reference to the EnemyStats class
    /// </summary>
    public EnemyStats EnemyStats { get { return enemyStats; } }
    /// <summary>
    /// Public reference to the eyes.
    /// </summary>
    public Transform Eyes { get { return eyes; } }
    /// <summary>
    /// Public reference to the current target.
    /// </summary>
    public Transform CurrentTarget { get { return currentTarget; }
                                   set { currentTarget = value; }
    }
    /// <summary>
    /// Public reference to the player's transform.
    /// </summary>
    public Transform Player { get { return player; } }
    public AIWeapon Weapon { get { return weapon; } }
   

    /// <summary>
    /// AI may sometimes occasionally require waypoints. This can be used to either create a patrol pattern or give an AI random points to choose from in a given area for fleeing, or taking cover.
    /// TODO: COnvert this to a series of waypoint lists so that we can define different kinds of waypoints like cover, flanking, or what have you. 
    /// Just a note things like flanking could be done by finding the nearest way point to the players left or right, or behind the player, or behind cover. AI may need to be written more complexly, which means
    /// enemies will take longer to make, but will result in smarter enemies.
    /// </summary>
    [Header("Waypoints")]
    [SerializeField]
    private List<Transform> waypoints;
    /// <summary>
    /// Public reference to AI waypoints
    /// </summary>
    public List<Transform> AIWaypoints
    {
        get { return waypoints; }
        set { waypoints = value; }
    }
    public int nextWaypoint;


    /*
     * 
     * 
     *TODO: Make this not suck, this should probably be a series of behaviors similar to unitys animation parameter system rather than built in variables, 
     * Josh needs to write a new system and make these.
     *
     * 
     */
    [Header("Action Variables")]
    private float fireTimer = 0f;
    public float FireTimer { get { return fireTimer; } set { fireTimer = value; } }
    private float strafeTimer = 0f;
    public float StrafeTimer { get { return strafeTimer; } set { strafeTimer = value; } }
    [SerializeField]
    private int strafeMod = 1;
    public int StrafeMod { get { return strafeMod; } set { strafeMod = value; } }
    private float stoppingDistance;
    public float StoppingDistance { get { return stoppingDistance; } set { stoppingDistance = value; } }
    public Vector3 fleePoint;

    /// <summary>
    /// Reference to the entity's animator
    /// </summary>
    [Header("Utility")]
    public Animator EntityAnimator;
    
    

    #region Private members
    /// <summary>
    /// Referencew to the enemies nav mesh agent.
    /// </summary>
    private NavMeshAgent navMeshAgent;
    /// <summary>
    /// Public reference to the enemies nav mesh agent
    /// </summary>
    public NavMeshAgent Agent
    {
        get { return navMeshAgent; }
    }
    /// <summary>
    /// A boolean showing whether or not the AI is activated
    /// </summary>
    private bool aiActive;
    #endregion


    
    private void Start()
    {
        //Get the nav mesh agent
        navMeshAgent = GetComponent<NavMeshAgent>();
        //Set up the AI
        SetUpAI(true);
    }

    private void Update()
    {
        RunAI();
    }

    /// <summary>
    /// Updates the current state of the AI if it is active
    /// </summary>
    private void RunAI()
    {
        if (!aiActive)
        {
            return;
        }
        else
        {
            currentState.UpdateState(this);
            
        }
    }

    /// <summary>
    /// Sets up the AI if it is active
    /// </summary>
    /// <param name="activateAI">Whether or not the AI is active</param>
    public void SetUpAI(bool activateAI)
    {
        aiActive = activateAI;
        //Cache a reference to the player (TODO: Move to level manager singleton for performance)
        player = FindObjectOfType<CyberSpaceFirstPerson>().transform;
        //Get the weapon if one exists for the enemy
        weapon = GetComponent<AIWeapon>();
        if (weapon == null)
        {
            weapon = GetComponentInChildren<AIWeapon>();
        }
        //Set the strafe mod to a random value
        StrafeMod = Random.Range(-1, 1);
        while(StrafeMod == 0)
        {
            StrafeMod = Random.Range(-1, 1);
        }
        //Set the stopping distance for the enemy
        StoppingDistance = Random.Range(enemyStats.stoppingDistance.x, enemyStats.stoppingDistance.y);
        

        if (aiActive)
        {
            navMeshAgent.enabled = true;
            navMeshAgent.speed = enemyStats.moveSpeed;
        }
        else
        {
            navMeshAgent.enabled = false;
        }
    }


    private void OnDrawGizmos()
    {
        if(currentState != null)
        {
            Gizmos.color = currentState.sceneGizmoColor;
            Gizmos.DrawWireSphere(transform.position, 1f);
        }
    }

    /// <summary>
    /// Transitions from the current state to the next state
    /// </summary>
    /// <param name="nextState">The state we are moving to</param>
    public void TransitionToState(AIState nextState)
    {
        if (nextState != remainState)
        {
            currentState = nextState;
            //This is a function which resets things like fleepoints that need to be generated once per action, but only once
            //Effectively acts as a "on state transition" event
            ResetAIData();
        }
    }

    /// <summary>
    /// Gets a flee point for the AI.
    /// TODO: PLEASE DEPRECATE 
    /// </summary>
    /// <param name="radius"></param>
    /// <returns></returns>
    public Vector3 GetFleePoint(float radius)
    {
        if (fleePoint == Vector3.zero)
        {
            float dist = 0;
            Vector3 randomDirection = Vector3.zero;
            while (dist < radius * 0.75f)
            {
                randomDirection = Random.insideUnitSphere * radius;
                dist = Vector3.Distance(Vector3.zero, randomDirection);

            }

            randomDirection += transform.position;
            NavMeshHit hit;
            Vector3 finalPosition = Vector3.zero;
            if (NavMesh.SamplePosition(randomDirection, out hit, radius, 1))
            {
                finalPosition = hit.position;
            }
            fleePoint = finalPosition;
            
        }
        return fleePoint;
    }

    void ResetAIData()
    {
        fleePoint = Vector3.zero;
    }
}
