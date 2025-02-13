class Config:
    SECRET_KEY  = 'SDHFXKTGHJL.,AEHSRHRSDJTDgvjbkgk202bjlkwfhddjhfk'
    DEBUG       = True

class DevelopmentConfig(Config):
    MYSQL_HOST      = 'localhost'
    MYSQL_USER      = 'root'
    MYSQL_PASSWORD  = 'mysql'
    MYSQL_DB        = 'thelab'

config = {
    'development': DevelopmentConfig
}