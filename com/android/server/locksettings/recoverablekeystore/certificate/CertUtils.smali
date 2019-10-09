.class public final Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;
.super Ljava/lang/Object;
.source "CertUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils$MustExist;
    }
.end annotation


# static fields
.field private static final CERT_FORMAT:Ljava/lang/String; = "X.509"

.field private static final CERT_PATH_ALG:Ljava/lang/String; = "PKIX"

.field private static final CERT_STORE_ALG:Ljava/lang/String; = "Collection"

.field static final MUST_EXIST_AT_LEAST_ONE:I = 0x2

.field static final MUST_EXIST_EXACTLY_ONE:I = 0x1

.field static final MUST_EXIST_UNENFORCED:I = 0x0

.field private static final SIGNATURE_ALG:Ljava/lang/String; = "SHA256withRSA"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildCertPath(Ljava/security/cert/PKIXParameters;)Ljava/security/cert/CertPath;
    .registers 4
    .param p0, "pkixParams"    # Ljava/security/cert/PKIXParameters;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;
        }
    .end annotation

    .line 336
    :try_start_0
    const-string v0, "PKIX"

    invoke-static {v0}, Ljava/security/cert/CertPathBuilder;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_6} :catch_18

    .line 340
    .local v0, "certPathBuilder":Ljava/security/cert/CertPathBuilder;
    nop

    .line 339
    nop

    .line 342
    :try_start_8
    invoke-virtual {v0, p0}, Ljava/security/cert/CertPathBuilder;->build(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/cert/CertPathBuilderResult;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v1
    :try_end_10
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_8 .. :try_end_10} :catch_11
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_8 .. :try_end_10} :catch_11

    return-object v1

    .line 343
    :catch_11
    move-exception v1

    .line 344
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;

    invoke-direct {v2, v1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 337
    .end local v0    # "certPathBuilder":Ljava/security/cert/CertPathBuilder;
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    :catch_18
    move-exception v0

    .line 339
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static buildPkixParams(Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/security/cert/X509Certificate;)Ljava/security/cert/PKIXParameters;
    .registers 10
    .param p0, "validationDate"    # Ljava/util/Date;
    .param p1, "trustedRoot"    # Ljava/security/cert/X509Certificate;
    .param p3, "leafCert"    # Ljava/security/cert/X509Certificate;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/security/cert/PKIXParameters;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;
        }
    .end annotation

    .line 356
    .local p2, "intermediateCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 357
    .local v0, "trustedAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    new-instance v1, Ljava/security/cert/TrustAnchor;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 360
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 361
    .local v1, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    :try_start_16
    const-string v2, "Collection"

    new-instance v3, Ljava/security/cert/CollectionCertStoreParameters;

    invoke-direct {v3, v1}, Ljava/security/cert/CollectionCertStoreParameters;-><init>(Ljava/util/Collection;)V

    .line 365
    invoke-static {v2, v3}, Ljava/security/cert/CertStore;->getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)Ljava/security/cert/CertStore;

    move-result-object v2
    :try_end_21
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_16 .. :try_end_21} :catch_4b
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_16 .. :try_end_21} :catch_44

    .line 371
    .local v2, "certStore":Ljava/security/cert/CertStore;
    nop

    .line 370
    nop

    .line 374
    new-instance v3, Ljava/security/cert/X509CertSelector;

    invoke-direct {v3}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 375
    .local v3, "certSelector":Ljava/security/cert/X509CertSelector;
    invoke-virtual {v3, p3}, Ljava/security/cert/X509CertSelector;->setCertificate(Ljava/security/cert/X509Certificate;)V

    .line 380
    :try_start_2b
    new-instance v4, Ljava/security/cert/PKIXBuilderParameters;

    invoke-direct {v4, v0, v3}, Ljava/security/cert/PKIXBuilderParameters;-><init>(Ljava/util/Set;Ljava/security/cert/CertSelector;)V
    :try_end_30
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2b .. :try_end_30} :catch_3d

    .line 383
    .local v4, "pkixParams":Ljava/security/cert/PKIXBuilderParameters;
    nop

    .line 382
    nop

    .line 384
    invoke-virtual {v4, v2}, Ljava/security/cert/PKIXBuilderParameters;->addCertStore(Ljava/security/cert/CertStore;)V

    .line 387
    invoke-virtual {v4, p0}, Ljava/security/cert/PKIXBuilderParameters;->setDate(Ljava/util/Date;)V

    .line 388
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/security/cert/PKIXBuilderParameters;->setRevocationEnabled(Z)V

    .line 390
    return-object v4

    .line 381
    .end local v4    # "pkixParams":Ljava/security/cert/PKIXBuilderParameters;
    :catch_3d
    move-exception v4

    .line 382
    .local v4, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v5, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;

    invoke-direct {v5, v4}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;-><init>(Ljava/lang/Exception;)V

    throw v5

    .line 369
    .end local v2    # "certStore":Ljava/security/cert/CertStore;
    .end local v3    # "certSelector":Ljava/security/cert/X509CertSelector;
    .end local v4    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_44
    move-exception v2

    .line 370
    .local v2, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v3, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;

    invoke-direct {v3, v2}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 366
    .end local v2    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_4b
    move-exception v2

    .line 368
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;
        }
    .end annotation

    .line 223
    :try_start_0
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 224
    :catch_9
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;

    invoke-direct {v1, v0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method static decodeCert(Ljava/io/InputStream;)Ljava/security/cert/X509Certificate;
    .registers 4
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;
        }
    .end annotation

    .line 109
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_6} :catch_16

    .line 113
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    nop

    .line 112
    nop

    .line 115
    :try_start_8
    invoke-virtual {v0, p0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;
    :try_end_e
    .catch Ljava/security/cert/CertificateException; {:try_start_8 .. :try_end_e} :catch_f

    return-object v1

    .line 116
    :catch_f
    move-exception v1

    .line 117
    .local v1, "e":Ljava/security/cert/CertificateException;
    new-instance v2, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;

    invoke-direct {v2, v1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 110
    .end local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    :catch_16
    move-exception v0

    .line 112
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static decodeCert([B)Ljava/security/cert/X509Certificate;
    .registers 2
    .param p0, "certBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->decodeCert(Ljava/io/InputStream;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method static varargs getXmlNodeContents(ILorg/w3c/dom/Element;[Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .param p0, "mustExist"    # I
    .param p1, "rootNode"    # Lorg/w3c/dom/Element;
    .param p2, "nodeTags"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/w3c/dom/Element;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;
        }
    .end annotation

    .line 170
    const-string v0, "/"

    invoke-static {v0, p2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "expression":Ljava/lang/String;
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v1

    .line 175
    .local v1, "xPath":Ljavax/xml/xpath/XPath;
    :try_start_e
    invoke-interface {v1, v0}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v2

    sget-object v3, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v2, p1, v3}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/NodeList;
    :try_end_1a
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_e .. :try_end_1a} :catch_97

    .line 178
    .local v2, "nodeList":Lorg/w3c/dom/NodeList;
    nop

    .line 177
    nop

    .line 180
    packed-switch p0, :pswitch_data_9e

    .line 201
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This value of MustExist is not supported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 193
    :pswitch_36
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-eqz v3, :cond_3d

    goto :goto_74

    .line 194
    :cond_3d
    new-instance v3, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The XML file must contain at least one node with the path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 185
    :pswitch_54
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5c

    goto :goto_74

    .line 186
    :cond_5c
    new-instance v3, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The XML file must contain exactly one node with the path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 182
    :pswitch_73
    nop

    .line 205
    :goto_74
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_7a
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_96

    .line 207
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 209
    .local v5, "node":Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\s"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    .end local v5    # "node":Lorg/w3c/dom/Node;
    add-int/lit8 v4, v4, 0x1

    goto :goto_7a

    .line 211
    .end local v4    # "i":I
    :cond_96
    return-object v3

    .line 176
    .end local v2    # "nodeList":Lorg/w3c/dom/NodeList;
    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_97
    move-exception v2

    .line 177
    .local v2, "e":Ljavax/xml/xpath/XPathExpressionException;
    new-instance v3, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;

    invoke-direct {v3, v2}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;-><init>(Ljava/lang/Exception;)V

    throw v3

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_73
        :pswitch_54
        :pswitch_36
    .end packed-switch
.end method

.method static getXmlRootNode([B)Lorg/w3c/dom/Element;
    .registers 3
    .param p0, "xmlBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;
        }
    .end annotation

    .line 131
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 133
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 134
    .local v0, "document":Lorg/w3c/dom/Document;
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Element;->normalize()V

    .line 135
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1
    :try_end_1c
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_1c} :catch_1d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_1c} :catch_1d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1c} :catch_1d

    return-object v1

    .line 136
    .end local v0    # "document":Lorg/w3c/dom/Document;
    :catch_1d
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;

    invoke-direct {v1, v0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method static validateCert(Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/security/cert/X509Certificate;)Ljava/security/cert/CertPath;
    .registers 9
    .param p0, "validationDate"    # Ljava/util/Date;
    .param p1, "trustedRoot"    # Ljava/security/cert/X509Certificate;
    .param p3, "leafCert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/security/cert/CertPath;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;
        }
    .end annotation

    .line 277
    .local p2, "intermediateCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    nop

    .line 278
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->buildPkixParams(Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/security/cert/X509Certificate;)Ljava/security/cert/PKIXParameters;

    move-result-object v0

    .line 279
    .local v0, "pkixParams":Ljava/security/cert/PKIXParameters;
    invoke-static {v0}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->buildCertPath(Ljava/security/cert/PKIXParameters;)Ljava/security/cert/CertPath;

    move-result-object v1

    .line 283
    .local v1, "certPath":Ljava/security/cert/CertPath;
    :try_start_9
    const-string v2, "PKIX"

    invoke-static {v2}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v2
    :try_end_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_f} :catch_1d

    .line 287
    .local v2, "certPathValidator":Ljava/security/cert/CertPathValidator;
    nop

    .line 286
    nop

    .line 289
    :try_start_11
    invoke-virtual {v2, v1, v0}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    :try_end_14
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_11 .. :try_end_14} :catch_16
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_11 .. :try_end_14} :catch_16

    .line 292
    nop

    .line 293
    return-object v1

    .line 290
    :catch_16
    move-exception v3

    .line 291
    .local v3, "e":Ljava/security/GeneralSecurityException;
    new-instance v4, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;

    invoke-direct {v4, v3}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;-><init>(Ljava/lang/Exception;)V

    throw v4

    .line 284
    .end local v2    # "certPathValidator":Ljava/security/cert/CertPathValidator;
    .end local v3    # "e":Ljava/security/GeneralSecurityException;
    :catch_1d
    move-exception v2

    .line 286
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static validateCertPath(Ljava/security/cert/X509Certificate;Ljava/security/cert/CertPath;)V
    .registers 3
    .param p0, "trustedRoot"    # Ljava/security/cert/X509Certificate;
    .param p1, "certPath"    # Ljava/security/cert/CertPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;
        }
    .end annotation

    .line 306
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->validateCertPath(Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/CertPath;)V

    .line 307
    return-void
.end method

.method static validateCertPath(Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/CertPath;)V
    .registers 7
    .param p0, "validationDate"    # Ljava/util/Date;
    .param p1, "trustedRoot"    # Ljava/security/cert/X509Certificate;
    .param p2, "certPath"    # Ljava/security/cert/CertPath;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;
        }
    .end annotation

    .line 316
    invoke-virtual {p2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_36

    .line 319
    invoke-virtual {p2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_2e

    .line 324
    invoke-virtual {p2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 325
    .local v0, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 326
    .local v1, "leafCert":Ljava/security/cert/X509Certificate;
    const/4 v2, 0x1

    .line 327
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 329
    .local v2, "intermediateCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-static {p0, p1, v2, v1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->validateCert(Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/security/cert/X509Certificate;)Ljava/security/cert/CertPath;

    .line 330
    return-void

    .line 320
    .end local v0    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v1    # "leafCert":Ljava/security/cert/X509Certificate;
    .end local v2    # "intermediateCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :cond_2e
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;

    const-string v1, "The given certificate path does not contain X509 certificates"

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_36
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;

    const-string v1, "The given certificate path is empty"

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static verifyRsaSha256Signature(Ljava/security/PublicKey;[B[B)V
    .registers 6
    .param p0, "signerPublicKey"    # Ljava/security/PublicKey;
    .param p1, "signature"    # [B
    .param p2, "signedBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;
        }
    .end annotation

    .line 242
    :try_start_0
    const-string v0, "SHA256withRSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_6} :catch_25

    .line 246
    .local v0, "verifier":Ljava/security/Signature;
    nop

    .line 245
    nop

    .line 248
    :try_start_8
    invoke-virtual {v0, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 249
    invoke-virtual {v0, p2}, Ljava/security/Signature;->update([B)V

    .line 250
    invoke-virtual {v0, p1}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 255
    nop

    .line 256
    return-void

    .line 251
    :cond_16
    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;

    const-string v2, "The signature is invalid"

    invoke-direct {v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1e
    .catch Ljava/security/InvalidKeyException; {:try_start_8 .. :try_end_1e} :catch_1e
    .catch Ljava/security/SignatureException; {:try_start_8 .. :try_end_1e} :catch_1e

    .line 253
    :catch_1e
    move-exception v1

    .line 254
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;

    invoke-direct {v2, v1}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 243
    .end local v0    # "verifier":Ljava/security/Signature;
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    :catch_25
    move-exception v0

    .line 245
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
