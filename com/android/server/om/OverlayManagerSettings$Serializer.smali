.class final Lcom/android/server/om/OverlayManagerSettings$Serializer;
.super Ljava/lang/Object;
.source "OverlayManagerSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Serializer"
.end annotation


# static fields
.field private static final ATTR_BASE_CODE_PATH:Ljava/lang/String; = "baseCodePath"

.field private static final ATTR_CATEGORY:Ljava/lang/String; = "category"

.field private static final ATTR_IS_ENABLED:Ljava/lang/String; = "isEnabled"

.field private static final ATTR_IS_STATIC:Ljava/lang/String; = "isStatic"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final ATTR_PRIORITY:Ljava/lang/String; = "priority"

.field private static final ATTR_STATE:Ljava/lang/String; = "state"

.field private static final ATTR_TARGET_PACKAGE_NAME:Ljava/lang/String; = "targetPackageName"

.field private static final ATTR_USER_ID:Ljava/lang/String; = "userId"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final CURRENT_VERSION:I = 0x3

.field private static final TAG_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_OVERLAYS:Ljava/lang/String; = "overlays"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static persist(Ljava/util/ArrayList;Ljava/io/OutputStream;)V
    .registers 7
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/om/OverlayManagerSettings$SettingsItem;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 402
    .local p0, "table":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/om/OverlayManagerSettings$SettingsItem;>;"
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 403
    .local v0, "xml":Lcom/android/internal/util/FastXmlSerializer;
    const-string/jumbo v1, "utf-8"

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/util/FastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 404
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/util/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 405
    const-string v2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/FastXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 406
    const-string/jumbo v1, "overlays"

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 407
    const-string/jumbo v1, "version"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 409
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 410
    .local v1, "N":I
    const/4 v2, 0x0

    .line 410
    .local v2, "i":I
    :goto_2b
    if-ge v2, v1, :cond_39

    .line 411
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 412
    .local v4, "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    invoke-static {v0, v4}, Lcom/android/server/om/OverlayManagerSettings$Serializer;->persistRow(Lcom/android/internal/util/FastXmlSerializer;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)V

    .line 410
    .end local v4    # "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 414
    .end local v2    # "i":I
    :cond_39
    const-string/jumbo v2, "overlays"

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 415
    invoke-virtual {v0}, Lcom/android/internal/util/FastXmlSerializer;->endDocument()V

    .line 416
    return-void
.end method

.method private static persistRow(Lcom/android/internal/util/FastXmlSerializer;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)V
    .registers 5
    .param p0, "xml"    # Lcom/android/internal/util/FastXmlSerializer;
    .param p1, "item"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 420
    const-string/jumbo v0, "item"

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 421
    const-string/jumbo v0, "packageName"

    # getter for: Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPackageName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1100(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 422
    const-string/jumbo v0, "userId"

    # getter for: Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mUserId:I
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1500(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v2

    invoke-static {p0, v0, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 423
    const-string/jumbo v0, "targetPackageName"

    # getter for: Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetPackageName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1600(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 424
    const-string v0, "baseCodePath"

    # getter for: Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mBaseCodePath:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1700(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 425
    const-string/jumbo v0, "state"

    # getter for: Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mState:I
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1800(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v2

    invoke-static {p0, v0, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 426
    const-string/jumbo v0, "isEnabled"

    # getter for: Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsEnabled:Z
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1900(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v2

    invoke-static {p0, v0, v2}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 427
    const-string/jumbo v0, "isStatic"

    # getter for: Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsStatic:Z
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$100(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result v2

    invoke-static {p0, v0, v2}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 428
    const-string/jumbo v0, "priority"

    # getter for: Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPriority:I
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$200(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I

    move-result v2

    invoke-static {p0, v0, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 429
    const-string v0, "category"

    # getter for: Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCategory:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->access$1400(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 430
    const-string/jumbo v0, "item"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 431
    return-void
.end method

.method public static restore(Ljava/util/ArrayList;Ljava/io/InputStream;)V
    .registers 11
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/om/OverlayManagerSettings$SettingsItem;",
            ">;",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 348
    .local p0, "table":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/om/OverlayManagerSettings$SettingsItem;>;"
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 349
    .local v0, "reader":Ljava/io/InputStreamReader;
    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 350
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 351
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 352
    const-string/jumbo v3, "overlays"

    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 353
    const-string/jumbo v3, "version"

    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    .line 354
    .local v3, "version":I
    const/4 v4, 0x3

    if-eq v3, v4, :cond_23

    .line 355
    invoke-static {v3}, Lcom/android/server/om/OverlayManagerSettings$Serializer;->upgrade(I)V

    .line 357
    :cond_23
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    .line 359
    .local v4, "depth":I
    :goto_27
    invoke-static {v2, v4}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 360
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, 0x317b13

    if-eq v7, v8, :cond_3c

    goto :goto_46

    :cond_3c
    const-string/jumbo v7, "item"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    const/4 v6, 0x0

    :cond_46
    :goto_46
    if-eqz v6, :cond_49

    goto :goto_52

    .line 362
    :cond_49
    add-int/lit8 v5, v4, 0x1

    invoke-static {v2, v5}, Lcom/android/server/om/OverlayManagerSettings$Serializer;->restoreRow(Lorg/xmlpull/v1/XmlPullParser;I)Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    move-result-object v5

    .line 363
    .local v5, "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_52} :catch_59
    .catchall {:try_start_6 .. :try_end_52} :catchall_57

    .line 364
    .end local v5    # "item":Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    :goto_52
    goto :goto_27

    .line 367
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "version":I
    .end local v4    # "depth":I
    :cond_53
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    .line 368
    .end local v0    # "reader":Ljava/io/InputStreamReader;
    return-void

    .line 367
    .restart local v0    # "reader":Ljava/io/InputStreamReader;
    :catchall_57
    move-exception v2

    goto :goto_5b

    .line 348
    :catch_59
    move-exception v1

    :try_start_5a
    throw v1
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_57

    .line 367
    :goto_5b
    if-eqz v1, :cond_66

    :try_start_5d
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_60} :catch_61

    goto :goto_69

    :catch_61
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_69

    :cond_66
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    :goto_69
    throw v2
.end method

.method private static restoreRow(Lorg/xmlpull/v1/XmlPullParser;I)Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    .registers 23
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "depth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 385
    const-string/jumbo v1, "packageName"

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 386
    .local v1, "packageName":Ljava/lang/String;
    const-string/jumbo v2, "userId"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v12

    .line 387
    .local v12, "userId":I
    const-string/jumbo v2, "targetPackageName"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 389
    .local v13, "targetPackageName":Ljava/lang/String;
    const-string v2, "baseCodePath"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 390
    .local v14, "baseCodePath":Ljava/lang/String;
    const-string/jumbo v2, "state"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v15

    .line 391
    .local v15, "state":I
    const-string/jumbo v2, "isEnabled"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v16

    .line 392
    .local v16, "isEnabled":Z
    const-string/jumbo v2, "isStatic"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v17

    .line 393
    .local v17, "isStatic":Z
    const-string/jumbo v2, "priority"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v18

    .line 394
    .local v18, "priority":I
    const-string v2, "category"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 396
    .local v19, "category":Ljava/lang/String;
    new-instance v20, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    move-object/from16 v2, v20

    move-object v3, v1

    move v4, v12

    move-object v5, v13

    move-object v6, v14

    move v7, v15

    move/from16 v8, v16

    move/from16 v9, v17

    move/from16 v10, v18

    move-object/from16 v11, v19

    invoke-direct/range {v2 .. v11}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZILjava/lang/String;)V

    return-object v20
.end method

.method private static upgrade(I)V
    .registers 4
    .param p0, "oldVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 371
    packed-switch p0, :pswitch_data_38

    .line 379
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unrecognized version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :pswitch_1b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "old version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; ignoring"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
    .end packed-switch
.end method
