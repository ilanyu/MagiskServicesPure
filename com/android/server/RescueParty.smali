.class public Lcom/android/server/RescueParty;
.super Ljava/lang/Object;
.source "RescueParty.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/RescueParty$AppThreshold;,
        Lcom/android/server/RescueParty$BootThreshold;,
        Lcom/android/server/RescueParty$Threshold;
    }
.end annotation


# static fields
.field private static final LEVEL_FACTORY_RESET:I = 0x4

.field private static final LEVEL_NONE:I = 0x0

.field private static final LEVEL_RESET_SETTINGS_TRUSTED_DEFAULTS:I = 0x3

.field private static final LEVEL_RESET_SETTINGS_UNTRUSTED_CHANGES:I = 0x2

.field private static final LEVEL_RESET_SETTINGS_UNTRUSTED_DEFAULTS:I = 0x1

.field private static final PROP_DISABLE_RESCUE:Ljava/lang/String; = "persist.sys.disable_rescue"

.field private static final PROP_ENABLE_RESCUE:Ljava/lang/String; = "persist.sys.enable_rescue"

.field private static final PROP_RESCUE_BOOT_COUNT:Ljava/lang/String; = "sys.rescue_boot_count"

.field private static final PROP_RESCUE_BOOT_START:Ljava/lang/String; = "sys.rescue_boot_start"

.field private static final PROP_RESCUE_LEVEL:Ljava/lang/String; = "sys.rescue_level"

.field private static final PROP_VIRTUAL_DEVICE:Ljava/lang/String; = "ro.hardware.virtual_device"

.field private static final TAG:Ljava/lang/String; = "RescueParty"

.field private static sApps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/RescueParty$Threshold;",
            ">;"
        }
    .end annotation
.end field

.field private static final sBoot:Lcom/android/server/RescueParty$Threshold;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 69
    new-instance v0, Lcom/android/server/RescueParty$BootThreshold;

    invoke-direct {v0}, Lcom/android/server/RescueParty$BootThreshold;-><init>()V

    sput-object v0, Lcom/android/server/RescueParty;->sBoot:Lcom/android/server/RescueParty$Threshold;

    .line 71
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/RescueParty;->sApps:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static executeRescueLevel(Landroid/content/Context;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 164
    const-string/jumbo v0, "sys.rescue_level"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 165
    .local v0, "level":I
    if-nez v0, :cond_b

    return-void

    .line 167
    :cond_b
    const-string v1, "RescueParty"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting rescue level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/RescueParty;->levelToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :try_start_25
    invoke-static {p0, v0}, Lcom/android/server/RescueParty;->executeRescueLevelInternal(Landroid/content/Context;I)V

    .line 170
    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeRescueSuccess(I)V

    .line 171
    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished rescue level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-static {v0}, Lcom/android/server/RescueParty;->levelToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 171
    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_44} :catch_45

    .line 178
    goto :goto_6e

    .line 173
    :catch_45
    move-exception v1

    .line 174
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {v1}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "msg":Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/android/server/EventLogTags;->writeRescueFailure(ILjava/lang/String;)V

    .line 176
    const/4 v3, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed rescue level "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-static {v0}, Lcom/android/server/RescueParty;->levelToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 176
    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 179
    .end local v1    # "t":Ljava/lang/Throwable;
    .end local v2    # "msg":Ljava/lang/String;
    :goto_6e
    return-void
.end method

.method private static executeRescueLevelInternal(Landroid/content/Context;I)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 182
    packed-switch p1, :pswitch_data_1a

    goto :goto_19

    .line 193
    :pswitch_4
    const-string v0, "RescueParty"

    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->rebootPromptAndWipeUserData(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_19

    .line 190
    :pswitch_a
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/android/server/RescueParty;->resetAllSettings(Landroid/content/Context;I)V

    .line 191
    goto :goto_19

    .line 187
    :pswitch_f
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/android/server/RescueParty;->resetAllSettings(Landroid/content/Context;I)V

    .line 188
    goto :goto_19

    .line 184
    :pswitch_14
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/server/RescueParty;->resetAllSettings(Landroid/content/Context;I)V

    .line 185
    nop

    .line 196
    :goto_19
    return-void

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_14
        :pswitch_f
        :pswitch_a
        :pswitch_4
    .end packed-switch
.end method

.method private static getAllUserIds()[I
    .registers 7

    .line 320
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 322
    .local v0, "userIds":[I
    :try_start_6
    invoke-static {}, Landroid/os/Environment;->getDataSystemDeDirectory()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    :goto_f
    if-ge v1, v3, :cond_27

    aget-object v4, v2, v1
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_13} :catch_28

    .line 324
    .local v4, "file":Ljava/io/File;
    :try_start_13
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 325
    .local v5, "userId":I
    if-eqz v5, :cond_22

    .line 326
    invoke-static {v0, v5}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v6
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_21} :catch_23
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_21} :catch_28

    move-object v0, v6

    .line 329
    .end local v5    # "userId":I
    :cond_22
    goto :goto_24

    .line 328
    :catch_23
    move-exception v5

    .line 322
    .end local v4    # "file":Ljava/io/File;
    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 333
    :cond_27
    goto :goto_30

    .line 331
    :catch_28
    move-exception v1

    .line 332
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "RescueParty"

    const-string v3, "Trouble discovering users"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 334
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_30
    return-object v0
.end method

.method private static incrementRescueLevel(I)V
    .registers 4
    .param p0, "triggerUid"    # I

    .line 145
    const-string/jumbo v0, "sys.rescue_level"

    .line 146
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 145
    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    .line 148
    .local v0, "level":I
    const-string/jumbo v1, "sys.rescue_level"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-static {v0, p0}, Lcom/android/server/EventLogTags;->writeRescueLevel(II)V

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incremented rescue level to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-static {v0}, Lcom/android/server/RescueParty;->levelToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " triggered by UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 153
    return-void
.end method

.method public static isAttemptingFactoryReset()Z
    .registers 3

    .line 137
    const-string/jumbo v0, "sys.rescue_level"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_d

    const/4 v1, 0x1

    nop

    :cond_d
    return v1
.end method

.method private static isDisabled()Z
    .registers 3

    .line 75
    const-string/jumbo v0, "persist.sys.enable_rescue"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 76
    return v1

    .line 80
    :cond_b
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_18

    .line 81
    const-string v0, "RescueParty"

    const-string v1, "Disabled because of eng build"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return v2

    .line 88
    :cond_18
    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz v0, :cond_2a

    invoke-static {}, Lcom/android/server/RescueParty;->isUsbActive()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 89
    const-string v0, "RescueParty"

    const-string v1, "Disabled because of active USB connection"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return v2

    .line 94
    :cond_2a
    const-string/jumbo v0, "persist.sys.disable_rescue"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 95
    const-string v0, "RescueParty"

    const-string v1, "Disabled because of manual property"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return v2

    .line 99
    :cond_3b
    return v1
.end method

.method private static isUsbActive()Z
    .registers 4

    .line 342
    const-string/jumbo v0, "ro.hardware.virtual_device"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 343
    const-string v0, "RescueParty"

    const-string v1, "Assuming virtual device is connected over USB"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const/4 v0, 0x1

    return v0

    .line 347
    :cond_13
    :try_start_13
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/class/android_usb/android0/state"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x80

    const-string v3, ""

    .line 348
    invoke-static {v0, v2, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "state":Ljava/lang/String;
    const-string v2, "CONFIGURED"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_2c} :catch_2d

    return v2

    .line 350
    .end local v0    # "state":Ljava/lang/String;
    :catch_2d
    move-exception v0

    .line 351
    .local v0, "t":Ljava/lang/Throwable;
    const-string v2, "RescueParty"

    const-string v3, "Failed to determine if device was on USB"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 352
    return v1
.end method

.method private static levelToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "level"    # I

    .line 357
    packed-switch p0, :pswitch_data_18

    .line 363
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 362
    :pswitch_8
    const-string v0, "FACTORY_RESET"

    return-object v0

    .line 361
    :pswitch_b
    const-string v0, "RESET_SETTINGS_TRUSTED_DEFAULTS"

    return-object v0

    .line 360
    :pswitch_e
    const-string v0, "RESET_SETTINGS_UNTRUSTED_CHANGES"

    return-object v0

    .line 359
    :pswitch_11
    const-string v0, "RESET_SETTINGS_UNTRUSTED_DEFAULTS"

    return-object v0

    .line 358
    :pswitch_14
    const-string v0, "NONE"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static noteBoot(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 107
    invoke-static {}, Lcom/android/server/RescueParty;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 108
    :cond_7
    sget-object v0, Lcom/android/server/RescueParty;->sBoot:Lcom/android/server/RescueParty$Threshold;

    invoke-virtual {v0}, Lcom/android/server/RescueParty$Threshold;->incrementAndTest()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 109
    sget-object v0, Lcom/android/server/RescueParty;->sBoot:Lcom/android/server/RescueParty$Threshold;

    invoke-virtual {v0}, Lcom/android/server/RescueParty$Threshold;->reset()V

    .line 110
    sget-object v0, Lcom/android/server/RescueParty;->sBoot:Lcom/android/server/RescueParty$Threshold;

    # getter for: Lcom/android/server/RescueParty$Threshold;->uid:I
    invoke-static {v0}, Lcom/android/server/RescueParty$Threshold;->access$000(Lcom/android/server/RescueParty$Threshold;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/RescueParty;->incrementRescueLevel(I)V

    .line 111
    invoke-static {p0}, Lcom/android/server/RescueParty;->executeRescueLevel(Landroid/content/Context;)V

    .line 113
    :cond_20
    return-void
.end method

.method public static notePersistentAppCrash(Landroid/content/Context;I)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I

    .line 120
    invoke-static {}, Lcom/android/server/RescueParty;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 121
    :cond_7
    sget-object v0, Lcom/android/server/RescueParty;->sApps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/RescueParty$Threshold;

    .line 122
    .local v0, "t":Lcom/android/server/RescueParty$Threshold;
    if-nez v0, :cond_1c

    .line 123
    new-instance v1, Lcom/android/server/RescueParty$AppThreshold;

    invoke-direct {v1, p1}, Lcom/android/server/RescueParty$AppThreshold;-><init>(I)V

    move-object v0, v1

    .line 124
    sget-object v1, Lcom/android/server/RescueParty;->sApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 126
    :cond_1c
    invoke-virtual {v0}, Lcom/android/server/RescueParty$Threshold;->incrementAndTest()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 127
    invoke-virtual {v0}, Lcom/android/server/RescueParty$Threshold;->reset()V

    .line 128
    # getter for: Lcom/android/server/RescueParty$Threshold;->uid:I
    invoke-static {v0}, Lcom/android/server/RescueParty$Threshold;->access$000(Lcom/android/server/RescueParty$Threshold;)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/RescueParty;->incrementRescueLevel(I)V

    .line 129
    invoke-static {p0}, Lcom/android/server/RescueParty;->executeRescueLevel(Landroid/content/Context;)V

    .line 131
    :cond_2f
    return-void
.end method

.method public static onSettingsProviderPublished(Landroid/content/Context;)V
    .registers 1
    .param p0, "context"    # Landroid/content/Context;

    .line 160
    invoke-static {p0}, Lcom/android/server/RescueParty;->executeRescueLevel(Landroid/content/Context;)V

    .line 161
    return-void
.end method

.method private static resetAllSettings(Landroid/content/Context;I)V
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, "res":Ljava/lang/Exception;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 204
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_7
    invoke-static {v1, v3, p1, v2}, Landroid/provider/Settings$Global;->resetToDefaultsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_a} :catch_b

    .line 207
    goto :goto_14

    .line 205
    :catch_b
    move-exception v4

    .line 206
    .local v4, "t":Ljava/lang/Throwable;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Failed to reset global settings"

    invoke-direct {v5, v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v5

    .line 208
    .end local v4    # "t":Ljava/lang/Throwable;
    :goto_14
    invoke-static {}, Lcom/android/server/RescueParty;->getAllUserIds()[I

    move-result-object v4

    array-length v5, v4

    :goto_19
    if-ge v2, v5, :cond_3c

    aget v6, v4, v2

    .line 210
    .local v6, "userId":I
    :try_start_1d
    invoke-static {v1, v3, p1, v6}, Landroid/provider/Settings$Secure;->resetToDefaultsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_20} :catch_21

    .line 213
    goto :goto_39

    .line 211
    :catch_21
    move-exception v7

    .line 212
    .local v7, "t":Ljava/lang/Throwable;
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to reset secure settings for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v8

    .line 208
    .end local v6    # "userId":I
    .end local v7    # "t":Ljava/lang/Throwable;
    :goto_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 215
    :cond_3c
    if-nez v0, :cond_3f

    .line 218
    return-void

    .line 216
    :cond_3f
    throw v0
.end method
