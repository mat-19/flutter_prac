import firebase_admin
import random
from faker import Faker
from firebase_admin import credentials
from firebase_admin import firestore

fake = Faker()

cred = credentials.Certificate("practiceapp1-e5ab9-firebase-adminsdk-sgw8y-83747aac9f.json")
firebase_admin.initialize_app(cred)

db=firestore.client()

data={"name":fake.name(),"description":fake.sentence(),"image":"https://gifimage.net/wp-content/uploads/2017/09/atardecer-tumblr-gif-5.gif","price":random.randint(10,100)}

db.collection("places").add(data)