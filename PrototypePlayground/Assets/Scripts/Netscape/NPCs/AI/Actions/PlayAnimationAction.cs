﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;


[CreateAssetMenu(menuName = "AI/Actions/PlayAnimation")]
public class PlayAnimationAction : AIAction
{
        public string animation;
        public bool lookAt;

        public override void Act(AIEntity controller)
        {
            PlayAnimation(controller);
        }

        private void PlayAnimation(AIEntity controller)
        {

            if(controller.EntityAnimator != null)
            {
                if (!controller.EntityAnimator.GetCurrentAnimatorStateInfo(0).IsName(animation))
                {
                    controller.Agent.SetDestination(controller.transform.position);
                    controller.EntityAnimator.Play(animation);
                }
            }
        }
}
