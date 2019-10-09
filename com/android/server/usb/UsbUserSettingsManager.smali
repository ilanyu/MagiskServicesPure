.class Lcom/android/server/usb/UsbUserSettingsManager;
.super Ljava/lang/Object;
.source "UsbUserSettingsManager.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "UsbUserSettingsManager"


# instance fields
.field private final mAccessoryPermissionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/hardware/usb/UsbAccessory;",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevicePermissionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisablePermissionDialogs:Z

.field private final mLock:Ljava/lang/Object;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mUser:Landroid/os/UserHandle;

.field private final mUserContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mDevicePermissionMap:Ljava/util/HashMap;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mLock:Ljava/lang/Object;

    .line 68
    :try_start_18
    const-string v0, "android"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUserContext:Landroid/content/Context;
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_21} :catch_3a

    .line 71
    nop

    .line 73
    iget-object v0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUserContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 75
    iput-object p2, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUser:Landroid/os/UserHandle;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mDisablePermissionDialogs:Z

    .line 79
    return-void

    .line 69
    :catch_3a
    move-exception v0

    .line 70
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Missing android package"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private isCameraDevicePresent(Landroid/hardware/usb/UsbDevice;)Z
    .registers 8
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .line 112
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v0

    const/16 v1, 0xe

    const/4 v2, 0x1

    if-ne v0, v1, :cond_a

    .line 113
    return v2

    .line 116
    :cond_a
    const/4 v0, 0x0

    move v3, v0

    .local v3, "i":I
    :goto_c
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v4

    if-ge v3, v4, :cond_20

    .line 117
    invoke-virtual {p1, v3}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v4

    .line 118
    .local v4, "iface":Landroid/hardware/usb/UsbInterface;
    invoke-virtual {v4}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v5

    if-ne v5, v1, :cond_1d

    .line 119
    return v2

    .line 116
    .end local v4    # "iface":Landroid/hardware/usb/UsbInterface;
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 123
    .end local v3    # "i":I
    :cond_20
    return v0
.end method

.method private isCameraPermissionGranted(Ljava/lang/String;I)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 135
    const/16 v0, 0x1c

    move v1, v0

    .line 137
    .local v1, "targetSdkVersion":I
    const/4 v2, 0x0

    :try_start_4
    iget-object v3, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 139
    .local v3, "aInfo":Landroid/content/pm/ApplicationInfo;
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v4, p2, :cond_2d

    .line 140
    const-string v0, "UsbUserSettingsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " does not match caller\'s uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return v2

    .line 143
    :cond_2d
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_2f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_2f} :catch_48

    move v1, v4

    .line 147
    .end local v3    # "aInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 149
    if-lt v1, v0, :cond_46

    .line 150
    iget-object v0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUserContext:Landroid/content/Context;

    const-string v3, "android.permission.CAMERA"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    .line 151
    .local v0, "allowed":I
    const/4 v3, -0x1

    if-ne v3, v0, :cond_46

    .line 152
    const-string v3, "UsbUserSettingsManager"

    const-string v4, "Camera permission required for USB video class devices"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return v2

    .line 157
    .end local v0    # "allowed":I
    :cond_46
    const/4 v0, 0x1

    return v0

    .line 144
    :catch_48
    move-exception v0

    .line 145
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "UsbUserSettingsManager"

    const-string v4, "Package not found, likely due to invalid package name!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return v2
.end method

.method private requestPermissionDialog(Landroid/content/Intent;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pi"    # Landroid/app/PendingIntent;

    .line 215
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 219
    .local v0, "uid":I
    :try_start_4
    iget-object v1, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 220
    .local v1, "aInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_d} :catch_6c

    if-ne v2, v0, :cond_4c

    .line 226
    .end local v1    # "aInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 228
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 229
    .local v1, "identity":J
    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.usb.UsbPermissionActivity"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const/high16 v3, 0x10000000

    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 232
    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {p1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 233
    const-string/jumbo v3, "package"

    invoke-virtual {p1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const-string v3, "android.intent.extra.UID"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 236
    :try_start_30
    iget-object v3, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUserContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v3, p1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_37
    .catch Landroid/content/ActivityNotFoundException; {:try_start_30 .. :try_end_37} :catch_3d
    .catchall {:try_start_30 .. :try_end_37} :catchall_3b

    .line 240
    :goto_37
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 241
    goto :goto_47

    .line 240
    :catchall_3b
    move-exception v3

    goto :goto_48

    .line 237
    :catch_3d
    move-exception v3

    .line 238
    .local v3, "e":Landroid/content/ActivityNotFoundException;
    :try_start_3e
    const-string v4, "UsbUserSettingsManager"

    const-string/jumbo v5, "unable to start UsbPermissionActivity"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_3e .. :try_end_46} :catchall_3b

    .line 238
    .end local v3    # "e":Landroid/content/ActivityNotFoundException;
    goto :goto_37

    .line 242
    :goto_47
    return-void

    .line 240
    :goto_48
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 221
    .local v1, "aInfo":Landroid/content/pm/ApplicationInfo;
    :cond_4c
    :try_start_4c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " does not match caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_6c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4c .. :try_end_6c} :catch_6c

    .line 224
    .end local v1    # "aInfo":Landroid/content/pm/ApplicationInfo;
    :catch_6c
    move-exception v1

    .line 225
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public checkPermission(Landroid/hardware/usb/UsbAccessory;)V
    .registers 5
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .line 209
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbUserSettingsManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 212
    return-void

    .line 210
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User has not given permission to accessory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V
    .registers 7
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 203
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usb/UsbUserSettingsManager;->hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 206
    return-void

    .line 204
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User has not given permission to device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 24
    .param p1, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "idName"    # Ljava/lang/String;
    .param p3, "id"    # J

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 319
    invoke-virtual/range {p1 .. p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v3

    .line 321
    .local v3, "token":J
    iget-object v5, v1, Lcom/android/server/usb/UsbUserSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 322
    :try_start_b
    const-string/jumbo v0, "user_id"

    const-wide v6, 0x10500000001L

    iget-object v8, v1, Lcom/android/server/usb/UsbUserSettingsManager;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {v2, v0, v6, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 324
    iget-object v0, v1, Lcom/android/server/usb/UsbUserSettingsManager;->mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-wide v7, 0x20500000002L

    const-wide v10, 0x10900000001L

    if-eqz v6, :cond_6c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 325
    .local v6, "deviceName":Ljava/lang/String;
    const-string v12, "device_permissions"

    const-wide v13, 0x20b00000002L

    invoke-virtual {v2, v12, v13, v14}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v12

    .line 328
    .local v12, "devicePermissionToken":J
    const-string v14, "device_name"

    invoke-virtual {v2, v14, v10, v11, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 330
    iget-object v10, v1, Lcom/android/server/usb/UsbUserSettingsManager;->mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseBooleanArray;

    .line 331
    .local v10, "uidList":Landroid/util/SparseBooleanArray;
    invoke-virtual {v10}, Landroid/util/SparseBooleanArray;->size()I

    move-result v11

    .line 332
    .local v11, "count":I
    const/4 v9, 0x0

    .line 332
    .local v9, "i":I
    :goto_59
    if-ge v9, v11, :cond_68

    .line 333
    const-string/jumbo v14, "uids"

    invoke-virtual {v10, v9}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v15

    invoke-virtual {v2, v14, v7, v8, v15}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 332
    add-int/lit8 v9, v9, 0x1

    goto :goto_59

    .line 336
    .end local v9    # "i":I
    :cond_68
    invoke-virtual {v2, v12, v13}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 337
    .end local v6    # "deviceName":Ljava/lang/String;
    .end local v10    # "uidList":Landroid/util/SparseBooleanArray;
    .end local v11    # "count":I
    .end local v12    # "devicePermissionToken":J
    goto :goto_26

    .line 338
    :cond_6c
    iget-object v0, v1, Lcom/android/server/usb/UsbUserSettingsManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_76
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/usb/UsbAccessory;

    .line 339
    .local v6, "accessory":Landroid/hardware/usb/UsbAccessory;
    const-string v12, "accessory_permissions"

    const-wide v13, 0x20b00000003L

    invoke-virtual {v2, v12, v13, v14}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v12

    .line 342
    .local v12, "accessoryPermissionToken":J
    const-string v14, "accessory_description"

    .line 344
    invoke-virtual {v6}, Landroid/hardware/usb/UsbAccessory;->getDescription()Ljava/lang/String;

    move-result-object v15

    .line 342
    invoke-virtual {v2, v14, v10, v11, v15}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 346
    iget-object v14, v1, Lcom/android/server/usb/UsbUserSettingsManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v14, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/SparseBooleanArray;

    .line 347
    .local v14, "uidList":Landroid/util/SparseBooleanArray;
    invoke-virtual {v14}, Landroid/util/SparseBooleanArray;->size()I

    move-result v15

    .line 348
    .local v15, "count":I
    const/16 v16, 0x0

    .line 348
    .local v16, "i":I
    :goto_a4
    move/from16 v17, v16

    .line 348
    .end local v16    # "i":I
    .local v17, "i":I
    move/from16 v9, v17

    if-ge v9, v15, :cond_bc

    .line 349
    .end local v17    # "i":I
    .restart local v9    # "i":I
    const-string/jumbo v10, "uids"

    invoke-virtual {v14, v9}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v11

    invoke-virtual {v2, v10, v7, v8, v11}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 348
    add-int/lit8 v16, v9, 0x1

    .line 348
    .end local v9    # "i":I
    .restart local v16    # "i":I
    const-wide v10, 0x10900000001L

    goto :goto_a4

    .line 352
    .end local v16    # "i":I
    :cond_bc
    invoke-virtual {v2, v12, v13}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 353
    .end local v6    # "accessory":Landroid/hardware/usb/UsbAccessory;
    .end local v12    # "accessoryPermissionToken":J
    .end local v14    # "uidList":Landroid/util/SparseBooleanArray;
    .end local v15    # "count":I
    nop

    .line 338
    const-wide v10, 0x10900000001L

    goto :goto_76

    .line 354
    :cond_c6
    monitor-exit v5
    :try_end_c7
    .catchall {:try_start_b .. :try_end_c7} :catchall_cb

    .line 356
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 357
    return-void

    .line 354
    :catchall_cb
    move-exception v0

    :try_start_cc
    monitor-exit v5
    :try_end_cd
    .catchall {:try_start_cc .. :try_end_cd} :catchall_cb

    throw v0
.end method

.method public grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V
    .registers 7
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "uid"    # I

    .line 308
    iget-object v0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 309
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    .line 310
    .local v1, "uidList":Landroid/util/SparseBooleanArray;
    const/4 v2, 0x1

    if-nez v1, :cond_19

    .line 311
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    move-object v1, v3

    .line 312
    iget-object v3, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    :cond_19
    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 315
    .end local v1    # "uidList":Landroid/util/SparseBooleanArray;
    monitor-exit v0

    .line 316
    return-void

    .line 315
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    .registers 8
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "uid"    # I

    .line 296
    iget-object v0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 297
    :try_start_3
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, "deviceName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseBooleanArray;

    .line 299
    .local v2, "uidList":Landroid/util/SparseBooleanArray;
    const/4 v3, 0x1

    if-nez v2, :cond_1d

    .line 300
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4, v3}, Landroid/util/SparseBooleanArray;-><init>(I)V

    move-object v2, v4

    .line 301
    iget-object v4, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    :cond_1d
    invoke-virtual {v2, p2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 304
    .end local v1    # "deviceName":Ljava/lang/String;
    .end local v2    # "uidList":Landroid/util/SparseBooleanArray;
    monitor-exit v0

    .line 305
    return-void

    .line 304
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public hasPermission(Landroid/hardware/usb/UsbAccessory;)Z
    .registers 7
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .line 184
    iget-object v0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 185
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 186
    .local v1, "uid":I
    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_2d

    iget-boolean v2, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mDisablePermissionDialogs:Z

    if-eqz v2, :cond_10

    goto :goto_2d

    .line 189
    :cond_10
    iget-object v2, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseBooleanArray;

    .line 190
    .local v2, "uidList":Landroid/util/SparseBooleanArray;
    const/4 v3, 0x0

    if-nez v2, :cond_1d

    .line 191
    monitor-exit v0

    return v3

    .line 194
    :cond_1d
    iget-object v4, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUserContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/miui/enterprise/RestrictionsHelper;->isUsbDeviceRestricted(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 195
    monitor-exit v0

    return v3

    .line 198
    :cond_27
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    monitor-exit v0

    return v3

    .line 187
    .end local v2    # "uidList":Landroid/util/SparseBooleanArray;
    :cond_2d
    :goto_2d
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 199
    .end local v1    # "uid":I
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)Z
    .registers 8
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 161
    iget-object v0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbUserSettingsManager;->isCameraDevicePresent(Landroid/hardware/usb/UsbDevice;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    .line 163
    invoke-direct {p0, p2, p3}, Lcom/android/server/usb/UsbUserSettingsManager;->isCameraPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_12

    .line 164
    monitor-exit v0

    return v2

    .line 167
    :cond_12
    const/16 v1, 0x3e8

    if-eq p3, v1, :cond_3b

    iget-boolean v1, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mDisablePermissionDialogs:Z

    if-eqz v1, :cond_1b

    goto :goto_3b

    .line 170
    :cond_1b
    iget-object v1, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    .line 171
    .local v1, "uidList":Landroid/util/SparseBooleanArray;
    if-nez v1, :cond_2b

    .line 172
    monitor-exit v0

    return v2

    .line 175
    :cond_2b
    iget-object v3, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUserContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/enterprise/RestrictionsHelper;->isUsbDeviceRestricted(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 176
    monitor-exit v0

    return v2

    .line 179
    :cond_35
    invoke-virtual {v1, p3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 168
    .end local v1    # "uidList":Landroid/util/SparseBooleanArray;
    :cond_3b
    :goto_3b
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 180
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method removeAccessoryPermissions(Landroid/hardware/usb/UsbAccessory;)V
    .registers 4
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .line 98
    iget-object v0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 99
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mAccessoryPermissionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    monitor-exit v0

    .line 101
    return-void

    .line 100
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method removeDevicePermissions(Landroid/hardware/usb/UsbDevice;)V
    .registers 5
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .line 87
    iget-object v0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mDevicePermissionMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    monitor-exit v0

    .line 90
    return-void

    .line 89
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public requestPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 7
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pi"    # Landroid/app/PendingIntent;

    .line 277
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 280
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbUserSettingsManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 281
    const-string v1, "accessory"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 282
    const-string/jumbo v1, "permission"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 284
    :try_start_17
    iget-object v1, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUserContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1d
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_17 .. :try_end_1d} :catch_1e

    .line 287
    goto :goto_1f

    .line 285
    :catch_1e
    move-exception v1

    .line 288
    :goto_1f
    return-void

    .line 291
    :cond_20
    const-string v1, "accessory"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 292
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/usb/UsbUserSettingsManager;->requestPermissionDialog(Landroid/content/Intent;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 293
    return-void
.end method

.method public requestPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;I)V
    .registers 9
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pi"    # Landroid/app/PendingIntent;
    .param p4, "uid"    # I

    .line 245
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 248
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/usb/UsbUserSettingsManager;->hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    .line 249
    const-string v1, "device"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 250
    const-string/jumbo v1, "permission"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 252
    :try_start_18
    iget-object v1, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUserContext:Landroid/content/Context;

    invoke-virtual {p3, v1, v2, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1d
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_18 .. :try_end_1d} :catch_1e

    .line 255
    goto :goto_1f

    .line 253
    :catch_1e
    move-exception v1

    .line 256
    :goto_1f
    return-void

    .line 258
    :cond_20
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbUserSettingsManager;->isCameraDevicePresent(Landroid/hardware/usb/UsbDevice;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 259
    invoke-direct {p0, p2, p4}, Lcom/android/server/usb/UsbUserSettingsManager;->isCameraPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 260
    const-string v1, "device"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 261
    const-string/jumbo v1, "permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 263
    :try_start_37
    iget-object v1, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUserContext:Landroid/content/Context;

    invoke-virtual {p3, v1, v2, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_3c
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_37 .. :try_end_3c} :catch_3d

    .line 266
    goto :goto_3e

    .line 264
    :catch_3d
    move-exception v1

    .line 267
    :goto_3e
    return-void

    .line 272
    :cond_3f
    const-string v1, "device"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 273
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/usb/UsbUserSettingsManager;->requestPermissionDialog(Landroid/content/Intent;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 274
    return-void
.end method
