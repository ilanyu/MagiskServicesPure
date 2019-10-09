.class public Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;
.super Ljava/lang/Object;
.source "KeyChainSnapshotDeserializer.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deserialize(Ljava/io/InputStream;)Landroid/security/keystore/recovery/KeyChainSnapshot;
    .registers 4
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    :try_start_0
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->deserializeInternal(Ljava/io/InputStream;)Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object v0
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 81
    :catch_5
    move-exception v0

    .line 82
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    const-string v2, "Malformed KeyChainSnapshot XML"

    invoke-direct {v1, v2, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static deserializeInternal(Ljava/io/InputStream;)Landroid/security/keystore/recovery/KeyChainSnapshot;
    .registers 10
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;
        }
    .end annotation

    .line 88
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 89
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v1, "UTF-8"

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 91
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 92
    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v2, "keyChainSnapshot"

    const/4 v3, 0x2

    invoke-interface {v0, v3, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v1, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    invoke-direct {v1}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;-><init>()V

    .line 95
    .local v1, "builder":Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;
    :goto_1a
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_10a

    .line 96
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    if-eq v2, v3, :cond_28

    .line 97
    goto :goto_1a

    .line 100
    :cond_28
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "name":Ljava/lang/String;
    const/4 v5, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    sparse-switch v6, :sswitch_data_122

    goto :goto_97

    :sswitch_37
    const-string/jumbo v6, "serverParams"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_97

    goto :goto_98

    :sswitch_41
    const-string/jumbo v4, "keyChainProtectionParamsList"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_97

    const/4 v4, 0x7

    goto :goto_98

    :sswitch_4c
    const-string v4, "counterId"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_97

    move v4, v3

    goto :goto_98

    :sswitch_56
    const-string v4, "applicationKeysList"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_97

    const/16 v4, 0x8

    goto :goto_98

    :sswitch_61
    const-string/jumbo v4, "snapshotVersion"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_97

    move v4, v8

    goto :goto_98

    :sswitch_6c
    const-string/jumbo v4, "thmCertPath"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_97

    const/4 v4, 0x5

    goto :goto_98

    :sswitch_77
    const-string/jumbo v4, "recoveryKeyMaterial"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_97

    move v4, v7

    goto :goto_98

    :sswitch_82
    const-string v4, "backendPublicKey"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_97

    const/4 v4, 0x6

    goto :goto_98

    :sswitch_8c
    const-string/jumbo v4, "maxAttempts"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_97

    const/4 v4, 0x4

    goto :goto_98

    :cond_97
    :goto_97
    move v4, v5

    :goto_98
    packed-switch v4, :pswitch_data_148

    .line 147
    new-instance v3, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v8

    const-string v6, "Unexpected tag %s in keyChainSnapshot"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 143
    :pswitch_ad
    invoke-static {v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readWrappedApplicationKeys(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setWrappedApplicationKeys(Ljava/util/List;)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    .line 144
    goto :goto_108

    .line 139
    :pswitch_b5
    invoke-static {v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readKeyChainProtectionParamsList(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setKeyChainProtectionParams(Ljava/util/List;)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    .line 140
    goto :goto_108

    .line 136
    :pswitch_bd
    goto :goto_108

    .line 126
    :pswitch_be
    :try_start_be
    const-string/jumbo v4, "thmCertPath"

    .line 127
    invoke-static {v0, v4}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readCertPathTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/security/cert/CertPath;

    move-result-object v4

    .line 126
    invoke-virtual {v1, v4}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setTrustedHardwareCertPath(Ljava/security/cert/CertPath;)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;
    :try_end_c8
    .catch Ljava/security/cert/CertificateException; {:try_start_be .. :try_end_c8} :catch_c9

    .line 131
    goto :goto_108

    .line 128
    :catch_c9
    move-exception v3

    .line 129
    .local v3, "e":Ljava/security/cert/CertificateException;
    new-instance v4, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    const-string v5, "Could not set trustedHardwareCertPath"

    invoke-direct {v4, v5, v3}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 121
    .end local v3    # "e":Ljava/security/cert/CertificateException;
    :pswitch_d2
    const-string/jumbo v4, "maxAttempts"

    invoke-static {v0, v4}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readIntTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setMaxAttempts(I)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    .line 122
    goto :goto_108

    .line 117
    :pswitch_dd
    const-string/jumbo v4, "serverParams"

    invoke-static {v0, v4}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readBlobTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setServerParams([B)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    .line 118
    goto :goto_108

    .line 113
    :pswitch_e8
    const-string v4, "counterId"

    invoke-static {v0, v4}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readLongTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setCounterId(J)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    .line 114
    goto :goto_108

    .line 108
    :pswitch_f2
    const-string/jumbo v4, "recoveryKeyMaterial"

    .line 109
    invoke-static {v0, v4}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readBlobTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[B

    move-result-object v4

    .line 108
    invoke-virtual {v1, v4}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setEncryptedRecoveryKeyBlob([B)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    .line 110
    goto :goto_108

    .line 104
    :pswitch_fd
    const-string/jumbo v4, "snapshotVersion"

    invoke-static {v0, v4}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readIntTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setSnapshotVersion(I)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    .line 105
    nop

    .line 150
    .end local v2    # "name":Ljava/lang/String;
    :goto_108
    goto/16 :goto_1a

    .line 152
    :cond_10a
    sget-object v2, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v3, "keyChainSnapshot"

    invoke-interface {v0, v4, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 154
    :try_start_112
    invoke-virtual {v1}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->build()Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object v2
    :try_end_116
    .catch Ljava/lang/NullPointerException; {:try_start_112 .. :try_end_116} :catch_117

    return-object v2

    .line 155
    :catch_117
    move-exception v2

    .line 156
    .local v2, "e":Ljava/lang/NullPointerException;
    new-instance v3, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    const-string v4, "Failed to build KeyChainSnapshot"

    invoke-direct {v3, v4, v2}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    nop

    nop

    :sswitch_data_122
    .sparse-switch
        -0x66841336 -> :sswitch_8c
        -0x52c1d0fe -> :sswitch_82
        -0x51ae5e2f -> :sswitch_77
        -0x5190b3fe -> :sswitch_6c
        0x1caf9a74 -> :sswitch_61
        0x46f25222 -> :sswitch_56
        0x5099d037 -> :sswitch_4c
        0x5f2e61bf -> :sswitch_41
        0x6bb456a9 -> :sswitch_37
    .end sparse-switch

    :pswitch_data_148
    .packed-switch 0x0
        :pswitch_fd
        :pswitch_f2
        :pswitch_e8
        :pswitch_dd
        :pswitch_d2
        :pswitch_be
        :pswitch_bd
        :pswitch_b5
        :pswitch_ad
    .end packed-switch
.end method

.method private static readBlobTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[B
    .registers 8
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;
        }
    .end annotation

    .line 369
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-interface {p0, v1, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "text":Ljava/lang/String;
    sget-object v2, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-interface {p0, v3, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 374
    const/4 v2, 0x0

    :try_start_11
    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_15} :catch_16

    return-object v3

    .line 375
    :catch_16
    move-exception v3

    .line 376
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 377
    const-string v2, "%s expected base64 encoded bytes but got \'%s\'"

    invoke-static {v5, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1, v3}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private static readCertPathTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/security/cert/CertPath;
    .registers 7
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;
        }
    .end annotation

    .line 386
    invoke-static {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readBlobTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[B

    move-result-object v0

    .line 388
    .local v0, "bytes":[B
    :try_start_4
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 389
    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/io/InputStream;)Ljava/security/cert/CertPath;

    move-result-object v1
    :try_end_13
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_13} :catch_14

    .line 388
    return-object v1

    .line 390
    :catch_14
    move-exception v1

    .line 391
    .local v1, "e":Ljava/security/cert/CertificateException;
    new-instance v2, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse CertPath in tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static readIntTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .registers 8
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;
        }
    .end annotation

    .line 333
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-interface {p0, v1, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "text":Ljava/lang/String;
    sget-object v2, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-interface {p0, v3, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 337
    :try_start_10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_18} :catch_19

    return v2

    .line 338
    :catch_19
    move-exception v2

    .line 339
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v1, v5

    const/4 v5, 0x1

    aput-object v0, v1, v5

    .line 340
    const-string v5, "%s expected int but got \'%s\'"

    invoke-static {v4, v5, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static readKeyChainProtectionParams(Lorg/xmlpull/v1/XmlPullParser;)Landroid/security/keystore/recovery/KeyChainProtectionParams;
    .registers 9
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;
        }
    .end annotation

    .line 227
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v1, "keyChainProtectionParams"

    const/4 v2, 0x2

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 229
    new-instance v0, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    invoke-direct {v0}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;-><init>()V

    .line 230
    .local v0, "builder":Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;
    :goto_e
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_8b

    .line 231
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    if-eq v1, v2, :cond_1c

    .line 232
    goto :goto_e

    .line 235
    :cond_1c
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "name":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x2e4cfbbb

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v4, v5, :cond_4d

    const v5, -0x298abfcb

    if-eq v4, v5, :cond_42

    const v5, 0x3662dd9c

    if-eq v4, v5, :cond_37

    goto :goto_57

    :cond_37
    const-string/jumbo v4, "keyDerivationParams"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    move v3, v2

    goto :goto_57

    :cond_42
    const-string/jumbo v4, "userSecretType"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    move v3, v7

    goto :goto_57

    :cond_4d
    const-string/jumbo v4, "lockScreenUiType"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    move v3, v6

    :cond_57
    :goto_57
    packed-switch v3, :pswitch_data_a2

    .line 251
    new-instance v2, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    const-string v5, "Unexpected tag %s in keyChainProtectionParams"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 247
    :pswitch_6c
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readKeyDerivationParams(Lorg/xmlpull/v1/XmlPullParser;)Landroid/security/keystore/recovery/KeyDerivationParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->setKeyDerivationParams(Landroid/security/keystore/recovery/KeyDerivationParams;)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    .line 248
    goto :goto_8a

    .line 243
    :pswitch_74
    const-string/jumbo v3, "userSecretType"

    invoke-static {p0, v3}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readIntTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->setUserSecretType(I)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    .line 244
    goto :goto_8a

    .line 239
    :pswitch_7f
    const-string/jumbo v3, "lockScreenUiType"

    invoke-static {p0, v3}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readIntTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->setLockScreenUiFormat(I)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    .line 240
    nop

    .line 257
    .end local v1    # "name":Ljava/lang/String;
    :goto_8a
    goto :goto_e

    .line 259
    :cond_8b
    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v2, "keyChainProtectionParams"

    invoke-interface {p0, v3, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 262
    :try_start_93
    invoke-virtual {v0}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->build()Landroid/security/keystore/recovery/KeyChainProtectionParams;

    move-result-object v1
    :try_end_97
    .catch Ljava/lang/NullPointerException; {:try_start_93 .. :try_end_97} :catch_98

    return-object v1

    .line 263
    :catch_98
    move-exception v1

    .line 264
    .local v1, "e":Ljava/lang/NullPointerException;
    new-instance v2, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    const-string v3, "Failed to build KeyChainProtectionParams"

    invoke-direct {v2, v3, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    nop

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_7f
        :pswitch_74
        :pswitch_6c
    .end packed-switch
.end method

.method private static readKeyChainProtectionParamsList(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .registers 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/KeyChainProtectionParams;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;
        }
    .end annotation

    .line 211
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v1, "keyChainProtectionParamsList"

    const/4 v2, 0x2

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v0, "keyChainProtectionParamsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/security/keystore/recovery/KeyChainProtectionParams;>;"
    :goto_e
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_24

    .line 215
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    if-eq v1, v2, :cond_1c

    .line 216
    goto :goto_e

    .line 218
    :cond_1c
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readKeyChainProtectionParams(Lorg/xmlpull/v1/XmlPullParser;)Landroid/security/keystore/recovery/KeyChainProtectionParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 221
    :cond_24
    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v2, "keyChainProtectionParamsList"

    invoke-interface {p0, v3, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 222
    return-object v0
.end method

.method private static readKeyDerivationParams(Lorg/xmlpull/v1/XmlPullParser;)Landroid/security/keystore/recovery/KeyDerivationParams;
    .registers 11
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;
        }
    .end annotation

    .line 271
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v1, "keyDerivationParams"

    const/4 v2, 0x2

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 273
    const/4 v0, -0x1

    .line 274
    .local v0, "memoryDifficulty":I
    const/4 v1, -0x1

    .line 275
    .local v1, "algorithm":I
    const/4 v3, 0x0

    .line 277
    .local v3, "salt":[B
    :goto_c
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_81

    .line 278
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    if-eq v4, v2, :cond_1a

    .line 279
    goto :goto_c

    .line 282
    :cond_1a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 284
    .local v4, "name":Ljava/lang/String;
    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x3a02fc64

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v6, v7, :cond_4a

    const v7, 0x35c056

    if-eq v6, v7, :cond_3f

    const v7, 0xd70b46f

    if-eq v6, v7, :cond_35

    goto :goto_54

    :cond_35
    const-string v6, "algorithm"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_54

    move v5, v9

    goto :goto_54

    :cond_3f
    const-string/jumbo v6, "salt"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_54

    move v5, v2

    goto :goto_54

    :cond_4a
    const-string/jumbo v6, "memoryDifficulty"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_54

    move v5, v8

    :cond_54
    :goto_54
    packed-switch v5, :pswitch_data_ac

    .line 298
    new-instance v2, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v4, v6, v8

    .line 299
    const-string v7, "Unexpected tag %s in keyDerivationParams"

    invoke-static {v5, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 294
    :pswitch_69
    const-string/jumbo v5, "salt"

    invoke-static {p0, v5}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readBlobTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[B

    move-result-object v3

    .line 295
    goto :goto_80

    .line 290
    :pswitch_71
    const-string v5, "algorithm"

    invoke-static {p0, v5}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readIntTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    .line 291
    goto :goto_80

    .line 286
    :pswitch_78
    const-string/jumbo v5, "memoryDifficulty"

    invoke-static {p0, v5}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readIntTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    .line 287
    nop

    .line 304
    .end local v4    # "name":Ljava/lang/String;
    :goto_80
    goto :goto_c

    .line 306
    :cond_81
    if-eqz v3, :cond_a2

    .line 310
    const/4 v2, 0x0

    .line 312
    .local v2, "keyDerivationParams":Landroid/security/keystore/recovery/KeyDerivationParams;
    packed-switch v1, :pswitch_data_b6

    .line 323
    new-instance v4, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    const-string v5, "Unknown algorithm in keyDerivationParams"

    invoke-direct {v4, v5}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 318
    :pswitch_8f
    invoke-static {v3, v0}, Landroid/security/keystore/recovery/KeyDerivationParams;->createScryptParams([BI)Landroid/security/keystore/recovery/KeyDerivationParams;

    move-result-object v2

    .line 320
    goto :goto_99

    .line 314
    :pswitch_94
    invoke-static {v3}, Landroid/security/keystore/recovery/KeyDerivationParams;->createSha256Params([B)Landroid/security/keystore/recovery/KeyDerivationParams;

    move-result-object v2

    .line 315
    nop

    .line 327
    :goto_99
    sget-object v4, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v6, "keyDerivationParams"

    invoke-interface {p0, v5, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 328
    return-object v2

    .line 307
    .end local v2    # "keyDerivationParams":Landroid/security/keystore/recovery/KeyDerivationParams;
    :cond_a2
    new-instance v2, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    const-string/jumbo v4, "salt was not set in keyDerivationParams"

    invoke-direct {v2, v4}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_78
        :pswitch_71
        :pswitch_69
    .end packed-switch

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_94
        :pswitch_8f
    .end packed-switch
.end method

.method private static readLongTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .registers 8
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;
        }
    .end annotation

    .line 347
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-interface {p0, v1, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "text":Ljava/lang/String;
    sget-object v2, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-interface {p0, v3, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 351
    :try_start_10
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_18} :catch_19

    return-wide v2

    .line 352
    :catch_19
    move-exception v2

    .line 353
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v1, v5

    const/4 v5, 0x1

    aput-object v0, v1, v5

    .line 354
    const-string v5, "%s expected long but got \'%s\'"

    invoke-static {v4, v5, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static readStringTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 361
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-interface {p0, v1, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, "text":Ljava/lang/String;
    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-interface {p0, v2, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 364
    return-object v0
.end method

.method private static readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .registers 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 398
    const-string v0, ""

    .line 399
    .local v0, "result":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_10

    .line 400
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 401
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 403
    :cond_10
    return-object v0
.end method

.method private static readWrappedApplicationKey(Lorg/xmlpull/v1/XmlPullParser;)Landroid/security/keystore/recovery/WrappedApplicationKey;
    .registers 9
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;
        }
    .end annotation

    .line 176
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string v1, "applicationKey"

    const/4 v2, 0x2

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 177
    new-instance v0, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;

    invoke-direct {v0}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;-><init>()V

    .line 178
    .local v0, "builder":Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;
    :goto_d
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_70

    .line 179
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    if-eq v1, v2, :cond_1b

    .line 180
    goto :goto_d

    .line 183
    :cond_1b
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "name":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x3969675a

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v4, v5, :cond_3b

    const v5, 0x5899650

    if-eq v4, v5, :cond_31

    goto :goto_45

    :cond_31
    const-string v4, "alias"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    move v3, v7

    goto :goto_45

    :cond_3b
    const-string/jumbo v4, "keyMaterial"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    move v3, v6

    :cond_45
    :goto_45
    packed-switch v3, :pswitch_data_86

    .line 195
    new-instance v2, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v7

    const-string v5, "Unexpected tag %s in wrappedApplicationKey"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 191
    :pswitch_5a
    const-string/jumbo v3, "keyMaterial"

    invoke-static {p0, v3}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readBlobTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->setEncryptedKeyMaterial([B)Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;

    .line 192
    goto :goto_6f

    .line 187
    :pswitch_65
    const-string v3, "alias"

    invoke-static {p0, v3}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readStringTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->setAlias(Ljava/lang/String;)Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;

    .line 188
    nop

    .line 198
    .end local v1    # "name":Ljava/lang/String;
    :goto_6f
    goto :goto_d

    .line 199
    :cond_70
    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string v2, "applicationKey"

    invoke-interface {p0, v3, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 202
    :try_start_77
    invoke-virtual {v0}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->build()Landroid/security/keystore/recovery/WrappedApplicationKey;

    move-result-object v1
    :try_end_7b
    .catch Ljava/lang/NullPointerException; {:try_start_77 .. :try_end_7b} :catch_7c

    return-object v1

    .line 203
    :catch_7c
    move-exception v1

    .line 204
    .local v1, "e":Ljava/lang/NullPointerException;
    new-instance v2, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    const-string v3, "Failed to build WrappedApplicationKey"

    invoke-direct {v2, v3, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    nop

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_65
        :pswitch_5a
    .end packed-switch
.end method

.method private static readWrappedApplicationKeys(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .registers 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/WrappedApplicationKey;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;
        }
    .end annotation

    .line 162
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string v1, "applicationKeysList"

    const/4 v2, 0x2

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v0, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/security/keystore/recovery/WrappedApplicationKey;>;"
    :goto_d
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_23

    .line 165
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    if-eq v1, v2, :cond_1b

    .line 166
    goto :goto_d

    .line 168
    :cond_1b
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readWrappedApplicationKey(Lorg/xmlpull/v1/XmlPullParser;)Landroid/security/keystore/recovery/WrappedApplicationKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 170
    :cond_23
    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string v2, "applicationKeysList"

    invoke-interface {p0, v3, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 171
    return-object v0
.end method
