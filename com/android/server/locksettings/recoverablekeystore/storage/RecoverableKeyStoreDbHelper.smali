.class Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "RecoverableKeyStoreDbHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "recoverablekeystore.db"

.field static final DATABASE_VERSION:I = 0x4

.field private static final SQL_CREATE_KEYS_ENTRY:Ljava/lang/String; = "CREATE TABLE keys( _id INTEGER PRIMARY KEY,user_id INTEGER,uid INTEGER,alias TEXT,nonce BLOB,wrapped_key BLOB,platform_key_generation_id INTEGER,last_synced_at INTEGER,recovery_status INTEGER,UNIQUE(uid,alias))"

.field private static final SQL_CREATE_RECOVERY_SERVICE_METADATA_ENTRY:Ljava/lang/String; = "CREATE TABLE recovery_service_metadata (_id INTEGER PRIMARY KEY,user_id INTEGER,uid INTEGER,snapshot_version INTEGER,should_create_snapshot INTEGER,active_root_of_trust TEXT,public_key BLOB,cert_path BLOB,cert_serial INTEGER,secret_types TEXT,counter_id INTEGER,server_params BLOB,UNIQUE(user_id,uid))"

.field private static final SQL_CREATE_ROOT_OF_TRUST_ENTRY:Ljava/lang/String; = "CREATE TABLE root_of_trust (_id INTEGER PRIMARY KEY,user_id INTEGER,uid INTEGER,root_alias TEST,cert_path BLOB,cert_serial INTEGER,UNIQUE(user_id,uid,root_alias))"

.field private static final SQL_CREATE_USER_METADATA_ENTRY:Ljava/lang/String; = "CREATE TABLE user_metadata( _id INTEGER PRIMARY KEY,user_id INTEGER UNIQUE,platform_key_generation_id INTEGER)"

.field private static final SQL_DELETE_KEYS_ENTRY:Ljava/lang/String; = "DROP TABLE IF EXISTS keys"

.field private static final SQL_DELETE_RECOVERY_SERVICE_METADATA_ENTRY:Ljava/lang/String; = "DROP TABLE IF EXISTS recovery_service_metadata"

.field private static final SQL_DELETE_ROOT_OF_TRUST_ENTRY:Ljava/lang/String; = "DROP TABLE IF EXISTS root_of_trust"

.field private static final SQL_DELETE_USER_METADATA_ENTRY:Ljava/lang/String; = "DROP TABLE IF EXISTS user_metadata"

.field private static final TAG:Ljava/lang/String; = "RecoverableKeyStoreDbHp"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 102
    const-string/jumbo v0, "recoverablekeystore.db"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 103
    return-void
.end method

.method private static addColumnToTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "columnType"    # Ljava/lang/String;
    .param p4, "defaultStr"    # Ljava/lang/String;

    .line 172
    const-string v0, "RecoverableKeyStoreDbHp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ALTER TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ADD COLUMN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "alterStr":Ljava/lang/String;
    if-eqz p4, :cond_60

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_60

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " DEFAULT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    :cond_60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method private dropAllKnownTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 144
    const-string v0, "DROP TABLE IF EXISTS keys"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 145
    const-string v0, "DROP TABLE IF EXISTS user_metadata"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 146
    const-string v0, "DROP TABLE IF EXISTS recovery_service_metadata"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 147
    const-string v0, "DROP TABLE IF EXISTS root_of_trust"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method private upgradeDbForVersion3(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 152
    const-string/jumbo v0, "recovery_service_metadata"

    const-string v1, "cert_path"

    const-string v2, "BLOB"

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->addColumnToTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string/jumbo v0, "recovery_service_metadata"

    const-string v1, "cert_serial"

    const-string v2, "INTEGER"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->addColumnToTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method private upgradeDbForVersion4(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 160
    const-string v0, "RecoverableKeyStoreDbHp"

    const-string v1, "Updating recoverable keystore database to version 4"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v0, "CREATE TABLE root_of_trust (_id INTEGER PRIMARY KEY,user_id INTEGER,uid INTEGER,root_alias TEST,cert_path BLOB,cert_serial INTEGER,UNIQUE(user_id,uid,root_alias))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 164
    const-string/jumbo v0, "recovery_service_metadata"

    const-string v1, "active_root_of_trust"

    const-string v2, "TEXT"

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->addColumnToTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 107
    const-string v0, "CREATE TABLE keys( _id INTEGER PRIMARY KEY,user_id INTEGER,uid INTEGER,alias TEXT,nonce BLOB,wrapped_key BLOB,platform_key_generation_id INTEGER,last_synced_at INTEGER,recovery_status INTEGER,UNIQUE(uid,alias))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 108
    const-string v0, "CREATE TABLE user_metadata( _id INTEGER PRIMARY KEY,user_id INTEGER UNIQUE,platform_key_generation_id INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 109
    const-string v0, "CREATE TABLE recovery_service_metadata (_id INTEGER PRIMARY KEY,user_id INTEGER,uid INTEGER,snapshot_version INTEGER,should_create_snapshot INTEGER,active_root_of_trust TEXT,public_key BLOB,cert_path BLOB,cert_serial INTEGER,secret_types TEXT,counter_id INTEGER,server_params BLOB,UNIQUE(user_id,uid))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 110
    const-string v0, "CREATE TABLE root_of_trust (_id INTEGER PRIMARY KEY,user_id INTEGER,uid INTEGER,root_alias TEST,cert_path BLOB,cert_serial INTEGER,UNIQUE(user_id,uid,root_alias))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 115
    const-string v0, "RecoverableKeyStoreDbHp"

    const-string v1, "Recreating recoverablekeystore after unexpected version downgrade."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->dropAllKnownTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 118
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 122
    const/4 v0, 0x2

    if-ge p2, v0, :cond_a

    .line 123
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->dropAllKnownTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 124
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 125
    return-void

    .line 128
    :cond_a
    const/4 v0, 0x3

    if-ge p2, v0, :cond_13

    if-lt p3, v0, :cond_13

    .line 129
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->upgradeDbForVersion3(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 130
    const/4 p2, 0x3

    .line 133
    :cond_13
    const/4 v0, 0x4

    if-ge p2, v0, :cond_1c

    if-lt p3, v0, :cond_1c

    .line 134
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->upgradeDbForVersion4(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 135
    const/4 p2, 0x4

    .line 138
    :cond_1c
    if-eq p2, p3, :cond_25

    .line 139
    const-string v0, "RecoverableKeyStoreDbHp"

    const-string v1, "Failed to update recoverablekeystore database to the most recent version"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_25
    return-void
.end method
