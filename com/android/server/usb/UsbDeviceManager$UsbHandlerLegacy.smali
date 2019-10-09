.class final Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;
.super Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UsbHandlerLegacy"
.end annotation


# static fields
.field private static final USB_CONFIG_PROPERTY:Ljava/lang/String; = "sys.usb.config"

.field private static final USB_STATE_PROPERTY:Ljava/lang/String; = "sys.usb.state"


# instance fields
.field private mCurrentFunctionsStr:Ljava/lang/String;

.field private mCurrentOemFunctions:Ljava/lang/String;

.field private mOemModeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mUsbDataUnlocked:Z


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbDebuggingManager;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbSettingsManager;)V
    .registers 12
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "deviceManager"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p4, "debuggingManager"    # Lcom/android/server/usb/UsbDebuggingManager;
    .param p5, "alsaManager"    # Lcom/android/server/usb/UsbAlsaManager;
    .param p6, "settingsManager"    # Lcom/android/server/usb/UsbSettingsManager;

    .line 1367
    invoke-direct/range {p0 .. p6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbDebuggingManager;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbSettingsManager;)V

    .line 1369
    :try_start_3
    invoke-direct {p0, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->readOemUsbOverrideConfig(Landroid/content/Context;)V

    .line 1371
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getPersistProp(Z)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "none"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentOemFunctions:Ljava/lang/String;

    .line 1373
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->isNormalBoot()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3a

    .line 1374
    const-string/jumbo v1, "sys.usb.config"

    const-string/jumbo v3, "none"

    invoke-virtual {p0, v1, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsStr:Ljava/lang/String;

    .line 1376
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsStr:Ljava/lang/String;

    const-string/jumbo v3, "sys.usb.state"

    const-string/jumbo v4, "none"

    .line 1377
    invoke-virtual {p0, v3, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1376
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsApplied:Z

    goto :goto_61

    .line 1379
    :cond_3a
    invoke-direct {p0, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getPersistProp(Z)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "none"

    invoke-virtual {p0, v1, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsStr:Ljava/lang/String;

    .line 1381
    const-string/jumbo v1, "sys.usb.config"

    const-string/jumbo v3, "none"

    invoke-virtual {p0, v1, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "sys.usb.state"

    const-string/jumbo v4, "none"

    .line 1383
    invoke-virtual {p0, v3, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1382
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsApplied:Z

    .line 1385
    :goto_61
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctions:J

    .line 1386
    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentUsbFunctionsReceived:Z

    .line 1388
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/android_usb/android0/state"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1389
    .local v0, "state":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->updateState(Ljava/lang/String;)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7a} :catch_7b

    .line 1392
    .end local v0    # "state":Ljava/lang/String;
    goto :goto_85

    .line 1390
    :catch_7b
    move-exception v0

    .line 1391
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error initializing UsbHandler"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1393
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_85
    return-void
.end method

.method private static addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "functions"    # Ljava/lang/String;
    .param p1, "function"    # Ljava/lang/String;

    .line 1654
    const-string/jumbo v0, "none"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1655
    return-object p1

    .line 1657
    :cond_a
    invoke-static {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 1658
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_27

    .line 1659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1661
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1663
    :cond_36
    return-object p0
.end method

.method private applyOemOverrideFunction(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "usbFunctions"    # Ljava/lang/String;

    .line 1427
    if-eqz p1, :cond_f7

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mOemModeMap:Ljava/util/HashMap;

    if-nez v0, :cond_8

    goto/16 :goto_f7

    .line 1431
    :cond_8
    const-string/jumbo v0, "ro.bootmode"

    const-string/jumbo v1, "unknown"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1432
    .local v0, "bootMode":Ljava/lang/String;
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyOemOverride usbfunctions="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " bootmode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mOemModeMap:Ljava/util/HashMap;

    .line 1435
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1438
    .local v1, "overridesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v1, :cond_f6

    const-string/jumbo v2, "normal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f6

    const-string/jumbo v2, "unknown"

    .line 1439
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f6

    .line 1440
    nop

    .line 1441
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1442
    .local v2, "overrideFunctions":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    if-eqz v2, :cond_d7

    .line 1443
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OEM USB override: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ==> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " persist across reboot "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d2

    .line 1449
    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mAdbEnabled:Z

    if-eqz v4, :cond_a3

    .line 1450
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const-string v5, "adb"

    invoke-static {v4, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1450
    .local v4, "newFunction":Ljava/lang/String;
    goto :goto_a7

    .line 1453
    .end local v4    # "newFunction":Ljava/lang/String;
    :cond_a3
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 1455
    .restart local v4    # "newFunction":Ljava/lang/String;
    :goto_a7
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OEM USB override persisting: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "in prop: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1456
    invoke-direct {p0, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getPersistProp(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1455
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    invoke-direct {p0, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getPersistProp(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    .end local v4    # "newFunction":Ljava/lang/String;
    :cond_d2
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    return-object v3

    .line 1460
    :cond_d7
    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mAdbEnabled:Z

    if-eqz v4, :cond_ec

    .line 1461
    const-string/jumbo v4, "none"

    const-string v5, "adb"

    invoke-static {v4, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1463
    .restart local v4    # "newFunction":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getPersistProp(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    .end local v4    # "newFunction":Ljava/lang/String;
    goto :goto_f6

    .line 1465
    :cond_ec
    invoke-direct {p0, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getPersistProp(Z)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "none"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    .end local v2    # "overrideFunctions":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_f6
    :goto_f6
    return-object p1

    .line 1428
    .end local v0    # "bootMode":Ljava/lang/String;
    .end local v1    # "overridesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_f7
    :goto_f7
    return-object p1
.end method

.method static containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p0, "functions"    # Ljava/lang/String;
    .param p1, "function"    # Ljava/lang/String;

    .line 1690
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1691
    .local v0, "index":I
    const/4 v1, 0x0

    if-gez v0, :cond_8

    return v1

    .line 1692
    :cond_8
    const/16 v2, 0x2c

    if-lez v0, :cond_15

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v2, :cond_15

    return v1

    .line 1693
    :cond_15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    .line 1694
    .local v3, "charAfter":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_27

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v2, :cond_27

    return v1

    .line 1695
    :cond_27
    const/4 v1, 0x1

    return v1
.end method

.method private getPersistProp(Z)Ljava/lang/String;
    .registers 6
    .param p1, "functions"    # Z

    .line 1641
    const-string/jumbo v0, "ro.bootmode"

    const-string/jumbo v1, "unknown"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1642
    .local v0, "bootMode":Ljava/lang/String;
    const-string/jumbo v1, "persist.vendor.usb.config"

    .line 1643
    .local v1, "persistProp":Ljava/lang/String;
    const-string/jumbo v2, "normal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_50

    const-string/jumbo v2, "unknown"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_50

    .line 1644
    if-eqz p1, :cond_39

    .line 1645
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "persist.sys.usb."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".func"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_50

    .line 1647
    :cond_39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "persist.sys.usb."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".config"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1650
    :cond_50
    :goto_50
    return-object v1
.end method

.method private isNormalBoot()Z
    .registers 3

    .line 1556
    const-string/jumbo v0, "ro.bootmode"

    const-string/jumbo v1, "unknown"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1557
    .local v0, "bootMode":Ljava/lang/String;
    const-string/jumbo v1, "normal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string/jumbo v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v1, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v1, 0x1

    :goto_20
    return v1
.end method

.method private readOemUsbOverrideConfig(Landroid/content/Context;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;

    .line 1396
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1399
    .local v0, "configList":[Ljava/lang/String;
    if-eqz v0, :cond_73

    .line 1400
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v3, v1, :cond_73

    aget-object v4, v0, v3

    .line 1401
    .local v4, "config":Ljava/lang/String;
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1402
    .local v5, "items":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x3

    if-eq v6, v7, :cond_22

    array-length v6, v5

    const/4 v8, 0x4

    if-ne v6, v8, :cond_70

    .line 1403
    :cond_22
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mOemModeMap:Ljava/util/HashMap;

    if-nez v6, :cond_2d

    .line 1404
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mOemModeMap:Ljava/util/HashMap;

    .line 1406
    :cond_2d
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mOemModeMap:Ljava/util/HashMap;

    aget-object v8, v5, v2

    .line 1407
    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 1408
    .local v6, "overrideMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-nez v6, :cond_46

    .line 1409
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move-object v6, v8

    .line 1410
    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mOemModeMap:Ljava/util/HashMap;

    aget-object v9, v5, v2

    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1414
    :cond_46
    const/4 v8, 0x1

    aget-object v9, v5, v8

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_70

    .line 1415
    array-length v9, v5

    const/4 v10, 0x2

    if-ne v9, v7, :cond_62

    .line 1416
    aget-object v7, v5, v8

    new-instance v8, Landroid/util/Pair;

    aget-object v9, v5, v10

    const-string v10, ""

    invoke-direct {v8, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_70

    .line 1418
    :cond_62
    aget-object v8, v5, v8

    new-instance v9, Landroid/util/Pair;

    aget-object v10, v5, v10

    aget-object v7, v5, v7

    invoke-direct {v9, v10, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1400
    .end local v4    # "config":Ljava/lang/String;
    .end local v5    # "items":[Ljava/lang/String;
    .end local v6    # "overrideMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_70
    :goto_70
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1424
    :cond_73
    return-void
.end method

.method private static removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "functions"    # Ljava/lang/String;
    .param p1, "function"    # Ljava/lang/String;

    .line 1667
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1668
    .local v0, "split":[Ljava/lang/String;
    const/4 v1, 0x0

    move v2, v1

    .line 1668
    .local v2, "i":I
    :goto_8
    array-length v3, v0

    if-ge v2, v3, :cond_19

    .line 1669
    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1670
    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 1668
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1673
    .end local v2    # "i":I
    :cond_19
    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_25

    aget-object v2, v0, v1

    if-nez v2, :cond_25

    .line 1674
    const-string/jumbo v1, "none"

    return-object v1

    .line 1676
    :cond_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1677
    .local v2, "builder":Ljava/lang/StringBuilder;
    nop

    .line 1677
    .local v1, "i":I
    :goto_2b
    array-length v3, v0

    if-ge v1, v3, :cond_43

    .line 1678
    aget-object v3, v0, v1

    .line 1679
    .local v3, "s":Ljava/lang/String;
    if-eqz v3, :cond_40

    .line 1680
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_3d

    .line 1681
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1683
    :cond_3d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1677
    .end local v3    # "s":Ljava/lang/String;
    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 1686
    .end local v1    # "i":I
    :cond_43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private setUsbConfig(Ljava/lang/String;)V
    .registers 3
    .param p1, "config"    # Ljava/lang/String;

    .line 1493
    const-string/jumbo v0, "sys.usb.config"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1494
    return-void
.end method

.method private trySetEnabledFunctions(JZ)Z
    .registers 10
    .param p1, "usbFunctions"    # J
    .param p3, "forceRestart"    # Z

    .line 1575
    const/4 v0, 0x0

    .line 1576
    .local v0, "functions":Ljava/lang/String;
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-eqz v1, :cond_b

    .line 1577
    invoke-static {p1, p2}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v0

    .line 1579
    :cond_b
    iput-wide p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctions:J

    .line 1580
    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->applyAdbFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "none"

    .line 1581
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1582
    :cond_1d
    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getPersistProp(Z)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "none"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1585
    const-string/jumbo v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1586
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getChargingFunctions()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v0

    .line 1588
    :cond_39
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->applyAdbFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1590
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->applyOemOverrideFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1592
    .local v2, "oemFunctions":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->isNormalBoot()Z

    move-result v3

    if-nez v3, :cond_56

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsStr:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_56

    .line 1593
    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getPersistProp(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    :cond_56
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_64

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentOemFunctions:Ljava/lang/String;

    .line 1597
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_72

    :cond_64
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsStr:Ljava/lang/String;

    .line 1598
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_72

    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsApplied:Z

    if-eqz v3, :cond_72

    if-eqz p3, :cond_ed

    .line 1601
    :cond_72
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting USB config to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsStr:Ljava/lang/String;

    .line 1603
    iput-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentOemFunctions:Ljava/lang/String;

    .line 1604
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsApplied:Z

    .line 1609
    const-string/jumbo v4, "none"

    invoke-direct {p0, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->setUsbConfig(Ljava/lang/String;)V

    .line 1611
    const-string/jumbo v4, "none"

    invoke-direct {p0, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->waitForState(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_aa

    .line 1612
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Failed to kick USB config"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    return v3

    .line 1619
    :cond_aa
    invoke-direct {p0, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->setUsbConfig(Ljava/lang/String;)V

    .line 1621
    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mBootCompleted:Z

    if-eqz v4, :cond_cc

    const-string/jumbo v4, "mtp"

    .line 1622
    invoke-static {v0, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c3

    const-string/jumbo v4, "ptp"

    .line 1623
    invoke-static {v0, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_cc

    .line 1627
    :cond_c3
    iget-wide v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctions:J

    invoke-virtual {p0, v4, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getAppliedFunctions(J)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->updateUsbStateBroadcastIfNeeded(J)V

    .line 1630
    :cond_cc
    invoke-direct {p0, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->waitForState(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_eb

    .line 1631
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to switch USB config to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    return v3

    .line 1635
    :cond_eb
    iput-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsApplied:Z

    .line 1637
    :cond_ed
    return v1
.end method

.method private waitForState(Ljava/lang/String;)Z
    .registers 7
    .param p1, "state"    # Ljava/lang/String;

    .line 1475
    const/4 v0, 0x0

    .line 1476
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x0

    move-object v2, v0

    move v0, v1

    .line 1476
    .local v0, "i":I
    .local v2, "value":Ljava/lang/String;
    :goto_4
    const/16 v3, 0x14

    if-ge v0, v3, :cond_21

    .line 1478
    const-string/jumbo v3, "sys.usb.state"

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1479
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v1, 0x1

    return v1

    .line 1480
    :cond_19
    const-wide/16 v3, 0x32

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 1476
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1482
    .end local v0    # "i":I
    :cond_21
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "waitForState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") FAILED: got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    return v1
.end method


# virtual methods
.method protected applyAdbFunction(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "functions"    # Ljava/lang/String;

    .line 1563
    if-nez p1, :cond_4

    .line 1564
    const-string p1, ""

    .line 1566
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mAdbEnabled:Z

    if-eqz v0, :cond_f

    .line 1567
    const-string v0, "adb"

    invoke-static {p1, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_15

    .line 1569
    :cond_f
    const-string v0, "adb"

    invoke-static {p1, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1571
    :goto_15
    return-object p1
.end method

.method protected setEnabledFunctions(JZ)V
    .registers 13
    .param p1, "usbFunctions"    # J
    .param p3, "forceRestart"    # Z

    .line 1498
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->isUsbDataTransferActive(J)Z

    move-result v0

    .line 1504
    .local v0, "usbDataUnlocked":Z
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mUsbDataUnlocked:Z

    const/4 v2, 0x0

    if-eq v0, v1, :cond_f

    .line 1505
    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mUsbDataUnlocked:Z

    .line 1506
    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->updateUsbNotification(Z)V

    .line 1507
    const/4 p3, 0x1

    .line 1513
    :cond_f
    iget-wide v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctions:J

    .line 1514
    .local v3, "oldFunctions":J
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsApplied:Z

    .line 1515
    .local v1, "oldFunctionsApplied":Z
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->trySetEnabledFunctions(JZ)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 1516
    return-void

    .line 1525
    :cond_1a
    if-eqz v1, :cond_30

    cmp-long v5, v3, p1

    if-eqz v5, :cond_30

    .line 1526
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Failsafe 1: Restoring previous USB functions."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    invoke-direct {p0, v3, v4, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->trySetEnabledFunctions(JZ)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 1528
    return-void

    .line 1535
    :cond_30
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Failsafe 2: Restoring default USB functions."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    const-wide/16 v5, 0x0

    invoke-direct {p0, v5, v6, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->trySetEnabledFunctions(JZ)Z

    move-result v7

    if-eqz v7, :cond_42

    .line 1537
    return-void

    .line 1544
    :cond_42
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Failsafe 3: Restoring empty function list (with ADB if enabled)."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    invoke-direct {p0, v5, v6, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->trySetEnabledFunctions(JZ)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 1546
    return-void

    .line 1552
    :cond_52
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v5, "Unable to set any USB functions!"

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    return-void
.end method
