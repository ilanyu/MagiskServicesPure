.class Lcom/android/server/am/GlobalSettingsToPropertiesMapper;
.super Ljava/lang/Object;
.source "GlobalSettingsToPropertiesMapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GlobalSettingsToPropertiesMapper"

.field private static final sGlobalSettingsMapping:[[Ljava/lang/String;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mGlobalSettingsMapping:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 44
    const/4 v0, 0x5

    new-array v0, v0, [[Ljava/lang/String;

    const-string/jumbo v1, "sys_vdso"

    const-string/jumbo v2, "sys.vdso"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "fps_divisor"

    const-string v2, "debug.hwui.fps_divisor"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "display_panel_lpm"

    const-string/jumbo v2, "sys.display_panel_lpm"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "sys_uidcpupower"

    const-string/jumbo v2, "sys.uidcpupower"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "sys_traced"

    const-string/jumbo v2, "sys.traced.enable_override"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/am/GlobalSettingsToPropertiesMapper;->sGlobalSettingsMapping:[[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/ContentResolver;[[Ljava/lang/String;)V
    .registers 3
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "globalSettingsMapping"    # [[Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/server/am/GlobalSettingsToPropertiesMapper;->mContentResolver:Landroid/content/ContentResolver;

    .line 60
    iput-object p2, p0, Lcom/android/server/am/GlobalSettingsToPropertiesMapper;->mGlobalSettingsMapping:[[Ljava/lang/String;

    .line 61
    return-void
.end method

.method private getGlobalSetting(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/android/server/am/GlobalSettingsToPropertiesMapper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 91
    if-nez p2, :cond_f

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/am/GlobalSettingsToPropertiesMapper;->systemPropertiesGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 95
    return-void

    .line 97
    :cond_d
    const-string p2, ""

    .line 100
    :cond_f
    :try_start_f
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/GlobalSettingsToPropertiesMapper;->systemPropertiesSet(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_13

    .line 110
    goto :goto_5f

    .line 101
    :catch_13
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_3c

    .line 106
    const-string v1, "GlobalSettingsToPropertiesMapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to set property "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " value \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5f

    .line 108
    :cond_3c
    const-string v1, "GlobalSettingsToPropertiesMapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to set property "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " value \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5f
    return-void
.end method

.method public static start(Landroid/content/ContentResolver;)V
    .registers 3
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .line 81
    new-instance v0, Lcom/android/server/am/GlobalSettingsToPropertiesMapper;

    sget-object v1, Lcom/android/server/am/GlobalSettingsToPropertiesMapper;->sGlobalSettingsMapping:[[Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/GlobalSettingsToPropertiesMapper;-><init>(Landroid/content/ContentResolver;[[Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0}, Lcom/android/server/am/GlobalSettingsToPropertiesMapper;->updatePropertiesFromGlobalSettings()V

    .line 83
    return-void
.end method


# virtual methods
.method protected systemPropertiesGet(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 115
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected systemPropertiesSet(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 120
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method updatePropertiesFromGlobalSettings()V
    .registers 11

    .line 64
    iget-object v0, p0, Lcom/android/server/am/GlobalSettingsToPropertiesMapper;->mGlobalSettingsMapping:[[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_3c

    aget-object v4, v0, v3

    .line 65
    .local v4, "entry":[Ljava/lang/String;
    aget-object v5, v4, v2

    .line 66
    .local v5, "settingName":Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v6, v4, v6

    .line 67
    .local v6, "propName":Ljava/lang/String;
    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 68
    .local v7, "settingUri":Landroid/net/Uri;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Setting "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " not found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v8, Lcom/android/server/am/GlobalSettingsToPropertiesMapper$1;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9, v5, v6}, Lcom/android/server/am/GlobalSettingsToPropertiesMapper$1;-><init>(Lcom/android/server/am/GlobalSettingsToPropertiesMapper;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .local v8, "co":Landroid/database/ContentObserver;
    invoke-virtual {p0, v5, v6}, Lcom/android/server/am/GlobalSettingsToPropertiesMapper;->updatePropertyFromSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v9, p0, Lcom/android/server/am/GlobalSettingsToPropertiesMapper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v9, v7, v2, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 64
    .end local v4    # "entry":[Ljava/lang/String;
    .end local v5    # "settingName":Ljava/lang/String;
    .end local v6    # "propName":Ljava/lang/String;
    .end local v7    # "settingUri":Landroid/net/Uri;
    .end local v8    # "co":Landroid/database/ContentObserver;
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 78
    :cond_3c
    return-void
.end method

.method updatePropertyFromSetting(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "propName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 125
    invoke-direct {p0, p1}, Lcom/android/server/am/GlobalSettingsToPropertiesMapper;->getGlobalSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "settingValue":Ljava/lang/String;
    invoke-direct {p0, p2, v0}, Lcom/android/server/am/GlobalSettingsToPropertiesMapper;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method
