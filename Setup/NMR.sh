#!/bin/bash  
 
 cd Desktop
mkdir NMRware
cd  

zenity --question --title "NMRware- A Complete Software for Metabolite Identification" --text "Welcome to the installation of NMRware. This package will guide you to install NMR based Merabolomics tools

Close all your running applications before starting the setup.

Click yes to continue the installation."



if [ "$?" == 1 ] ; then
   zenity --error --text "Setup Canceled."
   exit 1

fi

zenity --info --height=300 --width=350  --title "NMRware Packages" --text "NMRware includes the following packages.

• Data preprocessing

• Data processing

• Network Analysis

• Enrichment analysis

• Integrative analysis

Click "OK" to proceed"

zenity --info --width=400 --height=150 --title="Dependencies Installation" --text="Press OK to install all dependencies related to this software will install"

sudo apt-get install python-numpy python-scipy pyhton-symp
sudo apt install python-pyqt5
sudo apt-get install python-pip 
sudo apt install docker.io
sudo apt-get install r-base
pip install cPickle
pip install graphviz
pip install docopt==0.6.2


choose=$(zenity --list --checklist --height=600 --width=750  --ok-label=Next  --mid-search  --title "Select Tools" --text "Select the tools which you want to download and install." \
   --column "Select" --column='Sr. no' --column="Tool " --column="Size (MB/KB)"    --separator ":"\
	FALSE	1	OptGpSampler		69.9KB\
	FALSE	2	Phrasedml 		6.8MB\
	FALSE	3	Pyabolism               3.8MB\
	FALSE	4	Pybrn	                495.0KB\
	FALSE	5	NmrStarlib		31.1MB\
        FALSE   6       NMRpro                  10.5KB\
        FALSE   7       icoshift                188.5KB\
        FALSE   8       Newton                  202.2KB\
        FALSE   9       Scrumpy                 11.7MB\
        FALSE   10      PAPi                    1.6MB\
        FALSE   11      KEGGREST                158.0KB\
        FALSE   12      MetaboSignal            3.5MB\
        FALSE   13      MetaboliteIDconverter   15.4KB\
        FALSE   14      MWASTools               3.2MB\
        FALSE   15      proFIA                  116KB\
        FALSE   16      Pyms                    116KB\
        FALSE   17      NMRglue                 147KB\
        FALSE   18      Mnova NMR               240.5MB\
        FALSE   19      Metcirc                 1.6MB\
        FALSE   20      MAIT                    446\
        FALSE   21      Metab                   1.1\
        FALSE   22      iontree                 446 )



IFS=":" ; for word in $choose ; do 
   case $word in
 	1)  cd Desktop/NMRware
            mkdir OptGpSampler
            cd OptGpSampler
            wget https://cs.ru.nl/~wmegchel/optGpSampler/downloads/optGpSampler_1.1_Python_Linux64.tar.gz
            cd  ;;
           
	2)  cd Desktop/NMRware
            mkdir Phrasedml 
            cd Phrasedml
            wget https://sourceforge.net/projects/phrasedml/files/latest/download
            cd ;;

    
	3)  cd Desktop/NMRware
            mkdir Pyabolism
            cd Pyabolism
            wget https://github.com/nickfyson/pyabolism/archive/master.zip
            cd ;;

        4)  cd Desktop/NMRware
            mkdir Pybrn
            cd Pybrn
            wget https://sourceforge.net/projects/pybrn/files/latest/download?source=files
            cd ;;

        5)  cd Desktop/NMRware
            mkdir NMRstarlib
            cd NMRstarlib
            wget https://codeload.github.com/MoseleyBioinformaticsLab/nmrstarlib/zip/master
            cd ;;

        6)  cd Desktop/NMRware
            mkdir NMRpro
            cd NMRpro
            wget https://github.com/phnmnl/container-nmrpro/archive/develop.zip
            cd ;;

        7)  cd Desktop/NMRware
            mkdir icoshift
            cd icoshift
            wget https://pypi.python.org/packages/01/18/7e60cb48ef40a01174bb99bfa6cfef2cda5cbf40965d62c68e27731062f4/icoshift-1.0.tar.gz
            cd ;;

        8)  cd Desktop/NMRware
            mkdir Newton
            cd Newton
            wget http://pine.nmrfam.wisc.edu/PACKAGES/newton/newton_all.zip
            cd ;;

        9)  cd Desktop/NMRware
            mkdir Scrumpy
            cd Scrumpy
            wget http://mudsharkstatic.brookes.ac.uk/Download/ScrumPy.tgz
            cd ;;

        10)  cd Desktop/NMRware
             mkdir PAPi
             cd PAPi
             wget www.bioconductor.org/packages/release/bioc/src/contrib/PAPi_1.18.0.tar.gz
             cd ;;

        11)  cd Desktop/NMRware
             mkdir KEGGREST
             cd KEGGREST
             wget https://bioconductor.org/packages/release/bioc/src/contrib/KEGGREST_1.18.1.tar.gz
             cd ;;

        12)  cd Desktop/NMRware
             mkdir MetaboSignal
             cd MetaboSignal
             wget https://bioconductor.org/packages/release/bioc/src/contrib/MetaboSignal_1.8.0.tar.gz
             cd ;;

        13)  cd Desktop/NMRware
             mkdir metaboliteIDconverter
             cd  metaboliteIDconverter
             wget https://codeload.github.com/phnmnl/container-MetaboliteIDConverter/zip/master
             cd ;; 

        14)  cd Desktop/NMRware
             mkdir MWASTools 
             cd MWASTools 
             wget https://bioconductor.org/packages/release/bioc/src/contrib/MWASTools_1.2.0.tar.gz
             cd ;;

        15)  cd Desktop/NMRware
             mkdir proFIA 
             cd proFIA 
             wget https://bioconductor.org/packages/release/bioc/src/contrib/proFIA_1.4.0.tar.gz
             cd;;

        16)  cd Desktop/NMRware
             mkdir Pyms 
             cd Pyms  
             wget https://github.com/ma-bio21/pyms/archive/master.zip
             cd ;;

        17)  cd Desktop/NMRware 
             mkdir NMRglue
             cd NMRglue  
             wget https://github.com/jjhelmus/nmrglue/releases/download/v0.6/nmrglue-0.6.tar.gz
             cd ;;

        18)  cd Desktop/NMRware
             mkdir MnovaNMR
             cd MnovaNMR
             wget http://mestrelab.com/downloads/mnova/linux/Ubuntu/16.04/mestrenova_12.0.1-20560_amd64.deb
             cd ;;

        19)  cd Desktop/NMRware
             mkdir Metcirc 
             cd Metcirc
             wget https://codeload.github.com/PlantDefenseMetabolism/MetCirc/zip/master
             cd ;; 

        20)  cd Desktop/NMRware
             mkdir MAIT 
             cd MAIT
             wget https://bioconductor.org/packages/release/bioc/src/contrib/MAIT_1.12.0.tar.gz
             cd ;; 

        21)  cd Desktop/NMRware
             mkdir Metab
             cd Metab
             wget https://bioconductor.org/packages/devel/bioc/src/contrib/Metab_1.13.0.tar.gz
             cd ;; 

        22)  cd Desktop/NMRware
             mkdir iontree 
             cd iontree
             wget http://bioconductor.org/packages/release/bioc/src/contrib/iontree_1.24.0.tar.gz
             cd ;; 
   
esac
done

zenity --info --title="A installation package for Metabolomics tools" --text="Press ok so that downloading and installing will start"

IFS=":" ; for word in $choose ; do 
   case $word in

   1)	cd
        cd  Desktop/NMRware/OptGpSampler
        tar xzf optGpSampler_1.1_Python_Linux64.tar.gz
	cd  optGpSampler-1.1 
	sudo python setup.py install
	cd ..   ;;

   2)	cd
        cd Desktop/NMRware/Phrasedml
	unzip download 
	sudo python setup.py install
	cd ..   ;;

   3)	cd
        cd Desktop/NMRware/Pyabolism
	unzip master.zip 
        cd pyabolism-master
	sudo make install
	cd ..   ;;

   4)	cd
        cd Desktop/NMRware/Pybrn
	unzip download?source=files 
        cd pybrn-0.4.3
	sudo python setup.py install
	cd ..   ;;

   5)	cd
        cd Desktop/NMRware/NMRstarlib
	unzip master
        cd nmrstarlib-master 
	sudo python setup.py install
	cd ..   ;;

   6)	cd
        cd Desktop/NMRware/NMRpro
	unzip develop.zip 
        cd 
	sudo docker pull docker-registry.phenomenal-h2020.eu/phnmnl/nmrpro
	cd ..   ;;

   7)	cd
        cd Desktop/NMRware/icoshift
	tar xzf icoshift-1.0.tar.gz 
        cd icoshift-1.0
	sudo python setup.py install
	cd ..   ;;

   8)	cd
        cd Desktop/NMRware/Newton
	unzip newton_all.zip 
        cd newton-1.4.10
	sudo bash newton.sh
	cd ..   ;;

   9)	cd
        cd Desktop/NMRware/Scrumpy
        tar xvzf ScrumPy.tgz 
        cd ScrumPy1229
	sudo python install.py install
	cd ..   ;;

   10)	cd
        cd Desktop
	mv PAPi.sh NMRware/PAPi
	cd 
        cd Desktop/NMRware/PAPi
	Rscript PAPi.sh
	cd ..   ;;

   11)	cd
        cd Desktop
	mv KEGGREST.sh NMRware/KEGGREST
	cd 
        cd Desktop/NMRware/KEGGREST
	Rscript KEGGREST.sh
	cd ..   ;;

   12)	cd
        cd Desktop
	mv MetaboSignal.sh NMRware/MetaboSignal
	cd 
        cd Desktop/NMRware/MetaboSignal
	Rscript MetaboSignal.sh
	cd ..   ;;

   13)	cd
        cd Desktop/NMRware/metaboliteIDconverter 
        cd 
	sudo docker pull docker-registry.phenomenal-h2020.eu/phnmnl/metaboliteidconverter
	cd ..   ;;

   14)	cd
        cd Desktop
	mv MWASTools.sh NMRware/MWASTools
	cd 
        cd Desktop/NMRware/MWASTools
	Rscript MWASTools.sh
	cd ..   ;;

   15)	cd
        cd Desktop
	mv proFIA.sh NMRware/proFIA
	cd 
        cd Desktop/NMRware/proFIA
	Rscript proFIA.sh
	cd ..   ;;

   16)	cd
        cd Desktop/NMRware/Pyms
	unzip master.zip 
        cd pyms-master
	sudo python setup.py install
	cd ..   ;;

   17)	cd
        cd Desktop/NMRware/NMRglue
	tar xzf nmrglue-0.6.tar.gz
        cd nmrglue-0.6
	sudo python setup.py install
	cd ..   ;;

   18)	cd
        cd Desktop/NMRware/MnovaNMR
	sudo apt install ./mestrenova_12.0.1-20560_amd64.deb
	cd ..   ;;

   19)	cd
        cd Desktop
	mv Metcirc.sh MRware/Metcirc
	cd 
        cd Desktop/NMRware/Metcirc
	Rscript Metcirc.sh
	cd ..   ;

   20)	cd
        cd Desktop
	mv MAIT.sh MRware/MAIT
	cd 
        cd Desktop/NMRware/MAIT
	Rscript MAIT.sh
	cd ..   ;
      
   21)	cd
        cd Desktop
	mv Metab.sh MRware/Metab
	cd 
        cd Desktop/NMRware/Metab
	Rscript Metab.sh
	cd ..   ;

   22)	cd
        cd Desktop
	mv iontree.sh MRware/iontree
	cd 
        cd Desktop/NMRware/iontree
	Rscript iontree.sh
	cd ..   ;

   esac
done

zenity --info --width=200 --height=50 --title="Transciptomics package" --text="Done"

exit


























	
