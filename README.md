# todo_flutter_django
an example of an app consuming an apj rest made in django


IMPORTANTE: Estamos usando Python 3.6 neste projeto

# Como instalar?

Antes, verifique se você tem esses pacotes instalados (os pacotes abaixo são do Ubuntu):

```
sudo apt-get install build-essential python3-dev python3-venv python3-pip
```

Crie um virtualenv com python 3:

```
virtualenv -p python3 venv
```

Ative o virtualenv:

```
source venv/bin/activate
```

Instale as dependencias com o comando abaixo:

```
pip install -r requirements.txt
```

Execute as migrações do projeto:

```
python manage.py migrate
```

Inicie o projeto:

```
python manage.py runserver
```

# Como usar o sistema?

Crie um superuser:

```
python manage.py createsuperuser
```

Com o sistema rodando (`python manage.py runserver`) acesse `http://127.0.0.1:8000/admin` informe seu usuário e senha criados anteriormente no login para conseguir acessar o admin do django.
