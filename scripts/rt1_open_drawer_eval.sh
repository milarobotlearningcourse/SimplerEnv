export MS2_ASSET_DIR=./ManiSkill2_real2sim/data

ckpt_path=./checkpoints/xid77467904_000400120/

gpu_id=0

declare -a ckpt_paths=(
"./checkpoints/xid77467904_000400120/"
"./checkpoints/rt1poor_xid77467904_000058240/"
"./checkpoints/rt_1_x_tf_trained_for_002272480_step/"
)

declare -a env_names=(
OpenTopDrawerCustomInScene-v0
OpenMiddleDrawerCustomInScene-v0 
OpenBottomDrawerCustomInScene-v0
CloseTopDrawerCustomInScene-v0
CloseMiddleDrawerCustomInScene-v0 
CloseBottomDrawerCustomInScene-v0
)

EvalSim() {
  echo ${ckpt_path} ${env_name}
python real2sim/main_inference.py --policy-model rt1 --ckpt-path ${ckpt_path} \
  --robot google_robot_static --gpu-id ${gpu_id} \
  --control-freq 3 --sim-freq 513 --max-episode-steps 113 \
  --env-name ${env_name} --scene-name frl_apartment_stage_simple \
  --robot-init-x 0.65 0.85 5 --robot-init-y -0.2 0.2 5 \
  --robot-init-rot-quat-center 0 0 0 1 --robot-init-rot-rpy-range 0 0 1 0 0 1 0.0 0.0 1 \
  --obj-init-x-range 0 0 1 --obj-init-y-range 0 0 1

# python real2sim/main_inference.py --policy-model rt1 --ckpt-path ${ckpt_path} \
#   --robot google_robot_static --gpu-id ${gpu_id} \
#   --control-freq 3 --sim-freq 513 --max-episode-steps 113 \
#   --env-name ${env_name} --scene-name frl_apartment_stage_simple \
#   --robot-init-x 0.65 0.85 5 --robot-init-y -0.2 0.2 5 \
#   --robot-init-rot-quat-center 0 0 0 1 --robot-init-rot-rpy-range 0 0 1 0 0 1 0.0 0.0 1 \
#   --obj-init-x-range 0 0 1 --obj-init-y-range 0 0 1 \
#   --additional-env-build-kwargs shader_dir=rt
}

EvalOverlay() {
# A0
python real2sim/main_inference.py --policy-model rt1 --ckpt-path ${ckpt_path} \
  --robot google_robot_static --gpu-id ${gpu_id} \
  --control-freq 3 --sim-freq 513 --max-episode-steps 113 \
  --env-name ${env_name} --scene-name frl_apartment_stage_simple \
  --robot-init-x 0.644 0.644 1 --robot-init-y -0.179 -0.179 1 \
  --robot-init-rot-quat-center 0 0 0 1 --robot-init-rot-rpy-range 0 0 1 0 0 1 -0.03 -0.03 1 \
  --obj-init-x-range 0 0 1 --obj-init-y-range 0 0 1 \
  --rgb-overlay-path ./ManiSkill2_real2sim/data/real_impainting/open_drawer_a0.png

# A1
python real2sim/main_inference.py --policy-model rt1 --ckpt-path ${ckpt_path} \
  --robot google_robot_static --gpu-id ${gpu_id} \
  --control-freq 3 --sim-freq 513 --max-episode-steps 113 \
  --env-name ${env_name} --scene-name frl_apartment_stage_simple \
  --robot-init-x 0.765 0.765 1 --robot-init-y -0.182 -0.182 1 \
  --robot-init-rot-quat-center 0 0 0 1 --robot-init-rot-rpy-range 0 0 1 0 0 1 -0.02 -0.02 1 \
  --obj-init-x-range 0 0 1 --obj-init-y-range 0 0 1 \
  --rgb-overlay-path ./ManiSkill2_real2sim/data/real_impainting/open_drawer_a1.png

# A2
python real2sim/main_inference.py --policy-model rt1 --ckpt-path ${ckpt_path} \
  --robot google_robot_static --gpu-id ${gpu_id} \
  --control-freq 3 --sim-freq 513 --max-episode-steps 113 \
  --env-name ${env_name} --scene-name frl_apartment_stage_simple \
  --robot-init-x 0.889 0.889 1 --robot-init-y -0.203 -0.203 1 \
  --robot-init-rot-quat-center 0 0 0 1 --robot-init-rot-rpy-range 0 0 1 0 0 1 -0.06 -0.06 1 \
  --obj-init-x-range 0 0 1 --obj-init-y-range 0 0 1 \
  --rgb-overlay-path ./ManiSkill2_real2sim/data/real_impainting/open_drawer_a2.png

# B0
python real2sim/main_inference.py --policy-model rt1 --ckpt-path ${ckpt_path} \
  --robot google_robot_static --gpu-id ${gpu_id} \
  --control-freq 3 --sim-freq 513 --max-episode-steps 113 \
  --env-name ${env_name} --scene-name frl_apartment_stage_simple \
  --robot-init-x 0.652 0.652 1 --robot-init-y 0.009 0.009 1 \
  --robot-init-rot-quat-center 0 0 0 1 --robot-init-rot-rpy-range 0 0 1 0 0 1 0 0 1 \
  --obj-init-x-range 0 0 1 --obj-init-y-range 0 0 1 \
  --rgb-overlay-path ./ManiSkill2_real2sim/data/real_impainting/open_drawer_b0.png

# B1
python real2sim/main_inference.py --policy-model rt1 --ckpt-path ${ckpt_path} \
  --robot google_robot_static --gpu-id ${gpu_id} \
  --control-freq 3 --sim-freq 513 --max-episode-steps 113 \
  --env-name ${env_name} --scene-name frl_apartment_stage_simple \
  --robot-init-x 0.752 0.752 1 --robot-init-y 0.009 0.009 1 \
  --robot-init-rot-quat-center 0 0 0 1 --robot-init-rot-rpy-range 0 0 1 0 0 1 0 0 1 \
  --obj-init-x-range 0 0 1 --obj-init-y-range 0 0 1 \
  --rgb-overlay-path ./ManiSkill2_real2sim/data/real_impainting/open_drawer_b1.png

# B2
python real2sim/main_inference.py --policy-model rt1 --ckpt-path ${ckpt_path} \
  --robot google_robot_static --gpu-id ${gpu_id} \
  --control-freq 3 --sim-freq 513 --max-episode-steps 113 \
  --env-name ${env_name} --scene-name frl_apartment_stage_simple \
  --robot-init-x 0.851 0.851 1 --robot-init-y 0.035 0.035 1 \
  --robot-init-rot-quat-center 0 0 0 1 --robot-init-rot-rpy-range 0 0 1 0 0 1 0 0 1 \
  --obj-init-x-range 0 0 1 --obj-init-y-range 0 0 1 \
  --rgb-overlay-path ./ManiSkill2_real2sim/data/real_impainting/open_drawer_b2.png

# C0
python real2sim/main_inference.py --policy-model rt1 --ckpt-path ${ckpt_path} \
  --robot google_robot_static --gpu-id ${gpu_id} \
  --control-freq 3 --sim-freq 513 --max-episode-steps 113 \
  --env-name ${env_name} --scene-name frl_apartment_stage_simple \
  --robot-init-x 0.665 0.665 1 --robot-init-y 0.224 0.224 1 \
  --robot-init-rot-quat-center 0 0 0 1 --robot-init-rot-rpy-range 0 0 1 0 0 1 0 0 1 \
  --obj-init-x-range 0 0 1 --obj-init-y-range 0 0 1 \
  --rgb-overlay-path ./ManiSkill2_real2sim/data/real_impainting/open_drawer_c0.png

# C1
python real2sim/main_inference.py --policy-model rt1 --ckpt-path ${ckpt_path} \
  --robot google_robot_static --gpu-id ${gpu_id} \
  --control-freq 3 --sim-freq 513 --max-episode-steps 113 \
  --env-name ${env_name} --scene-name frl_apartment_stage_simple \
  --robot-init-x 0.765 0.765 1 --robot-init-y 0.222 0.222 1 \
  --robot-init-rot-quat-center 0 0 0 1 --robot-init-rot-rpy-range 0 0 1 0 0 1 -0.025 -0.025 1 \
  --obj-init-x-range 0 0 1 --obj-init-y-range 0 0 1 \
  --rgb-overlay-path ./ManiSkill2_real2sim/data/real_impainting/open_drawer_c1.png

# C2
python real2sim/main_inference.py --policy-model rt1 --ckpt-path ${ckpt_path} \
  --robot google_robot_static --gpu-id ${gpu_id} \
  --control-freq 3 --sim-freq 513 --max-episode-steps 113 \
  --env-name ${env_name} --scene-name frl_apartment_stage_simple \
  --robot-init-x 0.865 0.865 1 --robot-init-y 0.222 0.222 1 \
  --robot-init-rot-quat-center 0 0 0 1 --robot-init-rot-rpy-range 0 0 1 0 0 1 -0.025 -0.025 1 \
  --obj-init-x-range 0 0 1 --obj-init-y-range 0 0 1 \
  --rgb-overlay-path ./ManiSkill2_real2sim/data/real_impainting/open_drawer_c2.png
}


for ckpt_path in "${ckpt_paths[@]}"; do
  for env_name in "${env_names[@]}"; do
    EvalOverlay
  done
done


# Debug
# python real2sim/main_inference.py --policy-model rt1 --ckpt-path ${ckpt_path} \
#   --robot google_robot_static --gpu-id ${gpu_id} \
#   --control-freq 3 --sim-freq 513 --max-episode-steps 80 \
#   --env-name OpenTopDrawerCustomInScene-v0 --scene-name frl_apartment_stage_simple \
#   --robot-init-x 0.65 0.75 1 --robot-init-y 0.0 0.0 1 \
#   --robot-init-rot-quat-center 0 0 0 1 --robot-init-rot-rpy-range 0 0 1 0 0 1 0.0 0.0 1 \
#   --obj-init-x-range 0 0 1 --obj-init-y-range 0 0 1  --enable-raytracing \
#   --rgb-overlay-path ./ManiSkill2_real2sim/data/real_impainting/open_drawer_b1.png

# python real2sim/main_inference.py --policy-model rt1 --ckpt-path ${ckpt_path} \
#   --robot google_robot_static --gpu-id ${gpu_id} \
#   --control-freq 3 --sim-freq 513 --max-episode-steps 80 \
#   --env-name CloseBottomDrawerCustomInScene-v0 --scene-name frl_apartment_stage_simple \
#   --robot-init-x 0.7 0.7 1 --robot-init-y 0.0 0.0 1 \
#   --robot-init-rot-quat-center 0 0 0 1 --robot-init-rot-rpy-range 0 0 1 0 0 1 0.0 0.0 1 \
#   --obj-init-x-range 0 0 1 --obj-init-y-range 0 0 1  --enable-raytracing


# CUDA_VISIBLE_DEVICES=${gpu_id} python real2sim/main_inference.py --policy-model rt1 --ckpt-path ${ckpt_path} \
#   --robot google_robot_static --gpu-id ${gpu_id} \
#   --control-freq 3 --sim-freq 513 --max-episode-steps 80 \
#   --env-name OpenTopDrawerCustomInScene-v0 --scene-name frl_apartment_stage_simple \
#   --robot-init-x 0.75 0.75 1 --robot-init-y 0.0 0.0 1 \
#   --robot-init-rot-quat-center 0 0 0 1 --robot-init-rot-rpy-range 0 0 1 0 0 1 0.0 0.0 1 \
#   --obj-init-x-range 0 0 1 --obj-init-y-range 0 0 1  --enable-raytracing \
#   --rgb-overlay-path ./ManiSkill2_real2sim/data/real_impainting/open_drawer_b1.png
