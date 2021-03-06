﻿using System.Collections.Generic;
using System.Linq;
using UnityEngine;

public enum EnemySpawnerGroupEntranceEffect
{
    None,
    DarkenDirectionalLightAndBurstSpawn,
    BurstSpawn
}

public class EnemySpawnerGroup : MonoBehaviour
{
    public BoxCollider groupVolume;
    [SerializeField] private EnemySpawnerGroupEntranceEffect entranceEffect;

    // the distance a spawner needs to be from an enemy or the player to be chosen to spawn
    [SerializeField] private float safeDistance = 2.5f;


    //DarkenDirectionalLightAndBurstSpawnState public data
    [SerializeField] private float lightFadeOutTime = 0.5f;
    [SerializeField] private float lightFadeHoldTime = 1.0f;
    [SerializeField] private float lightFadeInTime = 5.0f;
    [SerializeField] private AudioClip lightFadeOutSound;
    [SerializeField] private AudioClip lightFadeInSound;

    //BurstSpawn
    [SerializeField] 
    [Range(0.0f,1.0f)]
    private float burstRatio = 1.0f;

    // If this is true the entrance effect and trigger will enable the first time the player
    // enters the volume
    [SerializeField] private bool autoTrigger = true;


    // public properties
    public int SpawnerCount => _spawners.Count;
    public bool IsRunningEntranceEffect { get; private set; }

    public bool CanSpawnEnemies { get; private set; } = false;

    public void Init(List<EnemySpawner> spawners)
    {
        // find all spawners inside our volume and cache them
        foreach (var spawner in spawners)
        {
            if (groupVolume.bounds.Contains(spawner.gameObject.transform.position))
            {
                _spawners.Add(spawner);
            }
        }
        if (_spawners.Count == 0)
        {
            Debug.LogWarning
                ("Spawn group found no spawners inside. Name of group owner is " + gameObject.transform.parent.gameObject.name);
        }
        ResetUnusedSpawners();
        //Debug.Log("number of spawners in group is" + spawners.Count);
    }

    public EnemySpawner GetRandomSpawner(bool distanceCheck = true)
    {
        if (!CanSpawnEnemies)
        {
            return null;
        }
        // TODO  when picking a spawner make sure it's not blocked by an enemy or the player
        if (_unusedSpawners.Count == 0)
        {
            ResetUnusedSpawners();
        }
        EnemySpawner spawner = null;
        if (distanceCheck)
        {
            var enemies = GameObject.FindGameObjectsWithTag("Enemy");
            int attemptCount = _unusedSpawners.Count;
            while (attemptCount >= 0)
            {
                spawner = _unusedSpawners.ToArray()[Random.Range(0, _unusedSpawners.Count - 1)];
                bool goodSpawn = true;
                foreach (var enemy in enemies)
                {
                    float distance = Vector3.Distance(enemy.transform.position, spawner.transform.position);
                    if (distance < safeDistance)
                    {
                        goodSpawn = false;
                    }
                }
                if (goodSpawn)
                {
                    _unusedSpawners.Remove(spawner);
                    return spawner;

                }
                attemptCount--;
            }
        }
        else
        {
            spawner = _unusedSpawners.ToArray()[Random.Range(0, _unusedSpawners.Count - 1)];
            _unusedSpawners.Remove(spawner);
            return spawner;
        }

        return null;
    }

    private void ResetUnusedSpawners()
    {
        _unusedSpawners.Clear();
        foreach (var itemToAdd in _spawners)
        {
            _unusedSpawners.Add(itemToAdd);
        }
    }

    public void ForceStartEntranceEffect()
    {
        if (!IsRunningEntranceEffect)
        {
            _hasStartedPlayingSpawnEntranceEffect = false;
            StartEntranceEffect();
        }
        else
        {
            Debug.LogWarning("Tried to force start an entrance effect while an entrance effect was already running. Cancelling..");
        }
    }

    private void StartEntranceEffect()
    {
        CanSpawnEnemies = true;
        if (!_hasStartedPlayingSpawnEntranceEffect)
        {
            _hasStartedPlayingSpawnEntranceEffect = true;
            switch (entranceEffect)
            {
                case EnemySpawnerGroupEntranceEffect.DarkenDirectionalLightAndBurstSpawn:
                    _darkenState = DarkenDirectionalLightAndBurstSpawnState.FadingOut;
                    _lightingFadeOutTimerCurrent = lightFadeOutTime;
                    _lightingFadeHoldTimerCurrent = lightFadeHoldTime;
                    _lightingFadeInTimerCurrent = lightFadeInTime;
                    _lightingHasSpawned = false;
                    if (lightFadeOutSound != null)
                    {
                        _darkenStateAudioSource.PlayOneShot(lightFadeOutSound);
                    }
                    break;
                case EnemySpawnerGroupEntranceEffect.BurstSpawn:

                    break;
                case EnemySpawnerGroupEntranceEffect.None:
                default:
                    break;
            }
            if (entranceEffect != EnemySpawnerGroupEntranceEffect.None)
            {
                IsRunningEntranceEffect = true;
            }
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if (!autoTrigger)
        {
            return;
        }
        if (other.gameObject != _player)
        {
            return;
        }
        StartEntranceEffect();
    }

    void Start()
    {
        var playerTest = FindObjectOfType<CyberSpaceFirstPerson>();
        if (playerTest == null)
        {
            Debug.LogError("Unable to get player ref");
        }
        else
        {
            _player = playerTest.gameObject;
        }
        _directionalLight = GameObject.FindGameObjectWithTag("ShadowCastingLight")?.GetComponent<Light>();
        //_directionalLight = FindObjectsOfType<Light>().Where(x => x.type == LightType.Directional).SingleOrDefault();
        if (_directionalLight == null)
        {
            //Debug.Log("can't find single directional light, either missing or more than one");
        }
        else
        {
            _originalDirectionalLightIntensity = _directionalLight.intensity;
        }
    }

    void Update()
    {
        void HandleDarkenDirectionalLightAndBurstSpawn()
        {
            switch (_darkenState)
            {
                case DarkenDirectionalLightAndBurstSpawnState.Armed:
                    break;
                case DarkenDirectionalLightAndBurstSpawnState.FadingOut:
                    _lightingFadeOutTimerCurrent -= Time.deltaTime;
                    _directionalLight.intensity =
                        Mathf.Lerp(0.0f, _originalDirectionalLightIntensity, _lightingFadeOutTimerCurrent / lightFadeOutTime);
                    if (_lightingFadeOutTimerCurrent <= 0)
                    {
                        _darkenState = DarkenDirectionalLightAndBurstSpawnState.FadeHold;
                    }
                    break;
                case DarkenDirectionalLightAndBurstSpawnState.FadeHold:
 
                    _lightingFadeHoldTimerCurrent -= Time.deltaTime;
                    if (_lightingFadeHoldTimerCurrent <= 0)
                    {
                        _darkenState = DarkenDirectionalLightAndBurstSpawnState.FadingIn;
                        if (lightFadeInSound != null)
                        {
                            _darkenStateAudioSource.PlayOneShot(lightFadeInSound);
                        }
                    }
                    break;
                case DarkenDirectionalLightAndBurstSpawnState.FadingIn:
                    if (!_lightingHasSpawned)
                    {
                        _lightingHasSpawned = true;
                        ResetUnusedSpawners();
                        foreach (var spawner in _unusedSpawners)
                        {
                            spawner.Spawn();
                        }
                    }
                    _lightingFadeInTimerCurrent -= Time.deltaTime;
                    _directionalLight.intensity =
                        Mathf.Lerp(_originalDirectionalLightIntensity, 0.0f, _lightingFadeInTimerCurrent / lightFadeInTime);
   
                    if (_lightingFadeInTimerCurrent <= 0)
                    {
                        _darkenState = DarkenDirectionalLightAndBurstSpawnState.Done;
                    }
                    break;
                case DarkenDirectionalLightAndBurstSpawnState.Done:
                    _hasCompletedPlayingSpawnEntranceEffect = true;
                    IsRunningEntranceEffect = false;
                    break;
            }
        };
        void HandleBurstSpawn()
        {
            
            ResetUnusedSpawners();
            int numToSpawn = (int)(_unusedSpawners.Count * burstRatio);
            foreach (var spawner in _unusedSpawners)
            {
                spawner.Spawn();
                numToSpawn--;
                if (numToSpawn < 0)
                {
                    break;
                }
            }
            _hasCompletedPlayingSpawnEntranceEffect = true;
            IsRunningEntranceEffect = false;
        };
        if (IsRunningEntranceEffect && !_hasCompletedPlayingSpawnEntranceEffect)
        {
            switch (entranceEffect)
            {
                case EnemySpawnerGroupEntranceEffect.DarkenDirectionalLightAndBurstSpawn:
                    HandleDarkenDirectionalLightAndBurstSpawn();
                    break;
                case EnemySpawnerGroupEntranceEffect.BurstSpawn:
                    HandleBurstSpawn();
                    break;
                case EnemySpawnerGroupEntranceEffect.None:
                default:
                    break;
            }
        }
    }

    private enum DarkenDirectionalLightAndBurstSpawnState
    {
        Armed,
        FadingOut,
        FadeHold,
        FadingIn,
        Done
    }

    private HashSet<EnemySpawner> _unusedSpawners = new HashSet<EnemySpawner>();
    private List<EnemySpawner> _spawners = new List<EnemySpawner>();
    private GameObject _player;
    private bool _hasStartedPlayingSpawnEntranceEffect = false;
    private bool _hasCompletedPlayingSpawnEntranceEffect = false;

    //DarkenDirectionalLightAndBurstSpawnState private data 
    private DarkenDirectionalLightAndBurstSpawnState _darkenState = DarkenDirectionalLightAndBurstSpawnState.Armed;
    private Light _directionalLight = null;
    private float _originalDirectionalLightIntensity = 0.0f;
    private float _lightingFadeOutTimerCurrent = 0.0f;
    private float _lightingFadeHoldTimerCurrent = 0.0f;
    private float _lightingFadeInTimerCurrent = 0.0f;
    private bool _lightingHasSpawned = false;
    private AudioSource _darkenStateAudioSource = new AudioSource();

}