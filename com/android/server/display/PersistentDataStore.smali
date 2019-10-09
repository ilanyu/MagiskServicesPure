.class final Lcom/android/server/display/PersistentDataStore;
.super Ljava/lang/Object;
.source "PersistentDataStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/PersistentDataStore$Injector;,
        Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;,
        Lcom/android/server/display/PersistentDataStore$StableDeviceValues;,
        Lcom/android/server/display/PersistentDataStore$DisplayState;
    }
.end annotation


# static fields
.field private static final ATTR_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final ATTR_DEVICE_ADDRESS:Ljava/lang/String; = "deviceAddress"

.field private static final ATTR_DEVICE_ALIAS:Ljava/lang/String; = "deviceAlias"

.field private static final ATTR_DEVICE_NAME:Ljava/lang/String; = "deviceName"

.field private static final ATTR_LUX:Ljava/lang/String; = "lux"

.field private static final ATTR_NITS:Ljava/lang/String; = "nits"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "package-name"

.field private static final ATTR_TIME_STAMP:Ljava/lang/String; = "timestamp"

.field private static final ATTR_UNIQUE_ID:Ljava/lang/String; = "unique-id"

.field private static final ATTR_USER_SERIAL:Ljava/lang/String; = "user-serial"

.field static final TAG:Ljava/lang/String; = "DisplayManager"

.field private static final TAG_BRIGHTNESS_CONFIGURATION:Ljava/lang/String; = "brightness-configuration"

.field private static final TAG_BRIGHTNESS_CONFIGURATIONS:Ljava/lang/String; = "brightness-configurations"

.field private static final TAG_BRIGHTNESS_CURVE:Ljava/lang/String; = "brightness-curve"

.field private static final TAG_BRIGHTNESS_POINT:Ljava/lang/String; = "brightness-point"

.field private static final TAG_COLOR_MODE:Ljava/lang/String; = "color-mode"

.field private static final TAG_DISPLAY:Ljava/lang/String; = "display"

.field private static final TAG_DISPLAY_MANAGER_STATE:Ljava/lang/String; = "display-manager-state"

.field private static final TAG_DISPLAY_STATES:Ljava/lang/String; = "display-states"

.field private static final TAG_REMEMBERED_WIFI_DISPLAYS:Ljava/lang/String; = "remembered-wifi-displays"

.field private static final TAG_STABLE_DEVICE_VALUES:Ljava/lang/String; = "stable-device-values"

.field private static final TAG_STABLE_DISPLAY_HEIGHT:Ljava/lang/String; = "stable-display-height"

.field private static final TAG_STABLE_DISPLAY_WIDTH:Ljava/lang/String; = "stable-display-width"

.field private static final TAG_WIFI_DISPLAY:Ljava/lang/String; = "wifi-display"


# instance fields
.field private mBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

.field private mDirty:Z

.field private final mDisplayStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/display/PersistentDataStore$DisplayState;",
            ">;"
        }
    .end annotation
.end field

.field private mInjector:Lcom/android/server/display/PersistentDataStore$Injector;

.field private mLoaded:Z

.field private mRememberedWifiDisplays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/display/WifiDisplay;",
            ">;"
        }
    .end annotation
.end field

.field private final mStableDeviceValues:Lcom/android/server/display/PersistentDataStore$StableDeviceValues;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 145
    new-instance v0, Lcom/android/server/display/PersistentDataStore$Injector;

    invoke-direct {v0}, Lcom/android/server/display/PersistentDataStore$Injector;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/display/PersistentDataStore;-><init>(Lcom/android/server/display/PersistentDataStore$Injector;)V

    .line 146
    return-void
.end method

.method constructor <init>(Lcom/android/server/display/PersistentDataStore$Injector;)V
    .registers 4
    .param p1, "injector"    # Lcom/android/server/display/PersistentDataStore$Injector;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    .line 130
    new-instance v0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;-><init>(Lcom/android/server/display/PersistentDataStore$1;)V

    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mStableDeviceValues:Lcom/android/server/display/PersistentDataStore$StableDeviceValues;

    .line 133
    new-instance v0, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    invoke-direct {v0}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    .line 150
    iput-object p1, p0, Lcom/android/server/display/PersistentDataStore;->mInjector:Lcom/android/server/display/PersistentDataStore$Injector;

    .line 151
    return-void
.end method

.method private clearState()V
    .registers 2

    .line 319
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 320
    return-void
.end method

.method private findRememberedWifiDisplay(Ljava/lang/String;)I
    .registers 5
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .line 238
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 239
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1f

    .line 240
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 241
    return v1

    .line 239
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 244
    .end local v1    # "i":I
    :cond_1f
    const/4 v1, -0x1

    return v1
.end method

.method private getDisplayState(Ljava/lang/String;Z)Lcom/android/server/display/PersistentDataStore$DisplayState;
    .registers 6
    .param p1, "uniqueId"    # Ljava/lang/String;
    .param p2, "createIfAbsent"    # Z

    .line 297
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 298
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/PersistentDataStore$DisplayState;

    .line 299
    .local v0, "state":Lcom/android/server/display/PersistentDataStore$DisplayState;
    if-nez v0, :cond_1e

    if-eqz p2, :cond_1e

    .line 300
    new-instance v1, Lcom/android/server/display/PersistentDataStore$DisplayState;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/display/PersistentDataStore$DisplayState;-><init>(Lcom/android/server/display/PersistentDataStore$1;)V

    move-object v0, v1

    .line 301
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->setDirty()V

    .line 304
    :cond_1e
    return-object v0
.end method

.method private load()V
    .registers 5

    .line 323
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->clearState()V

    .line 327
    :try_start_3
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mInjector:Lcom/android/server/display/PersistentDataStore$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore$Injector;->openRead()Ljava/io/InputStream;

    move-result-object v0
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_9} :catch_43

    .line 330
    .local v0, "is":Ljava/io/InputStream;
    nop

    .line 329
    nop

    .line 334
    :try_start_b
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 335
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 336
    invoke-direct {p0, v1}, Lcom/android/server/display/PersistentDataStore;->loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_20} :catch_2f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_20} :catch_23
    .catchall {:try_start_b .. :try_end_20} :catchall_21

    goto :goto_3a

    .line 344
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_21
    move-exception v1

    goto :goto_3f

    .line 340
    :catch_23
    move-exception v1

    .line 341
    .local v1, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_24
    const-string v2, "DisplayManager"

    const-string v3, "Failed to load display manager persistent store data."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 342
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->clearState()V

    .end local v1    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_3a

    .line 337
    :catch_2f
    move-exception v1

    .line 338
    .local v1, "ex":Ljava/io/IOException;
    const-string v2, "DisplayManager"

    const-string v3, "Failed to load display manager persistent store data."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 339
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->clearState()V
    :try_end_3a
    .catchall {:try_start_24 .. :try_end_3a} :catchall_21

    .line 344
    .end local v1    # "ex":Ljava/io/IOException;
    :goto_3a
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 345
    nop

    .line 346
    return-void

    .line 344
    :goto_3f
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1

    .line 328
    .end local v0    # "is":Ljava/io/InputStream;
    :catch_43
    move-exception v0

    .line 329
    .local v0, "ex":Ljava/io/FileNotFoundException;
    return-void
.end method

.method private loadDisplaysFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 413
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 414
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 415
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "display"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 416
    const-string/jumbo v1, "unique-id"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 417
    .local v1, "uniqueId":Ljava/lang/String;
    if-eqz v1, :cond_3f

    .line 421
    iget-object v3, p0, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    .line 425
    new-instance v3, Lcom/android/server/display/PersistentDataStore$DisplayState;

    invoke-direct {v3, v2}, Lcom/android/server/display/PersistentDataStore$DisplayState;-><init>(Lcom/android/server/display/PersistentDataStore$1;)V

    move-object v2, v3

    .line 426
    .local v2, "state":Lcom/android/server/display/PersistentDataStore$DisplayState;
    invoke-virtual {v2, p1}, Lcom/android/server/display/PersistentDataStore$DisplayState;->loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 427
    iget-object v3, p0, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    .end local v1    # "uniqueId":Ljava/lang/String;
    .end local v2    # "state":Lcom/android/server/display/PersistentDataStore$DisplayState;
    goto :goto_4

    .line 422
    .restart local v1    # "uniqueId":Ljava/lang/String;
    :cond_37
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Found duplicate display."

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 418
    :cond_3f
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Missing unique-id attribute on display."

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 430
    .end local v1    # "uniqueId":Ljava/lang/String;
    :cond_47
    return-void
.end method

.method private loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 369
    const-string v0, "display-manager-state"

    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 370
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 371
    .local v0, "outerDepth":I
    :cond_9
    :goto_9
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 372
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "remembered-wifi-displays"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 373
    invoke-direct {p0, p1}, Lcom/android/server/display/PersistentDataStore;->loadRememberedWifiDisplaysFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 375
    :cond_1f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "display-states"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 376
    invoke-direct {p0, p1}, Lcom/android/server/display/PersistentDataStore;->loadDisplaysFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 378
    :cond_2e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "stable-device-values"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 379
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mStableDeviceValues:Lcom/android/server/display/PersistentDataStore$StableDeviceValues;

    invoke-virtual {v1, p1}, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 381
    :cond_40
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "brightness-configurations"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 382
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    invoke-virtual {v1, p1}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->loadFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_9

    .line 385
    :cond_52
    return-void
.end method

.method private loadRememberedWifiDisplaysFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 15
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 389
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 390
    .local v0, "outerDepth":I
    :cond_4
    :goto_4
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 391
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wifi-display"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 392
    const-string v1, "deviceAddress"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 393
    .local v1, "deviceAddress":Ljava/lang/String;
    const-string v3, "deviceName"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 394
    .local v10, "deviceName":Ljava/lang/String;
    const-string v3, "deviceAlias"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 395
    .local v2, "deviceAlias":Ljava/lang/String;
    if-eqz v1, :cond_4e

    if-eqz v10, :cond_4e

    .line 399
    invoke-direct {p0, v1}, Lcom/android/server/display/PersistentDataStore;->findRememberedWifiDisplay(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_46

    .line 404
    iget-object v11, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    new-instance v12, Landroid/hardware/display/WifiDisplay;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v12

    move-object v4, v1

    move-object v5, v10

    move-object v6, v2

    invoke-direct/range {v3 .. v9}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    .end local v1    # "deviceAddress":Ljava/lang/String;
    .end local v2    # "deviceAlias":Ljava/lang/String;
    .end local v10    # "deviceName":Ljava/lang/String;
    goto :goto_4

    .line 400
    .restart local v1    # "deviceAddress":Ljava/lang/String;
    .restart local v2    # "deviceAlias":Ljava/lang/String;
    .restart local v10    # "deviceName":Ljava/lang/String;
    :cond_46
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Found duplicate wifi display device address."

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 396
    :cond_4e
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Missing deviceAddress or deviceName attribute on wifi-display."

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 409
    .end local v1    # "deviceAddress":Ljava/lang/String;
    .end local v2    # "deviceAlias":Ljava/lang/String;
    .end local v10    # "deviceName":Ljava/lang/String;
    :cond_56
    return-void
.end method

.method private save()V
    .registers 6

    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mInjector:Lcom/android/server/display/PersistentDataStore$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore$Injector;->startWrite()Ljava/io/OutputStream;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_2f

    .line 352
    .local v0, "os":Ljava/io/OutputStream;
    const/4 v1, 0x0

    .line 354
    .local v1, "success":Z
    :try_start_7
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 355
    .local v2, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 356
    invoke-direct {p0, v2}, Lcom/android/server/display/PersistentDataStore;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 357
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_28

    .line 358
    const/4 v1, 0x1

    .line 360
    .end local v2    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :try_start_21
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore;->mInjector:Lcom/android/server/display/PersistentDataStore$Injector;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/display/PersistentDataStore$Injector;->finishWrite(Ljava/io/OutputStream;Z)V

    .line 361
    nop

    .line 364
    .end local v1    # "success":Z
    goto :goto_37

    .line 360
    .restart local v1    # "success":Z
    :catchall_28
    move-exception v2

    iget-object v3, p0, Lcom/android/server/display/PersistentDataStore;->mInjector:Lcom/android/server/display/PersistentDataStore$Injector;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/display/PersistentDataStore$Injector;->finishWrite(Ljava/io/OutputStream;Z)V

    throw v2
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2f} :catch_2f

    .line 362
    .end local v0    # "os":Ljava/io/OutputStream;
    .end local v1    # "success":Z
    :catch_2f
    move-exception v0

    .line 363
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "DisplayManager"

    const-string v2, "Failed to save display manager persistent store data."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_37
    return-void
.end method

.method private saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 8
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 433
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 434
    const-string v1, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 435
    const-string v0, "display-manager-state"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 436
    const-string/jumbo v0, "remembered-wifi-displays"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 437
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/WifiDisplay;

    .line 438
    .local v1, "display":Landroid/hardware/display/WifiDisplay;
    const-string/jumbo v3, "wifi-display"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 439
    const-string v3, "deviceAddress"

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 440
    const-string v3, "deviceName"

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 441
    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_52

    .line 442
    const-string v3, "deviceAlias"

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 444
    :cond_52
    const-string/jumbo v3, "wifi-display"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 445
    .end local v1    # "display":Landroid/hardware/display/WifiDisplay;
    goto :goto_1f

    .line 446
    :cond_59
    const-string/jumbo v0, "remembered-wifi-displays"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 447
    const-string v0, "display-states"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 448
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 449
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/display/PersistentDataStore$DisplayState;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 450
    .local v3, "uniqueId":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/PersistentDataStore$DisplayState;

    .line 451
    .local v4, "state":Lcom/android/server/display/PersistentDataStore$DisplayState;
    const-string v5, "display"

    invoke-interface {p1, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 452
    const-string/jumbo v5, "unique-id"

    invoke-interface {p1, v2, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 453
    invoke-virtual {v4, p1}, Lcom/android/server/display/PersistentDataStore$DisplayState;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 454
    const-string v5, "display"

    invoke-interface {p1, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 455
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/display/PersistentDataStore$DisplayState;>;"
    .end local v3    # "uniqueId":Ljava/lang/String;
    .end local v4    # "state":Lcom/android/server/display/PersistentDataStore$DisplayState;
    goto :goto_6e

    .line 456
    :cond_9a
    const-string v0, "display-states"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 457
    const-string/jumbo v0, "stable-device-values"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 458
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mStableDeviceValues:Lcom/android/server/display/PersistentDataStore$StableDeviceValues;

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 459
    const-string/jumbo v0, "stable-device-values"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 460
    const-string v0, "brightness-configurations"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 461
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 462
    const-string v0, "brightness-configurations"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 463
    const-string v0, "display-manager-state"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 464
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 465
    return-void
.end method

.method private setDirty()V
    .registers 2

    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/PersistentDataStore;->mDirty:Z

    .line 316
    return-void
.end method


# virtual methods
.method public applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;
    .registers 12
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    .line 175
    if-eqz p1, :cond_42

    .line 176
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "alias":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/display/PersistentDataStore;->findRememberedWifiDisplay(Ljava/lang/String;)I

    move-result v1

    .line 180
    .local v1, "index":I
    if-ltz v1, :cond_1c

    .line 181
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    move-result-object v0

    .line 183
    :cond_1c
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 184
    new-instance v9, Landroid/hardware/display/WifiDisplay;

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    .line 185
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->isAvailable()Z

    move-result v6

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v7

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->isRemembered()Z

    move-result v8

    move-object v2, v9

    move-object v5, v0

    invoke-direct/range {v2 .. v8}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 184
    return-object v9

    .line 188
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "index":I
    :cond_42
    return-object p1
.end method

.method public applyWifiDisplayAliases([Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;
    .registers 8
    .param p1, "displays"    # [Landroid/hardware/display/WifiDisplay;

    .line 192
    move-object v0, p1

    .line 193
    .local v0, "results":[Landroid/hardware/display/WifiDisplay;
    if-eqz v0, :cond_20

    .line 194
    array-length v1, p1

    .line 195
    .local v1, "count":I
    const/4 v2, 0x0

    move-object v3, v0

    move v0, v2

    .local v0, "i":I
    .local v3, "results":[Landroid/hardware/display/WifiDisplay;
    :goto_7
    if-ge v0, v1, :cond_1f

    .line 196
    aget-object v4, p1, v0

    invoke-virtual {p0, v4}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    move-result-object v4

    .line 197
    .local v4, "result":Landroid/hardware/display/WifiDisplay;
    aget-object v5, p1, v0

    if-eq v4, v5, :cond_1c

    .line 198
    if-ne v3, p1, :cond_1a

    .line 199
    new-array v3, v1, [Landroid/hardware/display/WifiDisplay;

    .line 200
    invoke-static {p1, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    :cond_1a
    aput-object v4, v3, v0

    .line 195
    .end local v4    # "result":Landroid/hardware/display/WifiDisplay;
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 206
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_1f
    move-object v0, v3

    .end local v3    # "results":[Landroid/hardware/display/WifiDisplay;
    .local v0, "results":[Landroid/hardware/display/WifiDisplay;
    :cond_20
    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 468
    const-string v0, "PersistentDataStore"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLoaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/PersistentDataStore;->mLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDirty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/PersistentDataStore;->mDirty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 471
    const-string v0, "  RememberedWifiDisplays:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 472
    const/4 v0, 0x0

    .line 473
    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/WifiDisplay;

    .line 474
    .local v2, "display":Landroid/hardware/display/WifiDisplay;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v0, 0x1

    .local v4, "i":I
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v0    # "i":I
    const-string v0, ": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 475
    .end local v2    # "display":Landroid/hardware/display/WifiDisplay;
    nop

    .line 473
    move v0, v4

    goto :goto_3d

    .line 476
    .end local v4    # "i":I
    .restart local v0    # "i":I
    :cond_6a
    const-string v1, "  DisplayStates:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 477
    const/4 v0, 0x0

    .line 478
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 479
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/display/PersistentDataStore$DisplayState;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v0, 0x1

    .restart local v4    # "i":I
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v0    # "i":I
    const-string v0, ": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 480
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/PersistentDataStore$DisplayState;

    const-string v3, "      "

    invoke-virtual {v0, p1, v3}, Lcom/android/server/display/PersistentDataStore$DisplayState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 481
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/display/PersistentDataStore$DisplayState;>;"
    nop

    .line 478
    move v0, v4

    goto :goto_7a

    .line 482
    .end local v4    # "i":I
    .restart local v0    # "i":I
    :cond_b8
    const-string v1, "  StableDeviceValues:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 483
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mStableDeviceValues:Lcom/android/server/display/PersistentDataStore$StableDeviceValues;

    const-string v2, "      "

    invoke-virtual {v1, p1, v2}, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 484
    const-string v1, "  BrightnessConfigurations:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 485
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    const-string v2, "      "

    invoke-virtual {v1, p1, v2}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 486
    return-void
.end method

.method public forgetWifiDisplay(Ljava/lang/String;)Z
    .registers 4
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .line 227
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 228
    invoke-direct {p0, p1}, Lcom/android/server/display/PersistentDataStore;->findRememberedWifiDisplay(Ljava/lang/String;)I

    move-result v0

    .line 229
    .local v0, "index":I
    if-ltz v0, :cond_13

    .line 230
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 231
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->setDirty()V

    .line 232
    const/4 v1, 0x1

    return v1

    .line 234
    :cond_13
    const/4 v1, 0x0

    return v1
.end method

.method public getBrightnessConfiguration(I)Landroid/hardware/display/BrightnessConfiguration;
    .registers 3
    .param p1, "userSerial"    # I

    .line 292
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 293
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->getBrightnessConfiguration(I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getColorMode(Lcom/android/server/display/DisplayDevice;)I
    .registers 5
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .line 248
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->hasStableUniqueId()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    .line 249
    return v1

    .line 251
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/server/display/PersistentDataStore;->getDisplayState(Ljava/lang/String;Z)Lcom/android/server/display/PersistentDataStore$DisplayState;

    move-result-object v0

    .line 252
    .local v0, "state":Lcom/android/server/display/PersistentDataStore$DisplayState;
    if-nez v0, :cond_14

    .line 253
    return v1

    .line 255
    :cond_14
    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore$DisplayState;->getColorMode()I

    move-result v1

    return v1
.end method

.method public getRememberedWifiDisplay(Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;
    .registers 4
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .line 161
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 162
    invoke-direct {p0, p1}, Lcom/android/server/display/PersistentDataStore;->findRememberedWifiDisplay(Ljava/lang/String;)I

    move-result v0

    .line 163
    .local v0, "index":I
    if-ltz v0, :cond_12

    .line 164
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/WifiDisplay;

    return-object v1

    .line 166
    :cond_12
    const/4 v1, 0x0

    return-object v1
.end method

.method public getRememberedWifiDisplays()[Landroid/hardware/display/WifiDisplay;
    .registers 3

    .line 170
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 171
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/display/WifiDisplay;

    return-object v0
.end method

.method public getStableDisplaySize()Landroid/graphics/Point;
    .registers 2

    .line 271
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 272
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mStableDeviceValues:Lcom/android/server/display/PersistentDataStore$StableDeviceValues;

    # invokes: Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->getDisplaySize()Landroid/graphics/Point;
    invoke-static {v0}, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->access$100(Lcom/android/server/display/PersistentDataStore$StableDeviceValues;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public loadIfNeeded()V
    .registers 2

    .line 308
    iget-boolean v0, p0, Lcom/android/server/display/PersistentDataStore;->mLoaded:Z

    if-nez v0, :cond_a

    .line 309
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->load()V

    .line 310
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/PersistentDataStore;->mLoaded:Z

    .line 312
    :cond_a
    return-void
.end method

.method public rememberWifiDisplay(Landroid/hardware/display/WifiDisplay;)Z
    .registers 5
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;

    .line 210
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 212
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/display/PersistentDataStore;->findRememberedWifiDisplay(Ljava/lang/String;)I

    move-result v0

    .line 213
    .local v0, "index":I
    if-ltz v0, :cond_23

    .line 214
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/WifiDisplay;

    .line 215
    .local v1, "other":Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v1, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 216
    const/4 v2, 0x0

    return v2

    .line 218
    :cond_1d
    iget-object v2, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 219
    .end local v1    # "other":Landroid/hardware/display/WifiDisplay;
    goto :goto_28

    .line 220
    :cond_23
    iget-object v1, p0, Lcom/android/server/display/PersistentDataStore;->mRememberedWifiDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    :goto_28
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->setDirty()V

    .line 223
    const/4 v1, 0x1

    return v1
.end method

.method public saveIfNeeded()V
    .registers 2

    .line 154
    iget-boolean v0, p0, Lcom/android/server/display/PersistentDataStore;->mDirty:Z

    if-eqz v0, :cond_a

    .line 155
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->save()V

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/PersistentDataStore;->mDirty:Z

    .line 158
    :cond_a
    return-void
.end method

.method public setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V
    .registers 5
    .param p1, "c"    # Landroid/hardware/display/BrightnessConfiguration;
    .param p2, "userSerial"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 284
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 285
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    # invokes: Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)Z
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->access$200(Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 287
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->setDirty()V

    .line 289
    :cond_e
    return-void
.end method

.method public setColorMode(Lcom/android/server/display/DisplayDevice;I)Z
    .registers 7
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;
    .param p2, "colorMode"    # I

    .line 259
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->hasStableUniqueId()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 260
    return v1

    .line 262
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/display/PersistentDataStore;->getDisplayState(Ljava/lang/String;Z)Lcom/android/server/display/PersistentDataStore$DisplayState;

    move-result-object v0

    .line 263
    .local v0, "state":Lcom/android/server/display/PersistentDataStore$DisplayState;
    invoke-virtual {v0, p2}, Lcom/android/server/display/PersistentDataStore$DisplayState;->setColorMode(I)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 264
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->setDirty()V

    .line 265
    return v2

    .line 267
    :cond_1b
    return v1
.end method

.method public setStableDisplaySize(Landroid/graphics/Point;)V
    .registers 3
    .param p1, "size"    # Landroid/graphics/Point;

    .line 276
    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    .line 277
    iget-object v0, p0, Lcom/android/server/display/PersistentDataStore;->mStableDeviceValues:Lcom/android/server/display/PersistentDataStore$StableDeviceValues;

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->setDisplaySize(Landroid/graphics/Point;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 278
    invoke-direct {p0}, Lcom/android/server/display/PersistentDataStore;->setDirty()V

    .line 280
    :cond_e
    return-void
.end method
