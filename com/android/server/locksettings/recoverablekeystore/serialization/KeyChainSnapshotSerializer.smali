.class public Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;
.super Ljava/lang/Object;
.source "KeyChainSnapshotSerializer.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static serialize(Landroid/security/keystore/recovery/KeyChainSnapshot;Ljava/io/OutputStream;)V
    .registers 5
    .param p0, "keyChainSnapshot"    # Landroid/security/keystore/recovery/KeyChainSnapshot;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 75
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    .line 76
    .local v0, "xmlSerializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string v1, "UTF-8"

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 77
    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 80
    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v2, "keyChainSnapshot"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 81
    invoke-static {v0, p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writeKeyChainSnapshotProperties(Lorg/xmlpull/v1/XmlSerializer;Landroid/security/keystore/recovery/KeyChainSnapshot;)V

    .line 82
    nop

    .line 83
    invoke-virtual {p0}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getKeyChainProtectionParams()Ljava/util/List;

    move-result-object v1

    .line 82
    invoke-static {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writeKeyChainProtectionParams(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 84
    nop

    .line 85
    invoke-virtual {p0}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getWrappedApplicationKeys()Ljava/util/List;

    move-result-object v1

    .line 84
    invoke-static {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writeApplicationKeys(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 86
    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v2, "keyChainSnapshot"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 87
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 88
    return-void
.end method

.method private static writeApplicationKeyProperties(Lorg/xmlpull/v1/XmlSerializer;Landroid/security/keystore/recovery/WrappedApplicationKey;)V
    .registers 4
    .param p0, "xmlSerializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "applicationKey"    # Landroid/security/keystore/recovery/WrappedApplicationKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    const-string v0, "alias"

    invoke-virtual {p1}, Landroid/security/keystore/recovery/WrappedApplicationKey;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string/jumbo v0, "keyMaterial"

    invoke-virtual {p1}, Landroid/security/keystore/recovery/WrappedApplicationKey;->getEncryptedKeyMaterial()[B

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V

    .line 106
    return-void
.end method

.method private static writeApplicationKeys(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V
    .registers 6
    .param p0, "xmlSerializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/WrappedApplicationKey;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    .local p1, "wrappedApplicationKeys":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/WrappedApplicationKey;>;"
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string v1, "applicationKeysList"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 94
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/keystore/recovery/WrappedApplicationKey;

    .line 95
    .local v1, "key":Landroid/security/keystore/recovery/WrappedApplicationKey;
    sget-object v2, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string v3, "applicationKey"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 96
    invoke-static {p0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writeApplicationKeyProperties(Lorg/xmlpull/v1/XmlSerializer;Landroid/security/keystore/recovery/WrappedApplicationKey;)V

    .line 97
    sget-object v2, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string v3, "applicationKey"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 98
    .end local v1    # "key":Landroid/security/keystore/recovery/WrappedApplicationKey;
    goto :goto_b

    .line 99
    :cond_29
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string v1, "applicationKeysList"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 100
    return-void
.end method

.method private static writeKeyChainProtectionParams(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V
    .registers 6
    .param p0, "xmlSerializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/KeyChainProtectionParams;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    .local p1, "keyChainProtectionParamsList":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/KeyChainProtectionParams;>;"
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v1, "keyChainProtectionParamsList"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 112
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/keystore/recovery/KeyChainProtectionParams;

    .line 113
    .local v1, "keyChainProtectionParams":Landroid/security/keystore/recovery/KeyChainProtectionParams;
    sget-object v2, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v3, "keyChainProtectionParams"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 114
    invoke-static {p0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writeKeyChainProtectionParamsProperties(Lorg/xmlpull/v1/XmlSerializer;Landroid/security/keystore/recovery/KeyChainProtectionParams;)V

    .line 115
    sget-object v2, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v3, "keyChainProtectionParams"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 116
    .end local v1    # "keyChainProtectionParams":Landroid/security/keystore/recovery/KeyChainProtectionParams;
    goto :goto_c

    .line 117
    :cond_2c
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v1, "keyChainProtectionParamsList"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 118
    return-void
.end method

.method private static writeKeyChainProtectionParamsProperties(Lorg/xmlpull/v1/XmlSerializer;Landroid/security/keystore/recovery/KeyChainProtectionParams;)V
    .registers 5
    .param p0, "xmlSerializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "keyChainProtectionParams"    # Landroid/security/keystore/recovery/KeyChainProtectionParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    const-string/jumbo v0, "userSecretType"

    .line 124
    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->getUserSecretType()I

    move-result v1

    int-to-long v1, v1

    .line 123
    invoke-static {p0, v0, v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 125
    const-string/jumbo v0, "lockScreenUiType"

    .line 126
    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->getLockScreenUiFormat()I

    move-result v1

    int-to-long v1, v1

    .line 125
    invoke-static {p0, v0, v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 131
    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->getKeyDerivationParams()Landroid/security/keystore/recovery/KeyDerivationParams;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writeKeyDerivationParams(Lorg/xmlpull/v1/XmlSerializer;Landroid/security/keystore/recovery/KeyDerivationParams;)V

    .line 132
    return-void
.end method

.method private static writeKeyChainSnapshotProperties(Lorg/xmlpull/v1/XmlSerializer;Landroid/security/keystore/recovery/KeyChainSnapshot;)V
    .registers 5
    .param p0, "xmlSerializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "keyChainSnapshot"    # Landroid/security/keystore/recovery/KeyChainSnapshot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 156
    const-string/jumbo v0, "snapshotVersion"

    .line 157
    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getSnapshotVersion()I

    move-result v1

    int-to-long v1, v1

    .line 156
    invoke-static {p0, v0, v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 158
    const-string/jumbo v0, "maxAttempts"

    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getMaxAttempts()I

    move-result v1

    int-to-long v1, v1

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 159
    const-string v0, "counterId"

    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getCounterId()J

    move-result-wide v1

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 160
    const-string/jumbo v0, "recoveryKeyMaterial"

    .line 161
    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getEncryptedRecoveryKeyBlob()[B

    move-result-object v1

    .line 160
    invoke-static {p0, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V

    .line 162
    const-string/jumbo v0, "serverParams"

    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getServerParams()[B

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V

    .line 163
    const-string/jumbo v0, "thmCertPath"

    .line 164
    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getTrustedHardwareCertPath()Ljava/security/cert/CertPath;

    move-result-object v1

    .line 163
    invoke-static {p0, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/security/cert/CertPath;)V

    .line 165
    return-void
.end method

.method private static writeKeyDerivationParams(Lorg/xmlpull/v1/XmlSerializer;Landroid/security/keystore/recovery/KeyDerivationParams;)V
    .registers 4
    .param p0, "xmlSerializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "keyDerivationParams"    # Landroid/security/keystore/recovery/KeyDerivationParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v1, "keyDerivationParams"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 138
    invoke-static {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writeKeyDerivationParamsProperties(Lorg/xmlpull/v1/XmlSerializer;Landroid/security/keystore/recovery/KeyDerivationParams;)V

    .line 140
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v1, "keyDerivationParams"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 141
    return-void
.end method

.method private static writeKeyDerivationParamsProperties(Lorg/xmlpull/v1/XmlSerializer;Landroid/security/keystore/recovery/KeyDerivationParams;)V
    .registers 5
    .param p0, "xmlSerializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "keyDerivationParams"    # Landroid/security/keystore/recovery/KeyDerivationParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    const-string v0, "algorithm"

    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyDerivationParams;->getAlgorithm()I

    move-result v1

    int-to-long v1, v1

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 147
    const-string/jumbo v0, "salt"

    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyDerivationParams;->getSalt()[B

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V

    .line 148
    const-string/jumbo v0, "memoryDifficulty"

    .line 149
    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyDerivationParams;->getMemoryDifficulty()I

    move-result v1

    int-to-long v1, v1

    .line 148
    invoke-static {p0, v0, v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 150
    return-void
.end method

.method private static writePropertyTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V
    .registers 5
    .param p0, "xmlSerializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "propertyValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 171
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 172
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 173
    return-void
.end method

.method private static writePropertyTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "xmlSerializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "propertyValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 179
    invoke-interface {p0, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 180
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 181
    return-void
.end method

.method private static writePropertyTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/security/cert/CertPath;)V
    .registers 4
    .param p0, "xmlSerializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "certPath"    # Ljava/security/cert/CertPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 194
    const-string v0, "PkiPath"

    invoke-virtual {p2, v0}, Ljava/security/cert/CertPath;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V

    .line 195
    return-void
.end method

.method private static writePropertyTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V
    .registers 4
    .param p0, "xmlSerializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "propertyValue"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 187
    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 188
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 189
    return-void
.end method
