git remote set-url origin https://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@github.com/susanbao/ViT-Adapter.git

#cd ./segmentation/data/coco_stuff10k
#wget http://calvin.inf.ed.ac.uk/wp-content/uploads/data/cocostuffdataset/cocostuff-10k-v1.1.zip


pip install mmcv-full==1.6.0 -f https://download.openmmlab.com/mmcv/dist/cu113/torch1.12.0/index.html
pip install openmim
pip install mmdet==2.22.0
pip install mmengine
pip install mmsegmentation==0.20.2

ln -s ../detection/ops ./
cd ops
sh make.sh


python coco_stuff10k.py ./coco_stuff10k --nproc 8
python coco_stuff164k.py coco_stuff164k --nproc 8
