.class public Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;
.super Ljava/lang/Object;
.source "RecoverableKeyStoreDb.java"


# static fields
.field private static final CERT_PATH_ENCODING:Ljava/lang/String; = "PkiPath"

.field private static final IDLE_TIMEOUT_SECONDS:I = 0x1e

.field private static final LAST_SYNCED_AT_UNSYNCED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "RecoverableKeyStoreDb"


# instance fields
.field private final mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

.field private final mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 3
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 159
    if-eqz p0, :cond_b

    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_b
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_e
    return-void
.end method

.method private constructor <init>(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;)V
    .registers 3
    .param p1, "keyStoreDbHelper"    # Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    .line 82
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    invoke-direct {v0}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 83
    return-void
.end method

.method private static decodeCertPath([B)Ljava/security/cert/CertPath;
    .registers 4
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1214
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_6} :catch_14

    .line 1218
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    nop

    .line 1217
    nop

    .line 1219
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v2, "PkiPath"

    invoke-virtual {v0, v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;

    move-result-object v1

    return-object v1

    .line 1215
    .end local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_14
    move-exception v0

    .line 1217
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static decodeX509Key([B)Ljava/security/PublicKey;
    .registers 4
    .param p0, "keyBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 1201
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 1203
    .local v0, "publicKeySpec":Ljava/security/spec/X509EncodedKeySpec;
    :try_start_5
    const-string v1, "EC"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1
    :try_end_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_f} :catch_10

    return-object v1

    .line 1204
    :catch_10
    move-exception v1

    .line 1206
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private ensureRecoveryServiceMetadataEntryExists(II)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "uid"    # I

    .line 1170
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1171
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1172
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "user_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1173
    const-string/jumbo v2, "uid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1174
    const-string/jumbo v2, "recovery_service_metadata"

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 1176
    return-void
.end method

.method private ensureRootOfTrustEntryExists(IILjava/lang/String;)V
    .registers 9
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "rootAlias"    # Ljava/lang/String;

    .line 1183
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1184
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1185
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "user_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1186
    const-string/jumbo v2, "uid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1187
    const-string/jumbo v2, "root_alias"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    const-string/jumbo v2, "root_of_trust"

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 1190
    return-void
.end method

.method private getBytes(IILjava/lang/String;)[B
    .registers 21
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "key"    # Ljava/lang/String;

    .line 923
    move-object/from16 v1, p3

    move-object/from16 v2, p0

    iget-object v0, v2, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 925
    .local v11, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x4

    new-array v5, v0, [Ljava/lang/String;

    const-string v0, "_id"

    const/4 v12, 0x0

    aput-object v0, v5, v12

    const-string/jumbo v0, "user_id"

    const/4 v13, 0x1

    aput-object v0, v5, v13

    const-string/jumbo v0, "uid"

    const/4 v14, 0x2

    aput-object v0, v5, v14

    const/4 v0, 0x3

    aput-object v1, v5, v0

    .line 930
    .local v5, "projection":[Ljava/lang/String;
    const-string/jumbo v15, "user_id = ? AND uid = ?"

    .line 933
    .local v15, "selection":Ljava/lang/String;
    new-array v7, v14, [Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v12

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v13

    .line 936
    .local v7, "selectionArguments":[Ljava/lang/String;
    const-string/jumbo v4, "recovery_service_metadata"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v11

    move-object v6, v15

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 935
    .local v3, "cursor":Landroid/database/Cursor;
    nop

    .line 945
    const/4 v4, 0x0

    :try_start_40
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v6
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_44} :catch_97
    .catchall {:try_start_40 .. :try_end_44} :catchall_95

    .line 946
    .local v6, "count":I
    if-nez v6, :cond_4d

    .line 947
    nop

    .line 963
    if-eqz v3, :cond_4c

    invoke-static {v4, v3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 947
    :cond_4c
    return-object v4

    .line 949
    :cond_4d
    if-le v6, v13, :cond_77

    .line 950
    :try_start_4f
    const-string v8, "RecoverableKeyStoreDb"

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%d entries found for userId=%d uid=%d. Should only ever be 0 or 1."

    new-array v0, v0, [Ljava/lang/Object;

    .line 953
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v0, v12

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v0, v13

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v0, v14

    .line 951
    invoke-static {v9, v10, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 950
    invoke-static {v8, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_70} :catch_97
    .catchall {:try_start_4f .. :try_end_70} :catchall_95

    .line 954
    nop

    .line 963
    if-eqz v3, :cond_76

    invoke-static {v4, v3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 954
    :cond_76
    return-object v4

    .line 956
    :cond_77
    :try_start_77
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 957
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 958
    .local v0, "idx":I
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_82} :catch_97
    .catchall {:try_start_77 .. :try_end_82} :catchall_95

    if-eqz v8, :cond_8b

    .line 959
    nop

    .line 963
    if-eqz v3, :cond_8a

    invoke-static {v4, v3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 959
    :cond_8a
    return-object v4

    .line 961
    :cond_8b
    :try_start_8b
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_8b .. :try_end_8f} :catch_97
    .catchall {:try_start_8b .. :try_end_8f} :catchall_95

    .line 963
    if-eqz v3, :cond_94

    invoke-static {v4, v3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 961
    :cond_94
    return-object v8

    .line 963
    .end local v0    # "idx":I
    .end local v6    # "count":I
    :catchall_95
    move-exception v0

    goto :goto_9a

    .line 935
    :catch_97
    move-exception v0

    move-object v4, v0

    :try_start_99
    throw v4
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_95

    .line 963
    :goto_9a
    if-eqz v3, :cond_9f

    invoke-static {v4, v3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_9f
    throw v0
.end method

.method private getBytes(IILjava/lang/String;Ljava/lang/String;)[B
    .registers 23
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "rootAlias"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;

    move-object/from16 v1, p0

    .line 1003
    move-object/from16 v2, p4

    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    move-object/from16 v3, p3

    invoke-virtual {v0, v3}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1004
    .end local p3    # "rootAlias":Ljava/lang/String;
    .local v3, "rootAlias":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    .line 1006
    .local v12, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x5

    new-array v6, v0, [Ljava/lang/String;

    const-string v0, "_id"

    const/4 v13, 0x0

    aput-object v0, v6, v13

    const-string/jumbo v0, "user_id"

    const/4 v14, 0x1

    aput-object v0, v6, v14

    const-string/jumbo v0, "uid"

    const/4 v15, 0x2

    aput-object v0, v6, v15

    const-string/jumbo v0, "root_alias"

    const/4 v11, 0x3

    aput-object v0, v6, v11

    const/4 v0, 0x4

    aput-object v2, v6, v0

    .line 1012
    .local v6, "projection":[Ljava/lang/String;
    const-string/jumbo v16, "user_id = ? AND uid = ? AND root_alias = ?"

    .line 1016
    .local v16, "selection":Ljava/lang/String;
    new-array v8, v11, [Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v13

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v14

    aput-object v3, v8, v15

    .line 1019
    .local v8, "selectionArguments":[Ljava/lang/String;
    const-string/jumbo v5, "root_of_trust"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v0, 0x0

    move-object v4, v12

    move-object/from16 v7, v16

    move v15, v11

    move-object v11, v0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 1018
    .local v4, "cursor":Landroid/database/Cursor;
    nop

    .line 1028
    const/4 v5, 0x0

    :try_start_53
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_57} :catch_ab
    .catchall {:try_start_53 .. :try_end_57} :catchall_a9

    .line 1029
    .local v0, "count":I
    if-nez v0, :cond_60

    .line 1030
    nop

    .line 1046
    if-eqz v4, :cond_5f

    invoke-static {v5, v4}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 1030
    :cond_5f
    return-object v5

    .line 1032
    :cond_60
    if-le v0, v14, :cond_8b

    .line 1033
    :try_start_62
    const-string v7, "RecoverableKeyStoreDb"

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%d entries found for userId=%d uid=%d. Should only ever be 0 or 1."

    new-array v11, v15, [Ljava/lang/Object;

    .line 1036
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v11, v13

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v14

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x2

    aput-object v13, v11, v14

    .line 1034
    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1033
    invoke-static {v7, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_84} :catch_ab
    .catchall {:try_start_62 .. :try_end_84} :catchall_a9

    .line 1037
    nop

    .line 1046
    if-eqz v4, :cond_8a

    invoke-static {v5, v4}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 1037
    :cond_8a
    return-object v5

    .line 1039
    :cond_8b
    :try_start_8b
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1040
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 1041
    .local v7, "idx":I
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9
    :try_end_96
    .catch Ljava/lang/Throwable; {:try_start_8b .. :try_end_96} :catch_ab
    .catchall {:try_start_8b .. :try_end_96} :catchall_a9

    if-eqz v9, :cond_9f

    .line 1042
    nop

    .line 1046
    if-eqz v4, :cond_9e

    invoke-static {v5, v4}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 1042
    :cond_9e
    return-object v5

    .line 1044
    :cond_9f
    :try_start_9f
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9
    :try_end_a3
    .catch Ljava/lang/Throwable; {:try_start_9f .. :try_end_a3} :catch_ab
    .catchall {:try_start_9f .. :try_end_a3} :catchall_a9

    .line 1046
    if-eqz v4, :cond_a8

    invoke-static {v5, v4}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 1044
    :cond_a8
    return-object v9

    .line 1046
    .end local v0    # "count":I
    .end local v7    # "idx":I
    :catchall_a9
    move-exception v0

    goto :goto_ae

    .line 1018
    :catch_ab
    move-exception v0

    move-object v5, v0

    :try_start_ad
    throw v5
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_a9

    .line 1046
    :goto_ae
    if-eqz v4, :cond_b3

    invoke-static {v5, v4}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_b3
    throw v0
.end method

.method private getLong(IILjava/lang/String;)Ljava/lang/Long;
    .registers 21
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "key"    # Ljava/lang/String;

    .line 843
    move-object/from16 v1, p3

    move-object/from16 v2, p0

    iget-object v0, v2, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 845
    .local v11, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x4

    new-array v5, v0, [Ljava/lang/String;

    const-string v0, "_id"

    const/4 v12, 0x0

    aput-object v0, v5, v12

    const-string/jumbo v0, "user_id"

    const/4 v13, 0x1

    aput-object v0, v5, v13

    const-string/jumbo v0, "uid"

    const/4 v14, 0x2

    aput-object v0, v5, v14

    const/4 v0, 0x3

    aput-object v1, v5, v0

    .line 850
    .local v5, "projection":[Ljava/lang/String;
    const-string/jumbo v15, "user_id = ? AND uid = ?"

    .line 853
    .local v15, "selection":Ljava/lang/String;
    new-array v7, v14, [Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v12

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v13

    .line 856
    .local v7, "selectionArguments":[Ljava/lang/String;
    const-string/jumbo v4, "recovery_service_metadata"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v11

    move-object v6, v15

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 855
    .local v3, "cursor":Landroid/database/Cursor;
    nop

    .line 865
    const/4 v4, 0x0

    :try_start_40
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v6
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_44} :catch_9b
    .catchall {:try_start_40 .. :try_end_44} :catchall_99

    .line 866
    .local v6, "count":I
    if-nez v6, :cond_4d

    .line 867
    nop

    .line 883
    if-eqz v3, :cond_4c

    invoke-static {v4, v3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 867
    :cond_4c
    return-object v4

    .line 869
    :cond_4d
    if-le v6, v13, :cond_77

    .line 870
    :try_start_4f
    const-string v8, "RecoverableKeyStoreDb"

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%d entries found for userId=%d uid=%d. Should only ever be 0 or 1."

    new-array v0, v0, [Ljava/lang/Object;

    .line 873
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v0, v12

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v0, v13

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v0, v14

    .line 871
    invoke-static {v9, v10, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 870
    invoke-static {v8, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_70} :catch_9b
    .catchall {:try_start_4f .. :try_end_70} :catchall_99

    .line 874
    nop

    .line 883
    if-eqz v3, :cond_76

    invoke-static {v4, v3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 874
    :cond_76
    return-object v4

    .line 876
    :cond_77
    :try_start_77
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 877
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 878
    .local v0, "idx":I
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_82} :catch_9b
    .catchall {:try_start_77 .. :try_end_82} :catchall_99

    if-eqz v8, :cond_8b

    .line 879
    nop

    .line 883
    if-eqz v3, :cond_8a

    invoke-static {v4, v3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 879
    :cond_8a
    return-object v4

    .line 881
    :cond_8b
    :try_start_8b
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_8b .. :try_end_93} :catch_9b
    .catchall {:try_start_8b .. :try_end_93} :catchall_99

    .line 883
    if-eqz v3, :cond_98

    invoke-static {v4, v3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 881
    :cond_98
    return-object v8

    .line 883
    .end local v0    # "idx":I
    .end local v6    # "count":I
    :catchall_99
    move-exception v0

    goto :goto_9e

    .line 855
    :catch_9b
    move-exception v0

    move-object v4, v0

    :try_start_9d
    throw v4
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_99

    .line 883
    :goto_9e
    if-eqz v3, :cond_a3

    invoke-static {v4, v3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_a3
    throw v0
.end method

.method private getLong(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .registers 23
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "rootAlias"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;

    move-object/from16 v1, p0

    .line 1089
    move-object/from16 v2, p4

    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    move-object/from16 v3, p3

    invoke-virtual {v0, v3}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1090
    .end local p3    # "rootAlias":Ljava/lang/String;
    .local v3, "rootAlias":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    .line 1092
    .local v12, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x5

    new-array v6, v0, [Ljava/lang/String;

    const-string v0, "_id"

    const/4 v13, 0x0

    aput-object v0, v6, v13

    const-string/jumbo v0, "user_id"

    const/4 v14, 0x1

    aput-object v0, v6, v14

    const-string/jumbo v0, "uid"

    const/4 v15, 0x2

    aput-object v0, v6, v15

    const-string/jumbo v0, "root_alias"

    const/4 v11, 0x3

    aput-object v0, v6, v11

    const/4 v0, 0x4

    aput-object v2, v6, v0

    .line 1098
    .local v6, "projection":[Ljava/lang/String;
    const-string/jumbo v16, "user_id = ? AND uid = ? AND root_alias = ?"

    .line 1102
    .local v16, "selection":Ljava/lang/String;
    new-array v8, v11, [Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v13

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v14

    aput-object v3, v8, v15

    .line 1105
    .local v8, "selectionArguments":[Ljava/lang/String;
    const-string/jumbo v5, "root_of_trust"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v0, 0x0

    move-object v4, v12

    move-object/from16 v7, v16

    move v15, v11

    move-object v11, v0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 1104
    .local v4, "cursor":Landroid/database/Cursor;
    nop

    .line 1114
    const/4 v5, 0x0

    :try_start_53
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_57} :catch_af
    .catchall {:try_start_53 .. :try_end_57} :catchall_ad

    .line 1115
    .local v0, "count":I
    if-nez v0, :cond_60

    .line 1116
    nop

    .line 1132
    if-eqz v4, :cond_5f

    invoke-static {v5, v4}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 1116
    :cond_5f
    return-object v5

    .line 1118
    :cond_60
    if-le v0, v14, :cond_8b

    .line 1119
    :try_start_62
    const-string v7, "RecoverableKeyStoreDb"

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%d entries found for userId=%d uid=%d. Should only ever be 0 or 1."

    new-array v11, v15, [Ljava/lang/Object;

    .line 1122
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v11, v13

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v14

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x2

    aput-object v13, v11, v14

    .line 1120
    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1119
    invoke-static {v7, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_84} :catch_af
    .catchall {:try_start_62 .. :try_end_84} :catchall_ad

    .line 1123
    nop

    .line 1132
    if-eqz v4, :cond_8a

    invoke-static {v5, v4}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 1123
    :cond_8a
    return-object v5

    .line 1125
    :cond_8b
    :try_start_8b
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1126
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 1127
    .local v7, "idx":I
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9
    :try_end_96
    .catch Ljava/lang/Throwable; {:try_start_8b .. :try_end_96} :catch_af
    .catchall {:try_start_8b .. :try_end_96} :catchall_ad

    if-eqz v9, :cond_9f

    .line 1128
    nop

    .line 1132
    if-eqz v4, :cond_9e

    invoke-static {v5, v4}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 1128
    :cond_9e
    return-object v5

    .line 1130
    :cond_9f
    :try_start_9f
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9
    :try_end_a7
    .catch Ljava/lang/Throwable; {:try_start_9f .. :try_end_a7} :catch_af
    .catchall {:try_start_9f .. :try_end_a7} :catchall_ad

    .line 1132
    if-eqz v4, :cond_ac

    invoke-static {v5, v4}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 1130
    :cond_ac
    return-object v9

    .line 1132
    .end local v0    # "count":I
    .end local v7    # "idx":I
    :catchall_ad
    move-exception v0

    goto :goto_b2

    .line 1104
    :catch_af
    move-exception v0

    move-object v5, v0

    :try_start_b1
    throw v5
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_ad

    .line 1132
    :goto_b2
    if-eqz v4, :cond_b7

    invoke-static {v5, v4}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_b7
    throw v0
.end method

.method static synthetic lambda$setRecoverySecretTypes$0(Ljava/util/StringJoiner;I)V
    .registers 3
    .param p0, "joiner"    # Ljava/util/StringJoiner;
    .param p1, "i"    # I

    .line 545
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 74
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;-><init>(Landroid/content/Context;)V

    .line 75
    .local v0, "helper":Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 76
    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->setIdleConnectionTimeout(J)V

    .line 77
    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-direct {v1, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;-><init>(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;)V

    return-object v1
.end method

.method private setBytes(IILjava/lang/String;Ljava/lang/String;[B)J
    .registers 12
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "rootAlias"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "value"    # [B

    .line 1062
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    invoke-virtual {v0, p3}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1063
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1064
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1065
    .local v1, "values":Landroid/content/ContentValues;
    invoke-virtual {v1, p4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1066
    const-string/jumbo v2, "user_id = ? AND uid = ? AND root_alias = ?"

    .line 1070
    .local v2, "selection":Ljava/lang/String;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object p3, v3, v4

    .line 1072
    .local v3, "selectionArguments":[Ljava/lang/String;
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureRootOfTrustEntryExists(IILjava/lang/String;)V

    .line 1073
    const-string/jumbo v4, "root_of_trust"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    return-wide v4
.end method

.method private setBytes(IILjava/lang/String;[B)J
    .registers 11
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # [B

    .line 978
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 979
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 980
    .local v1, "values":Landroid/content/ContentValues;
    invoke-virtual {v1, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 981
    const-string/jumbo v2, "user_id = ? AND uid = ?"

    .line 984
    .local v2, "selection":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 986
    .local v3, "selectionArguments":[Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureRecoveryServiceMetadataEntryExists(II)V

    .line 987
    const-string/jumbo v4, "recovery_service_metadata"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    return-wide v4
.end method

.method private setLong(IILjava/lang/String;J)J
    .registers 12
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # J

    .line 899
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 900
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 901
    .local v1, "values":Landroid/content/ContentValues;
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 902
    const-string/jumbo v2, "user_id = ? AND uid = ?"

    .line 905
    .local v2, "selection":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 907
    .local v3, "selectionArguments":[Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureRecoveryServiceMetadataEntryExists(II)V

    .line 908
    const-string/jumbo v4, "recovery_service_metadata"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    return-wide v4
.end method

.method private setLong(IILjava/lang/String;Ljava/lang/String;J)J
    .registers 13
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "rootAlias"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "value"    # J

    .line 1149
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mTestOnlyInsecureCertificateHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    invoke-virtual {v0, p3}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1150
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1151
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1152
    .local v1, "values":Landroid/content/ContentValues;
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1153
    const-string/jumbo v2, "user_id = ? AND uid = ? AND root_alias = ?"

    .line 1157
    .local v2, "selection":Ljava/lang/String;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object p3, v3, v4

    .line 1159
    .local v3, "selectionArguments":[Ljava/lang/String;
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureRootOfTrustEntryExists(IILjava/lang/String;)V

    .line 1160
    const-string/jumbo v4, "root_of_trust"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    return-wide v4
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 1196
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->close()V

    .line 1197
    return-void
.end method

.method public getActiveRootOfTrust(II)Ljava/lang/String;
    .registers 19
    .param p1, "userId"    # I
    .param p2, "uid"    # I

    .line 654
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 656
    .local v10, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v0, "_id"

    const-string/jumbo v2, "user_id"

    const-string/jumbo v3, "uid"

    const-string v4, "active_root_of_trust"

    filled-new-array {v0, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v4

    .line 661
    .local v4, "projection":[Ljava/lang/String;
    const-string/jumbo v11, "user_id = ? AND uid = ?"

    .line 664
    .local v11, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v12, 0x0

    aput-object v2, v6, v12

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v13, 0x1

    aput-object v2, v6, v13

    .line 667
    .local v6, "selectionArguments":[Ljava/lang/String;
    const-string/jumbo v3, "recovery_service_metadata"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v10

    move-object v5, v11

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 666
    .local v2, "cursor":Landroid/database/Cursor;
    nop

    .line 676
    const/4 v3, 0x0

    :try_start_38
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_3c} :catch_a0
    .catchall {:try_start_38 .. :try_end_3c} :catchall_9e

    .line 677
    .local v5, "count":I
    if-nez v5, :cond_45

    .line 678
    nop

    .line 698
    if-eqz v2, :cond_44

    invoke-static {v3, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 678
    :cond_44
    return-object v3

    .line 680
    :cond_45
    if-le v5, v13, :cond_70

    .line 681
    :try_start_47
    const-string v7, "RecoverableKeyStoreDb"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%d deviceId entries found for userId=%d uid=%d. Should only ever be 0 or 1."

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    .line 684
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v12

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v14, v13

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v14, v0

    .line 682
    invoke-static {v8, v9, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 681
    invoke-static {v7, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_69} :catch_a0
    .catchall {:try_start_47 .. :try_end_69} :catchall_9e

    .line 685
    nop

    .line 698
    if-eqz v2, :cond_6f

    invoke-static {v3, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 685
    :cond_6f
    return-object v3

    .line 687
    :cond_70
    :try_start_70
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 688
    const-string v0, "active_root_of_trust"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 690
    .local v0, "idx":I
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_7d} :catch_a0
    .catchall {:try_start_70 .. :try_end_7d} :catchall_9e

    if-eqz v7, :cond_86

    .line 691
    nop

    .line 698
    if-eqz v2, :cond_85

    invoke-static {v3, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 691
    :cond_85
    return-object v3

    .line 693
    :cond_86
    :try_start_86
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 694
    .local v7, "result":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_8e
    .catch Ljava/lang/Throwable; {:try_start_86 .. :try_end_8e} :catch_a0
    .catchall {:try_start_86 .. :try_end_8e} :catchall_9e

    if-eqz v8, :cond_97

    .line 695
    nop

    .line 698
    if-eqz v2, :cond_96

    invoke-static {v3, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 695
    :cond_96
    return-object v3

    .line 697
    :cond_97
    nop

    .line 698
    if-eqz v2, :cond_9d

    invoke-static {v3, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 697
    :cond_9d
    return-object v7

    .line 698
    .end local v0    # "idx":I
    .end local v5    # "count":I
    .end local v7    # "result":Ljava/lang/String;
    :catchall_9e
    move-exception v0

    goto :goto_a3

    .line 666
    :catch_a0
    move-exception v0

    move-object v3, v0

    :try_start_a2
    throw v3
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_9e

    .line 698
    :goto_a3
    if-eqz v2, :cond_a8

    invoke-static {v3, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_a8
    throw v0
.end method

.method public getAllKeys(III)Ljava/util/Map;
    .registers 16
    .param p1, "userId"    # I
    .param p2, "recoveryAgentUid"    # I
    .param p3, "platformKeyGenerationId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;",
            ">;"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 250
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "_id"

    const-string/jumbo v2, "nonce"

    const-string/jumbo v3, "wrapped_key"

    const-string v4, "alias"

    const-string/jumbo v5, "recovery_status"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    .line 256
    .local v3, "projection":[Ljava/lang/String;
    const-string/jumbo v9, "user_id = ? AND uid = ? AND platform_key_generation_id = ?"

    .line 260
    .local v9, "selection":Ljava/lang/String;
    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/String;

    .line 261
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v5, v2

    .line 262
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v5, v2

    .line 263
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v5, v2

    .line 267
    .local v5, "selectionArguments":[Ljava/lang/String;
    const-string/jumbo v2, "keys"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v4, v9

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 266
    .local v1, "cursor":Landroid/database/Cursor;
    nop

    .line 276
    const/4 v2, 0x0

    :try_start_40
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 277
    .local v4, "keys":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;>;"
    :goto_45
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_7f

    .line 278
    const-string/jumbo v6, "nonce"

    .line 279
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 278
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 280
    .local v6, "nonce":[B
    const-string/jumbo v7, "wrapped_key"

    .line 281
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 280
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 282
    .local v7, "keyMaterial":[B
    const-string v8, "alias"

    .line 283
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 282
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 284
    .local v8, "alias":Ljava/lang/String;
    const-string/jumbo v10, "recovery_status"

    .line 285
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 284
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 286
    .local v10, "recoveryStatus":I
    new-instance v11, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;

    invoke-direct {v11, v6, v7, p3, v10}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;-><init>([B[BII)V

    invoke-virtual {v4, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_7e} :catch_88
    .catchall {:try_start_40 .. :try_end_7e} :catchall_86

    .line 288
    .end local v6    # "nonce":[B
    .end local v7    # "keyMaterial":[B
    .end local v8    # "alias":Ljava/lang/String;
    .end local v10    # "recoveryStatus":I
    goto :goto_45

    .line 289
    :cond_7f
    nop

    .line 290
    if-eqz v1, :cond_85

    invoke-static {v2, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 289
    :cond_85
    return-object v4

    .line 290
    .end local v4    # "keys":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;>;"
    :catchall_86
    move-exception v4

    goto :goto_8a

    .line 266
    :catch_88
    move-exception v2

    :try_start_89
    throw v2
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_86

    .line 290
    :goto_8a
    if-eqz v1, :cond_8f

    invoke-static {v2, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_8f
    throw v4
.end method

.method public getCounterId(II)Ljava/lang/Long;
    .registers 4
    .param p1, "userId"    # I
    .param p2, "uid"    # I

    .line 727
    const-string v0, "counter_id"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getLong(IILjava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getKey(ILjava/lang/String;)Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;
    .registers 19
    .param p1, "uid"    # I
    .param p2, "alias"    # Ljava/lang/String;

    .line 116
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 117
    .local v10, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v0, "_id"

    const-string/jumbo v2, "nonce"

    const-string/jumbo v3, "wrapped_key"

    const-string/jumbo v4, "platform_key_generation_id"

    const-string/jumbo v5, "recovery_status"

    filled-new-array {v0, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, "projection":[Ljava/lang/String;
    const-string/jumbo v11, "uid = ? AND alias = ?"

    .line 126
    .local v11, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v12, 0x0

    aput-object v2, v6, v12

    const/4 v13, 0x1

    aput-object p2, v6, v13

    .line 129
    .local v6, "selectionArguments":[Ljava/lang/String;
    const-string/jumbo v3, "keys"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v10

    move-object v5, v11

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 128
    .local v2, "cursor":Landroid/database/Cursor;
    nop

    .line 138
    const/4 v3, 0x0

    :try_start_38
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_3c} :catch_a8
    .catchall {:try_start_38 .. :try_end_3c} :catchall_a6

    .line 139
    .local v5, "count":I
    if-nez v5, :cond_45

    .line 140
    nop

    .line 159
    if-eqz v2, :cond_44

    invoke-static {v3, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 140
    :cond_44
    return-object v3

    .line 142
    :cond_45
    if-le v5, v13, :cond_6c

    .line 143
    :try_start_47
    const-string v7, "RecoverableKeyStoreDb"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%d WrappedKey entries found for uid=%d alias=\'%s\'. Should only ever be 0 or 1."

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    .line 146
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v12

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v14, v13

    aput-object p2, v14, v0

    .line 144
    invoke-static {v8, v9, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {v7, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_65} :catch_a8
    .catchall {:try_start_47 .. :try_end_65} :catchall_a6

    .line 147
    nop

    .line 159
    if-eqz v2, :cond_6b

    invoke-static {v3, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 147
    :cond_6b
    return-object v3

    .line 149
    :cond_6c
    :try_start_6c
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 150
    const-string/jumbo v0, "nonce"

    .line 151
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 150
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 152
    .local v0, "nonce":[B
    const-string/jumbo v7, "wrapped_key"

    .line 153
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 152
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 154
    .local v7, "keyMaterial":[B
    const-string/jumbo v8, "platform_key_generation_id"

    .line 155
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 154
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 156
    .local v8, "generationId":I
    const-string/jumbo v9, "recovery_status"

    .line 157
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 156
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 158
    .local v9, "recoveryStatus":I
    new-instance v12, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;

    invoke-direct {v12, v0, v7, v8, v9}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;-><init>([B[BII)V
    :try_end_a0
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_a0} :catch_a8
    .catchall {:try_start_6c .. :try_end_a0} :catchall_a6

    .line 159
    if-eqz v2, :cond_a5

    invoke-static {v3, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 158
    :cond_a5
    return-object v12

    .line 159
    .end local v0    # "nonce":[B
    .end local v5    # "count":I
    .end local v7    # "keyMaterial":[B
    .end local v8    # "generationId":I
    .end local v9    # "recoveryStatus":I
    :catchall_a6
    move-exception v0

    goto :goto_ab

    .line 128
    :catch_a8
    move-exception v0

    move-object v3, v0

    :try_start_aa
    throw v3
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_a6

    .line 159
    :goto_ab
    if-eqz v2, :cond_b0

    invoke-static {v3, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_b0
    throw v0
.end method

.method public getPlatformKeyGenerationId(I)I
    .registers 12
    .param p1, "userId"    # I

    .line 344
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 345
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "platform_key_generation_id"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    .line 347
    .local v3, "projection":[Ljava/lang/String;
    const-string/jumbo v9, "user_id = ?"

    .line 349
    .local v9, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    .line 350
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v5, v2

    .line 353
    .local v5, "selectionArguments":[Ljava/lang/String;
    const-string/jumbo v2, "user_metadata"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v4, v9

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 352
    .local v1, "cursor":Landroid/database/Cursor;
    nop

    .line 362
    const/4 v2, 0x0

    :try_start_28
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_2c} :catch_4b
    .catchall {:try_start_28 .. :try_end_2c} :catchall_49

    if-nez v4, :cond_35

    .line 363
    const/4 v4, -0x1

    .line 369
    if-eqz v1, :cond_34

    invoke-static {v2, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 363
    :cond_34
    return v4

    .line 365
    :cond_35
    :try_start_35
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 366
    const-string/jumbo v4, "platform_key_generation_id"

    .line 367
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 366
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_43} :catch_4b
    .catchall {:try_start_35 .. :try_end_43} :catchall_49

    .line 369
    if-eqz v1, :cond_48

    invoke-static {v2, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 366
    :cond_48
    return v4

    .line 369
    :catchall_49
    move-exception v4

    goto :goto_4d

    .line 352
    :catch_4b
    move-exception v2

    :try_start_4c
    throw v2
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_49

    .line 369
    :goto_4d
    if-eqz v1, :cond_52

    invoke-static {v2, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_52
    throw v4
.end method

.method public getRecoveryAgents(I)Ljava/util/List;
    .registers 12
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 475
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 477
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "uid"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    .line 478
    .local v3, "projection":[Ljava/lang/String;
    const-string/jumbo v9, "user_id = ?"

    .line 479
    .local v9, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v5, v2

    .line 482
    .local v5, "selectionArguments":[Ljava/lang/String;
    const-string/jumbo v2, "recovery_service_metadata"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v4, v9

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 481
    .local v1, "cursor":Landroid/database/Cursor;
    nop

    .line 491
    const/4 v2, 0x0

    :try_start_28
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 492
    .local v4, "count":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 493
    .local v6, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_31
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 494
    const-string/jumbo v7, "uid"

    .line 495
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 494
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 496
    .local v7, "uid":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_49} :catch_53
    .catchall {:try_start_28 .. :try_end_49} :catchall_51

    .line 497
    .end local v7    # "uid":I
    goto :goto_31

    .line 498
    :cond_4a
    nop

    .line 499
    if-eqz v1, :cond_50

    invoke-static {v2, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 498
    :cond_50
    return-object v6

    .line 499
    .end local v4    # "count":I
    .end local v6    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_51
    move-exception v4

    goto :goto_55

    .line 481
    :catch_53
    move-exception v2

    :try_start_54
    throw v2
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_51

    .line 499
    :goto_55
    if-eqz v1, :cond_5a

    invoke-static {v2, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_5a
    throw v4
.end method

.method public getRecoverySecretTypes(II)[I
    .registers 20
    .param p1, "userId"    # I
    .param p2, "uid"    # I

    .line 566
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 568
    .local v10, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v0, "_id"

    const-string/jumbo v2, "user_id"

    const-string/jumbo v3, "uid"

    const-string/jumbo v4, "secret_types"

    filled-new-array {v0, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v4

    .line 573
    .local v4, "projection":[Ljava/lang/String;
    const-string/jumbo v11, "user_id = ? AND uid = ?"

    .line 576
    .local v11, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v12, 0x0

    aput-object v2, v6, v12

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v13, 0x1

    aput-object v2, v6, v13

    .line 579
    .local v6, "selectionArguments":[Ljava/lang/String;
    const-string/jumbo v3, "recovery_service_metadata"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v10

    move-object v5, v11

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 578
    .local v2, "cursor":Landroid/database/Cursor;
    nop

    .line 588
    const/4 v3, 0x0

    :try_start_39
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    .line 589
    .local v5, "count":I
    if-nez v5, :cond_47

    .line 590
    new-array v0, v12, [I
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_41} :catch_df
    .catchall {:try_start_39 .. :try_end_41} :catchall_dd

    .line 619
    if-eqz v2, :cond_46

    invoke-static {v3, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 590
    :cond_46
    return-object v0

    .line 592
    :cond_47
    if-le v5, v13, :cond_73

    .line 593
    :try_start_49
    const-string v7, "RecoverableKeyStoreDb"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%d deviceId entries found for userId=%d uid=%d. Should only ever be 0 or 1."

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    .line 596
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v12

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v13

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v14, v0

    .line 594
    invoke-static {v8, v9, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 593
    invoke-static {v7, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    new-array v0, v12, [I
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_6d} :catch_df
    .catchall {:try_start_49 .. :try_end_6d} :catchall_dd

    .line 619
    if-eqz v2, :cond_72

    invoke-static {v3, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 597
    :cond_72
    return-object v0

    .line 599
    :cond_73
    :try_start_73
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 600
    const-string/jumbo v0, "secret_types"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    move v7, v0

    .line 602
    .local v7, "idx":I
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 603
    new-array v0, v12, [I
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_86} :catch_df
    .catchall {:try_start_73 .. :try_end_86} :catchall_dd

    .line 619
    if-eqz v2, :cond_8b

    invoke-static {v3, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 603
    :cond_8b
    return-object v0

    .line 605
    :cond_8c
    :try_start_8c
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 606
    .local v8, "csv":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 607
    new-array v0, v12, [I
    :try_end_99
    .catch Ljava/lang/Throwable; {:try_start_8c .. :try_end_99} :catch_df
    .catchall {:try_start_8c .. :try_end_99} :catchall_dd

    .line 619
    if-eqz v2, :cond_9e

    invoke-static {v3, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 607
    :cond_9e
    return-object v0

    .line 609
    :cond_9f
    :try_start_9f
    const-string v0, ","

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 610
    .local v9, "types":[Ljava/lang/String;
    array-length v0, v9

    new-array v0, v0, [I

    move-object v13, v0

    .line 611
    .local v13, "result":[I
    nop

    .line 611
    .local v12, "i":I
    :goto_ab
    array-length v0, v9
    :try_end_ac
    .catch Ljava/lang/Throwable; {:try_start_9f .. :try_end_ac} :catch_df
    .catchall {:try_start_9f .. :try_end_ac} :catchall_dd

    if-ge v12, v0, :cond_d5

    .line 613
    :try_start_ae
    aget-object v0, v9, v12

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v13, v12
    :try_end_b6
    .catch Ljava/lang/NumberFormatException; {:try_start_ae .. :try_end_b6} :catch_b7
    .catch Ljava/lang/Throwable; {:try_start_ae .. :try_end_b6} :catch_df
    .catchall {:try_start_ae .. :try_end_b6} :catchall_dd

    .line 616
    goto :goto_ce

    .line 614
    :catch_b7
    move-exception v0

    .line 615
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_b8
    const-string v14, "RecoverableKeyStoreDb"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String format error "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ce
    .catch Ljava/lang/Throwable; {:try_start_b8 .. :try_end_ce} :catch_df
    .catchall {:try_start_b8 .. :try_end_ce} :catchall_d2

    .line 611
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_ce
    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x0

    goto :goto_ab

    .line 619
    .end local v5    # "count":I
    .end local v7    # "idx":I
    .end local v8    # "csv":Ljava/lang/String;
    .end local v9    # "types":[Ljava/lang/String;
    .end local v12    # "i":I
    .end local v13    # "result":[I
    :catchall_d2
    move-exception v0

    const/4 v3, 0x0

    goto :goto_e2

    .line 618
    .restart local v5    # "count":I
    .restart local v7    # "idx":I
    .restart local v8    # "csv":Ljava/lang/String;
    .restart local v9    # "types":[Ljava/lang/String;
    .restart local v13    # "result":[I
    :cond_d5
    nop

    .line 619
    if-eqz v2, :cond_dc

    const/4 v3, 0x0

    invoke-static {v3, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 618
    :cond_dc
    return-object v13

    .line 619
    .end local v5    # "count":I
    .end local v7    # "idx":I
    .end local v8    # "csv":Ljava/lang/String;
    .end local v9    # "types":[Ljava/lang/String;
    .end local v13    # "result":[I
    :catchall_dd
    move-exception v0

    goto :goto_e2

    .line 578
    :catch_df
    move-exception v0

    move-object v3, v0

    :try_start_e1
    throw v3
    :try_end_e2
    .catchall {:try_start_e1 .. :try_end_e2} :catchall_dd

    .line 619
    :goto_e2
    if-eqz v2, :cond_e7

    invoke-static {v3, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_e7
    throw v0
.end method

.method public getRecoveryServiceCertPath(IILjava/lang/String;)Ljava/security/cert/CertPath;
    .registers 13
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "rootAlias"    # Ljava/lang/String;

    .line 432
    const-string v0, "cert_path"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getBytes(IILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 434
    .local v0, "bytes":[B
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 435
    return-object v1

    .line 438
    :cond_a
    :try_start_a
    invoke-static {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->decodeCertPath([B)Ljava/security/cert/CertPath;

    move-result-object v2
    :try_end_e
    .catch Ljava/security/cert/CertificateException; {:try_start_a .. :try_end_e} :catch_f

    return-object v2

    .line 439
    :catch_f
    move-exception v2

    .line 440
    .local v2, "e":Ljava/security/cert/CertificateException;
    const-string v3, "RecoverableKeyStoreDb"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "Recovery service CertPath entry cannot be decoded for userId=%d uid=%d."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 444
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 441
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 440
    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 445
    return-object v1
.end method

.method public getRecoveryServiceCertSerial(IILjava/lang/String;)Ljava/lang/Long;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "rootAlias"    # Ljava/lang/String;

    .line 399
    const-string v0, "cert_serial"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getLong(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getRecoveryServicePublicKey(II)Ljava/security/PublicKey;
    .registers 12
    .param p1, "userId"    # I
    .param p2, "uid"    # I

    .line 512
    const-string/jumbo v0, "public_key"

    .line 513
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getBytes(IILjava/lang/String;)[B

    move-result-object v0

    .line 514
    .local v0, "keyBytes":[B
    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 515
    return-object v1

    .line 518
    :cond_b
    :try_start_b
    invoke-static {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->decodeX509Key([B)Ljava/security/PublicKey;

    move-result-object v2
    :try_end_f
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_b .. :try_end_f} :catch_10

    return-object v2

    .line 519
    :catch_10
    move-exception v2

    .line 520
    .local v2, "e":Ljava/security/spec/InvalidKeySpecException;
    const-string v3, "RecoverableKeyStoreDb"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "Recovery service public key entry cannot be decoded for userId=%d uid=%d."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 524
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 521
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 520
    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    return-object v1
.end method

.method public getServerParams(II)[B
    .registers 4
    .param p1, "userId"    # I
    .param p2, "uid"    # I

    .line 758
    const-string/jumbo v0, "server_params"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getBytes(IILjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getShouldCreateSnapshot(II)Z
    .registers 8
    .param p1, "userId"    # I
    .param p2, "uid"    # I

    .line 826
    const-string/jumbo v0, "should_create_snapshot"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getLong(IILjava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 828
    .local v0, "res":Ljava/lang/Long;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return v1
.end method

.method public getSnapshotVersion(II)Ljava/lang/Long;
    .registers 4
    .param p1, "userId"    # I
    .param p2, "uid"    # I

    .line 787
    const-string/jumbo v0, "snapshot_version"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getLong(IILjava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getStatusForAllKeys(I)Ljava/util/Map;
    .registers 12
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 186
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "_id"

    const-string v2, "alias"

    const-string/jumbo v3, "recovery_status"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, "projection":[Ljava/lang/String;
    const-string/jumbo v9, "uid = ?"

    .line 192
    .local v9, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v5, v2

    .line 195
    .local v5, "selectionArguments":[Ljava/lang/String;
    const-string/jumbo v2, "keys"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v4, v9

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 194
    .local v1, "cursor":Landroid/database/Cursor;
    nop

    .line 204
    const/4 v2, 0x0

    :try_start_2c
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 205
    .local v4, "statuses":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_31
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_54

    .line 206
    const-string v6, "alias"

    .line 207
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 206
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 208
    .local v6, "alias":Ljava/lang/String;
    const-string/jumbo v7, "recovery_status"

    .line 209
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 208
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 210
    .local v7, "recoveryStatus":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_53} :catch_5d
    .catchall {:try_start_2c .. :try_end_53} :catchall_5b

    .line 211
    .end local v6    # "alias":Ljava/lang/String;
    .end local v7    # "recoveryStatus":I
    goto :goto_31

    .line 212
    :cond_54
    nop

    .line 213
    if-eqz v1, :cond_5a

    invoke-static {v2, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 212
    :cond_5a
    return-object v4

    .line 213
    .end local v4    # "statuses":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_5b
    move-exception v4

    goto :goto_5f

    .line 194
    :catch_5d
    move-exception v2

    :try_start_5e
    throw v2
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5b

    .line 213
    :goto_5f
    if-eqz v1, :cond_64

    invoke-static {v2, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_64
    throw v4
.end method

.method public insertKey(IILjava/lang/String;Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;)J
    .registers 9
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "wrappedKey"    # Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;

    .line 97
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 98
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 99
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "user_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    const-string/jumbo v2, "uid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    const-string v2, "alias"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string/jumbo v2, "nonce"

    invoke-virtual {p4}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->getNonce()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 103
    const-string/jumbo v2, "wrapped_key"

    invoke-virtual {p4}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->getKeyMaterial()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 104
    const-string/jumbo v2, "last_synced_at"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    const-string/jumbo v2, "platform_key_generation_id"

    invoke-virtual {p4}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->getPlatformKeyGenerationId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    const-string/jumbo v2, "recovery_status"

    invoke-virtual {p4}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->getRecoveryStatus()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    const-string/jumbo v2, "keys"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method public invalidateKeysForUserIdOnCustomScreenLock(I)V
    .registers 9
    .param p1, "userId"    # I

    .line 330
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 331
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 332
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "recovery_status"

    .line 333
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 332
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 334
    const-string/jumbo v2, "user_id = ?"

    .line 336
    .local v2, "selection":Ljava/lang/String;
    const-string/jumbo v3, "keys"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 337
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 336
    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 338
    return-void
.end method

.method public invalidateKeysWithOldGenerationId(II)V
    .registers 10
    .param p1, "userId"    # I
    .param p2, "newGenerationId"    # I

    .line 315
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 316
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 317
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "recovery_status"

    .line 318
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 317
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 319
    const-string/jumbo v2, "user_id = ? AND platform_key_generation_id < ?"

    .line 322
    .local v2, "selection":Ljava/lang/String;
    const-string/jumbo v3, "keys"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    .line 323
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 322
    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 324
    return-void
.end method

.method public removeKey(ILjava/lang/String;)Z
    .registers 9
    .param p1, "uid"    # I
    .param p2, "alias"    # Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 169
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "uid = ? AND alias = ?"

    .line 171
    .local v1, "selection":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    .line 172
    .local v2, "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v5, "keys"

    invoke-virtual {v0, v5, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_20

    goto :goto_21

    :cond_20
    move v3, v4

    :goto_21
    return v3
.end method

.method public setActiveRootOfTrust(IILjava/lang/String;)J
    .registers 11
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "rootAlias"    # Ljava/lang/String;

    .line 633
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 634
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 635
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "active_root_of_trust"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const-string/jumbo v2, "user_id = ? AND uid = ?"

    .line 639
    .local v2, "selection":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureRecoveryServiceMetadataEntryExists(II)V

    .line 640
    const-string/jumbo v3, "recovery_service_metadata"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    .line 641
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 640
    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    return-wide v3
.end method

.method public setCounterId(IIJ)J
    .registers 11
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "counterId"    # J

    .line 712
    const-string v3, "counter_id"

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setLong(IILjava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public setPlatformKeyGenerationId(II)J
    .registers 9
    .param p1, "userId"    # I
    .param p2, "generationId"    # I

    .line 299
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 300
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 301
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "user_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 302
    const-string/jumbo v2, "platform_key_generation_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 303
    const-string/jumbo v2, "user_metadata"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 305
    .local v2, "result":J
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_30

    .line 306
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->invalidateKeysWithOldGenerationId(II)V

    .line 308
    :cond_30
    return-wide v2
.end method

.method public setRecoverySecretTypes(II[I)J
    .registers 13
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "secretTypes"    # [I

    .line 542
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 543
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 544
    .local v1, "values":Landroid/content/ContentValues;
    new-instance v2, Ljava/util/StringJoiner;

    const-string v3, ","

    invoke-direct {v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 545
    .local v2, "joiner":Ljava/util/StringJoiner;
    invoke-static {p3}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v3

    new-instance v4, Lcom/android/server/locksettings/recoverablekeystore/storage/-$$Lambda$RecoverableKeyStoreDb$knfkhmVPS_11tGWkGt87bH4xjYg;

    invoke-direct {v4, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/-$$Lambda$RecoverableKeyStoreDb$knfkhmVPS_11tGWkGt87bH4xjYg;-><init>(Ljava/util/StringJoiner;)V

    invoke-interface {v3, v4}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 546
    invoke-virtual {v2}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v3

    .line 547
    .local v3, "typesAsCsv":Ljava/lang/String;
    const-string/jumbo v4, "secret_types"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    const-string/jumbo v4, "user_id = ? AND uid = ?"

    .line 551
    .local v4, "selection":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureRecoveryServiceMetadataEntryExists(II)V

    .line 552
    const-string/jumbo v5, "recovery_service_metadata"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    .line 553
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 552
    invoke-virtual {v0, v5, v1, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    int-to-long v5, v5

    return-wide v5
.end method

.method public setRecoveryServiceCertPath(IILjava/lang/String;Ljava/security/cert/CertPath;)J
    .registers 12
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "rootAlias"    # Ljava/lang/String;
    .param p4, "certPath"    # Ljava/security/cert/CertPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 461
    invoke-virtual {p4}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1b

    .line 464
    const-string v5, "cert_path"

    const-string v0, "PkiPath"

    .line 465
    invoke-virtual {p4, v0}, Ljava/security/cert/CertPath;->getEncoded(Ljava/lang/String;)[B

    move-result-object v6

    .line 464
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setBytes(IILjava/lang/String;Ljava/lang/String;[B)J

    move-result-wide v0

    return-wide v0

    .line 462
    :cond_1b
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    const-string v1, "No certificate contained in the cert path."

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRecoveryServiceCertSerial(IILjava/lang/String;J)J
    .registers 13
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "rootAlias"    # Ljava/lang/String;
    .param p4, "serial"    # J

    .line 416
    const-string v4, "cert_serial"

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setLong(IILjava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public setRecoveryServicePublicKey(IILjava/security/PublicKey;)J
    .registers 6
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "publicKey"    # Ljava/security/PublicKey;

    .line 383
    const-string/jumbo v0, "public_key"

    .line 384
    invoke-interface {p3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    .line 383
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setBytes(IILjava/lang/String;[B)J

    move-result-wide v0

    return-wide v0
.end method

.method public setRecoveryStatus(ILjava/lang/String;I)I
    .registers 11
    .param p1, "uid"    # I
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "status"    # I

    .line 225
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 226
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 227
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "recovery_status"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 228
    const-string/jumbo v2, "uid = ? AND alias = ?"

    .line 231
    .local v2, "selection":Ljava/lang/String;
    const-string/jumbo v3, "keys"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    .line 232
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p2, v4, v5

    .line 231
    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public setServerParams(II[B)J
    .registers 6
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "serverParams"    # [B

    .line 742
    const-string/jumbo v0, "server_params"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setBytes(IILjava/lang/String;[B)J

    move-result-wide v0

    return-wide v0
.end method

.method public setShouldCreateSnapshot(IIZ)J
    .registers 10
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "pending"    # Z

    .line 811
    const-string/jumbo v3, "should_create_snapshot"

    .line 812
    if-eqz p3, :cond_9

    const-wide/16 v0, 0x1

    .line 811
    :goto_7
    move-wide v4, v0

    goto :goto_c

    .line 812
    :cond_9
    const-wide/16 v0, 0x0

    goto :goto_7

    .line 811
    :goto_c
    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setLong(IILjava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public setSnapshotVersion(IIJ)J
    .registers 11
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "snapshotVersion"    # J

    .line 772
    const-string/jumbo v3, "snapshot_version"

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setLong(IILjava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
