.class Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;
.super Ljava/lang/Object;
.source "TransferOwnershipMetadataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;,
        Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;
    }
.end annotation


# static fields
.field static final ADMIN_TYPE_DEVICE_OWNER:Ljava/lang/String; = "device-owner"

.field static final ADMIN_TYPE_PROFILE_OWNER:Ljava/lang/String; = "profile-owner"

.field public static final OWNER_TRANSFER_METADATA_XML:Ljava/lang/String; = "owner-transfer-metadata.xml"

.field private static final TAG:Ljava/lang/String;

.field static final TAG_ADMIN_TYPE:Ljava/lang/String; = "admin-type"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final TAG_SOURCE_COMPONENT:Ljava/lang/String; = "source-component"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final TAG_TARGET_COMPONENT:Ljava/lang/String; = "target-component"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final TAG_USER_ID:Ljava/lang/String; = "user-id"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mInjector:Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 65
    const-class v0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 71
    new-instance v0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;

    invoke-direct {v0}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;-><init>(Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;)V

    .line 72
    return-void
.end method

.method constructor <init>(Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;)V
    .registers 2
    .param p1, "injector"    # Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->mInjector:Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;

    .line 77
    return-void
.end method

.method private insertSimpleTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "tagName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 110
    invoke-interface {p1, p3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 111
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 112
    return-void
.end method

.method private parseMetadataFile(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;
    .registers 14
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 138
    .local v0, "outerDepth":I
    const/4 v1, 0x0

    .line 139
    .local v1, "userId":I
    const/4 v2, 0x0

    .line 140
    .local v2, "adminComponent":Ljava/lang/String;
    const/4 v3, 0x0

    .line 141
    .local v3, "targetComponent":Ljava/lang/String;
    const/4 v4, 0x0

    .line 142
    .local v4, "adminType":Ljava/lang/String;
    :cond_8
    :goto_8
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v6, v5

    .line 142
    .local v6, "type":I
    const/4 v7, 0x1

    if-eq v5, v7, :cond_92

    const/4 v5, 0x3

    if-ne v6, v5, :cond_19

    .line 143
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v0, :cond_92

    .line 144
    :cond_19
    if-eq v6, v5, :cond_8

    const/4 v8, 0x4

    if-ne v6, v8, :cond_1f

    .line 145
    goto :goto_8

    .line 147
    :cond_1f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v11, -0x1419903f

    if-eq v10, v11, :cond_5d

    const v7, -0x8c5cda3

    if-eq v10, v7, :cond_52

    const v7, 0x10c541cb

    if-eq v10, v7, :cond_47

    const v7, 0x264366f8

    if-eq v10, v7, :cond_3d

    goto :goto_67

    :cond_3d
    const-string v7, "admin-type"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_67

    move v7, v5

    goto :goto_68

    :cond_47
    const-string/jumbo v5, "source-component"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_67

    const/4 v7, 0x2

    goto :goto_68

    :cond_52
    const-string/jumbo v5, "user-id"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_67

    const/4 v7, 0x0

    goto :goto_68

    :cond_5d
    const-string/jumbo v5, "target-component"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_67

    goto :goto_68

    :cond_67
    :goto_67
    move v7, v9

    :goto_68
    packed-switch v7, :pswitch_data_9a

    goto :goto_90

    .line 161
    :pswitch_6c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 162
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    goto :goto_90

    .line 157
    :pswitch_74
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 158
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    .line 159
    goto :goto_90

    .line 153
    :pswitch_7c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 154
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    .line 155
    goto :goto_90

    .line 149
    :pswitch_84
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 150
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 151
    nop

    .line 163
    :goto_90
    goto/16 :goto_8

    .line 166
    :cond_92
    new-instance v5, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;

    invoke-direct {v5, v2, v3, v1, v4}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v5

    nop

    nop

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_84
        :pswitch_7c
        :pswitch_74
        :pswitch_6c
    .end packed-switch
.end method


# virtual methods
.method deleteMetadataFile()V
    .registers 4

    .line 170
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->mInjector:Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;->getOwnerTransferMetadataDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "owner-transfer-metadata.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 171
    return-void
.end method

.method loadMetadataFile()Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;
    .registers 8

    .line 116
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->mInjector:Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;

    .line 117
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;->getOwnerTransferMetadataDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "owner-transfer-metadata.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 118
    .local v0, "transferOwnershipMetadataFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_16

    .line 119
    return-object v2

    .line 121
    :cond_16
    sget-object v1, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading TransferOwnershipMetadataManager from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :try_start_2c
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_31} :catch_58
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2c .. :try_end_31} :catch_58
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2c .. :try_end_31} :catch_58

    .line 124
    .local v1, "stream":Ljava/io/FileInputStream;
    :try_start_31
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 125
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v3, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0, v3}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->parseMetadataFile(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;

    move-result-object v4
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_3c} :catch_43
    .catchall {:try_start_31 .. :try_end_3c} :catchall_40

    .line 127
    :try_start_3c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_58
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3c .. :try_end_3f} :catch_58
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3c .. :try_end_3f} :catch_58

    .line 126
    return-object v4

    .line 127
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_40
    move-exception v3

    move-object v4, v2

    goto :goto_49

    .line 123
    :catch_43
    move-exception v3

    :try_start_44
    throw v3
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_45

    .line 127
    :catchall_45
    move-exception v4

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    :goto_49
    if-eqz v4, :cond_54

    :try_start_4b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4e} :catch_4f
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_58
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4b .. :try_end_4e} :catch_58
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4b .. :try_end_4e} :catch_58

    goto :goto_57

    :catch_4f
    move-exception v5

    :try_start_50
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_57

    :cond_54
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :goto_57
    throw v3
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_58} :catch_58
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_50 .. :try_end_58} :catch_58
    .catch Ljava/lang/IllegalArgumentException; {:try_start_50 .. :try_end_58} :catch_58

    .end local v1    # "stream":Ljava/io/FileInputStream;
    :catch_58
    move-exception v1

    .line 128
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caught exception while trying to load the owner transfer params from file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v2
.end method

.method metadataFileExists()Z
    .registers 4

    .line 174
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->mInjector:Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;->getOwnerTransferMetadataDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "owner-transfer-metadata.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 174
    return v0
.end method

.method saveMetadataFile(Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;)Z
    .registers 9
    .param p1, "params"    # Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;

    .line 80
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->mInjector:Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Injector;->getOwnerTransferMetadataDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "owner-transfer-metadata.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    .local v0, "transferOwnershipMetadataFile":Ljava/io/File;
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 83
    .local v1, "atomicFile":Landroid/util/AtomicFile;
    const/4 v2, 0x0

    move-object v3, v2

    .line 85
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_15
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    move-object v3, v4

    .line 86
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 87
    .local v4, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 88
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 89
    const-string/jumbo v2, "user-id"

    iget v6, p1, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->userId:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v2, v6}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->insertSimpleTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string/jumbo v2, "source-component"

    iget-object v6, p1, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->sourceComponent:Landroid/content/ComponentName;

    .line 91
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    .line 90
    invoke-direct {p0, v4, v2, v6}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->insertSimpleTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string/jumbo v2, "target-component"

    iget-object v6, p1, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->targetComponent:Landroid/content/ComponentName;

    .line 93
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    .line 92
    invoke-direct {p0, v4, v2, v6}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->insertSimpleTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v2, "admin-type"

    iget-object v6, p1, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->adminType:Ljava/lang/String;

    invoke-direct {p0, v4, v2, v6}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->insertSimpleTag(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 96
    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_61} :catch_62

    .line 97
    return v5

    .line 98
    .end local v4    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_62
    move-exception v2

    .line 99
    .local v2, "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception while trying to save Owner Transfer Params to file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 102
    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 104
    .end local v2    # "e":Ljava/io/IOException;
    const/4 v2, 0x0

    return v2
.end method
