.class Lcom/android/server/accounts/AccountsDb$PreNDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AccountsDb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountsDb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreNDatabaseHelper"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUserId:I


# direct methods
.method constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "preNDatabaseName"    # Ljava/lang/String;

    .line 1092
    const/4 v0, 0x0

    const/16 v1, 0x9

    invoke-direct {p0, p1, p3, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 1093
    iput-object p1, p0, Lcom/android/server/accounts/AccountsDb$PreNDatabaseHelper;->mContext:Landroid/content/Context;

    .line 1094
    iput p2, p0, Lcom/android/server/accounts/AccountsDb$PreNDatabaseHelper;->mUserId:I

    .line 1095
    return-void
.end method

.method private addDebugTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 1121
    invoke-static {p1}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->createDebugTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1122
    return-void
.end method

.method private addLastSuccessfullAuthenticatedTimeColumn(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 1112
    const-string v0, "ALTER TABLE accounts ADD COLUMN last_password_entry_time_millis_epoch DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1114
    return-void
.end method

.method private addOldAccountNameColumn(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 1117
    const-string v0, "ALTER TABLE accounts ADD COLUMN previous_name"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1118
    return-void
.end method

.method private createAccountsDeletionTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 1125
    const-string v0, " CREATE TRIGGER accountsDelete DELETE ON accounts BEGIN   DELETE FROM authtokens     WHERE accounts_id=OLD._id ;   DELETE FROM extras     WHERE accounts_id=OLD._id ;   DELETE FROM grants     WHERE accounts_id=OLD._id ; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1135
    return-void
.end method

.method private createGrantsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 1138
    const-string v0, "CREATE TABLE grants (  accounts_id INTEGER NOT NULL, auth_token_type STRING NOT NULL,  uid INTEGER NOT NULL,  UNIQUE (accounts_id,auth_token_type,uid))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1144
    return-void
.end method

.method private createSharedAccountsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 1104
    const-string v0, "CREATE TABLE shared_accounts ( _id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, type TEXT NOT NULL, UNIQUE(name,type))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1109
    return-void
.end method

.method static insertMetaAuthTypeAndUid(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)J
    .registers 7
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "authenticatorType"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1147
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1148
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "key"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "auth_uid_for_type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    const-string/jumbo v1, "value"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1151
    const-string/jumbo v1, "meta"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1
.end method

.method private populateMetaTableWithAuthTypeAndUID(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;)V
    .registers 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1156
    .local p2, "authTypeAndUIDMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1157
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/android/server/accounts/AccountsDb$PreNDatabaseHelper;->insertMetaAuthTypeAndUid(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)J

    .line 1158
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_8

    .line 1159
    :cond_28
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 1100
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Legacy database cannot be created - only upgraded!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 1221
    const-string v0, "AccountsDb"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "AccountsDb"

    const-string/jumbo v1, "opened database accounts.db"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    :cond_11
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 1166
    const-string v0, "AccountsDb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "upgrade from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    const/4 v0, 0x1

    if-ne p2, v0, :cond_24

    .line 1171
    add-int/lit8 p2, p2, 0x1

    .line 1174
    :cond_24
    const/4 v0, 0x2

    if-ne p2, v0, :cond_34

    .line 1175
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountsDb$PreNDatabaseHelper;->createGrantsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1176
    const-string v0, "DROP TRIGGER accountsDelete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1177
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountsDb$PreNDatabaseHelper;->createAccountsDeletionTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1178
    add-int/lit8 p2, p2, 0x1

    .line 1181
    :cond_34
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3e

    .line 1182
    const-string v0, "UPDATE accounts SET type = \'com.google\' WHERE type == \'com.google.GAIA\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1184
    add-int/lit8 p2, p2, 0x1

    .line 1187
    :cond_3e
    const/4 v0, 0x4

    if-ne p2, v0, :cond_46

    .line 1188
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountsDb$PreNDatabaseHelper;->createSharedAccountsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1189
    add-int/lit8 p2, p2, 0x1

    .line 1192
    :cond_46
    const/4 v0, 0x5

    if-ne p2, v0, :cond_4e

    .line 1193
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountsDb$PreNDatabaseHelper;->addOldAccountNameColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1194
    add-int/lit8 p2, p2, 0x1

    .line 1197
    :cond_4e
    const/4 v0, 0x6

    if-ne p2, v0, :cond_56

    .line 1198
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountsDb$PreNDatabaseHelper;->addLastSuccessfullAuthenticatedTimeColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1199
    add-int/lit8 p2, p2, 0x1

    .line 1202
    :cond_56
    const/4 v0, 0x7

    if-ne p2, v0, :cond_5e

    .line 1203
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountsDb$PreNDatabaseHelper;->addDebugTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1204
    add-int/lit8 p2, p2, 0x1

    .line 1207
    :cond_5e
    const/16 v0, 0x8

    if-ne p2, v0, :cond_6f

    .line 1208
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb$PreNDatabaseHelper;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/accounts/AccountsDb$PreNDatabaseHelper;->mUserId:I

    .line 1210
    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getAuthenticatorTypeAndUIDForUser(Landroid/content/Context;I)Ljava/util/HashMap;

    move-result-object v0

    .line 1208
    invoke-direct {p0, p1, v0}, Lcom/android/server/accounts/AccountsDb$PreNDatabaseHelper;->populateMetaTableWithAuthTypeAndUID(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;)V

    .line 1211
    add-int/lit8 p2, p2, 0x1

    .line 1214
    :cond_6f
    if-eq p2, p3, :cond_8f

    .line 1215
    const-string v0, "AccountsDb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to upgrade version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    :cond_8f
    return-void
.end method
