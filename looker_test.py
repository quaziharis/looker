import os 
import looker_sdk
import yaml
import warnings
warnings.filterwarnings("ignore")


# open the config file to get API credentials and Looker hostname where open('config.yml') is f:
# f=open('config.yaml','r',encoding='utf8')
# params = yaml.load(f,Loader=yaml.FullLoader)
# f.close()


base_url = 'https://vcreatek.cloud.looker.com:19999'
client_id = 'Cj8ct2q5kbdd9dFywvHM' 
client_secret = 'SXbzqw8D3hykhrYZZfX7Q2wz'

os.environ["LOOKERSDK_BASE_URL"] = base_url #If your looker URL has .cloud in it (hosted on GCP), do not include :19999 (ie: https://your.cloud.looker.com).
os.environ["LOOKERSDK_API_VERSION"] = "3.1" #3.1 is the default version. You can change this to 4.0 if you want.
os.environ["LOOKERSDK_VERIFY_SSL"] = "true" #Defaults to true if not set. SSL verification should generally be on unless you have a real good reason not to use it. Valid options: true, y, t, yes, 1.
os.environ["LOOKERSDK_TIMEOUT"] = "120" #Seconds till request timeout. Standard default is 120.

#Get the following values from your Users page in the Admin panel of your Looker instance > Users > Your user > Edit API keys. If you know your user id, you can visit https://your.looker.com/admin/users/<your_user_id>/edit.
os.environ["LOOKERSDK_CLIENT_ID"] =  client_id #No defaults.
os.environ["LOOKERSDK_CLIENT_SECRET"] = client_secret#No defaults. This should be protected at all costs. Please do not leave it sitting here, even if you don't share this document.

#print("All environment variables set.")
sdk = looker_sdk.init40()
#print('Looker SDK initialized successfully.')
my_user = sdk.me()
#print("Welcome",my_user.display_name)

body={
    "dashboard_id":98,
    "crontab":"0 0 * * 2"

}

sdk.update_scheduled_plan(scheduled_plan_id=158,body=body)
