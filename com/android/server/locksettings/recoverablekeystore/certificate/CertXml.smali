.class public final Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;
.super Ljava/lang/Object;
.source "CertXml.java"


# static fields
.field private static final ENDPOINT_CERT_ITEM_TAG:Ljava/lang/String; = "cert"

.field private static final ENDPOINT_CERT_LIST_TAG:Ljava/lang/String; = "endpoints"

.field private static final INTERMEDIATE_CERT_ITEM_TAG:Ljava/lang/String; = "cert"

.field private static final INTERMEDIATE_CERT_LIST_TAG:Ljava/lang/String; = "intermediates"

.field private static final METADATA_NODE_TAG:Ljava/lang/String; = "metadata"

.field private static final METADATA_REFRESH_INTERVAL_NODE_TAG:Ljava/lang/String; = "refresh-interval"

.field private static final METADATA_SERIAL_NODE_TAG:Ljava/lang/String; = "serial"


# instance fields
.field private final endpointCerts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final intermediateCerts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final refreshInterval:J

.field private final serial:J


# direct methods
.method private constructor <init>(JJLjava/util/List;Ljava/util/List;)V
    .registers 7
    .param p1, "serial"    # J
    .param p3, "refreshInterval"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .line 56
    .local p5, "intermediateCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .local p6, "endpointCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-wide p1, p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->serial:J

    .line 58
    iput-wide p3, p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->refreshInterval:J

    .line 59
    iput-object p5, p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->intermediateCerts:Ljava/util/List;

    .line 60
    iput-object p6, p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->endpointCerts:Ljava/util/List;

    .line 61
    return-void
.end method

.method public static parse([B)Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;
    .registers 10
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;
        }
    .end annotation

    .line 121
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->getXmlRootNode([B)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 122
    .local v0, "rootNode":Lorg/w3c/dom/Element;
    new-instance v8, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;

    .line 123
    invoke-static {v0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->parseSerial(Lorg/w3c/dom/Element;)J

    move-result-wide v2

    .line 124
    invoke-static {v0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->parseRefreshInterval(Lorg/w3c/dom/Element;)J

    move-result-wide v4

    .line 125
    invoke-static {v0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->parseIntermediateCerts(Lorg/w3c/dom/Element;)Ljava/util/List;

    move-result-object v6

    .line 126
    invoke-static {v0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->parseEndpointCerts(Lorg/w3c/dom/Element;)Ljava/util/List;

    move-result-object v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;-><init>(JJLjava/util/List;Ljava/util/List;)V

    .line 122
    return-object v8
.end method

.method private static parseEndpointCerts(Lorg/w3c/dom/Element;)Ljava/util/List;
    .registers 6
    .param p0, "rootNode"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;
        }
    .end annotation

    .line 166
    const-string v0, "endpoints"

    const-string v1, "cert"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 167
    const/4 v1, 0x2

    invoke-static {v1, p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->getXmlNodeContents(ILorg/w3c/dom/Element;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 172
    .local v0, "contents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v1, "res":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 174
    .local v3, "content":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->decodeCert([B)Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    .end local v3    # "content":Ljava/lang/String;
    goto :goto_16

    .line 176
    :cond_2e
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private static parseIntermediateCerts(Lorg/w3c/dom/Element;)Ljava/util/List;
    .registers 6
    .param p0, "rootNode"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;
        }
    .end annotation

    .line 151
    const-string v0, "intermediates"

    const-string v1, "cert"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 152
    const/4 v1, 0x0

    invoke-static {v1, p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->getXmlNodeContents(ILorg/w3c/dom/Element;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 157
    .local v0, "contents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v1, "res":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 159
    .local v3, "content":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->decodeCert([B)Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    .end local v3    # "content":Ljava/lang/String;
    goto :goto_16

    .line 161
    :cond_2e
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private static parseRefreshInterval(Lorg/w3c/dom/Element;)J
    .registers 4
    .param p0, "rootNode"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;
        }
    .end annotation

    .line 140
    const-string/jumbo v0, "metadata"

    const-string/jumbo v1, "refresh-interval"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 141
    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->getXmlNodeContents(ILorg/w3c/dom/Element;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 146
    .local v0, "contents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method private static parseSerial(Lorg/w3c/dom/Element;)J
    .registers 4
    .param p0, "rootNode"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;
        }
    .end annotation

    .line 130
    const-string/jumbo v0, "metadata"

    const-string/jumbo v1, "serial"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 131
    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->getXmlNodeContents(ILorg/w3c/dom/Element;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 136
    .local v0, "contents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method


# virtual methods
.method getAllEndpointCerts()Ljava/util/List;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->endpointCerts:Ljava/util/List;

    return-object v0
.end method

.method getAllIntermediateCerts()Ljava/util/List;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->intermediateCerts:Ljava/util/List;

    return-object v0
.end method

.method getEndpointCert(ILjava/util/Date;Ljava/security/cert/X509Certificate;)Ljava/security/cert/CertPath;
    .registers 6
    .param p1, "index"    # I
    .param p2, "validationDate"    # Ljava/util/Date;
    .param p3, "trustedRoot"    # Ljava/security/cert/X509Certificate;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->endpointCerts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 109
    .local v0, "chosenCert":Ljava/security/cert/X509Certificate;
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->intermediateCerts:Ljava/util/List;

    invoke-static {p2, p3, v1, v0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->validateCert(Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/security/cert/X509Certificate;)Ljava/security/cert/CertPath;

    move-result-object v1

    return-object v1
.end method

.method public getRandomEndpointCert(Ljava/security/cert/X509Certificate;)Ljava/security/cert/CertPath;
    .registers 4
    .param p1, "trustedRoot"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->endpointCerts:Ljava/util/List;

    .line 99
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    .line 98
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->getEndpointCert(ILjava/util/Date;Ljava/security/cert/X509Certificate;)Ljava/security/cert/CertPath;

    move-result-object v0

    return-object v0
.end method

.method public getRefreshInterval()J
    .registers 3

    .line 74
    iget-wide v0, p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->refreshInterval:J

    return-wide v0
.end method

.method public getSerial()J
    .registers 3

    .line 65
    iget-wide v0, p0, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertXml;->serial:J

    return-wide v0
.end method
