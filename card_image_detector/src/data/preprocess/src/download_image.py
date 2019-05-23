from pathlib import Path
import urllib.request
import json
import requests

def download_image():

    # load json 
    url_image = open('data/preprocess/src/creditcard_insurance.json', 'r')
    load_json = json.load(url_image)
    
    # download one each of img
    for key1, value1 in load_json.items(): # 1階層 = value1
        if key1 != "Items":
            continue
        for i in value1: # convert list to dict  
            for key2, value2 in i.items(): #2階層 = value2

                # get url
                if 'img_url' in key2:
                    for url in value2: # convert list to str
                        print(url)

                        # load img
                        r = requests.get(url, stream=True)

                        # get ext
                        ext = Path(url).suffix

                # get name
                if 'creditcard_name' != key2:
                    continue
                for value3 in value2.values(): #3階層 = value3
                    duplication_name = []
                    for value4 in value3: #4階層 = value4

                        for value5 in value4.values(): #5階層 = value5

                            # if name exit more than 2 list
                            duplication_name.append(value5)
                            if len(duplication_name) > 1:
                                duplication_name.pop(1)
                                name = str(duplication_name)
                                print(name)
                            
                            else:
                                name = value5
                                print(name)

                                #get path
                                dst_dir = 'data/preprocess/raw'
                                dst_path = Path(dst_dir).joinpath(name+ ext)

                                #save
                                with open(str(dst_path), mode="wb") as f:
                                    f.write(r.content)

if __name__ == '__main__':
    download_image()
