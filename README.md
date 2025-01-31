# Offline Meta-Reinforcement Learning with Advantage Weighting (MACAW)

MACAW code used for the experiments in the ICML 2021 paper.

## Installing the environment

    # Install Python 3.7.9 if necessary
    $ pyenv install 3.7.9
    $ pyenv shell 3.7.9
    
    $ python --version
    Python 3.7.9
    
    $ python -m venv env
    $ source env/bin/activate
    $ pip install -r requirements.txt

## Downloading the data

The offline data used for MACAW can be found [here](https://drive.google.com/drive/folders/1kJEAYNWBYRD4ZIE3Ww0epXGM2VGelrQC?usp=sharing). Download it and use the default name (`macaw_offline_data`) for the folder where the four data directories are stored. [gDrive](https://github.com/prasmussen/gdrive) might be useful here if downloading from the Google Drive GUI is not an option.

## Running MACAW 🦜

Run offline meta-training with periodic online evaluations with any of the scripts in `scripts/`. e.g.
    
    $ . scripts/macaw_dir.sh # MACAW training on Cheetah-Direction (Figure 1)
    $ CUDA_VISIBLE_DEVICES=6 . scripts/macaw_vel.sh # MACAW training on Cheetah-Velocity (Figure 1)

['handle-pull-side-v2', 'handle-pull-v2', 'lever-pull-v2', 'peg-insert-side-v2', 'pick-place-wall-v2', 'pick-out-of-hole-v2', 'push-back-v2', 'push-v2', 'pick-place-v2', 'plate-slide-v2', 'plate-slide-side-v2', 'plate-slide-back-v2', 'plate-slide-back-side-v2', 'peg-unplug-side-v2', 'soccer-v2', 'stick-push-v2', 'stick-pull-v2', 'push-wall-v2', 'reach-wall-v2', 'shelf-place-v2', 'sweep-into-v2', 'sweep-v2', 'window-open-v2', 'window-close-v2']
    $ . scripts/macaw_quality_ablation.sh # Data quality ablation (Figure 5-left)
    ...
    
Outputs (tensorboard logs) will be written to the `log/` directory.
    
## Reach out!

If you're having issues with the code or data, feel free to open an issue or send me an [email](mailto:eric.mitchell@cs.stanford.edu).


## Citation
If our code or research was useful for your own work, you can cite us with the following attribution:
    
    @InProceedings{mitchell2021offline,
        title = {Offline Meta-Reinforcement Learning with Advantage Weighting},
        author = {Mitchell, Eric and Rafailov, Rafael and Peng, Xue Bin and Levine, Sergey and Finn, Chelsea},
        booktitle = {Proceedings of the 38th International Conference on Machine Learning},
        year = {2021}
    }
