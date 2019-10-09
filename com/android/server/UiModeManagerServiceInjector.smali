.class Lcom/android/server/UiModeManagerServiceInjector;
.super Ljava/lang/Object;
.source "UiModeManagerServiceInjector.java"


# static fields
.field private static final IS_MEXICO_TELCEL:Z

.field private static final TAG:Ljava/lang/String; = "UiModeManagerInjector"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 19
    const-string/jumbo v0, "mx_telcel"

    const-string/jumbo v1, "ro.miui.customized.region"

    .line 20
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/UiModeManagerServiceInjector;->IS_MEXICO_TELCEL:Z

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setDefaultFontSize(Landroid/content/Context;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 23
    sget-boolean v0, Lcom/android/server/UiModeManagerServiceInjector;->IS_MEXICO_TELCEL:Z

    if-eqz v0, :cond_85

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    goto :goto_85

    .line 28
    :cond_13
    const/16 v0, 0xc

    .line 29
    .local v0, "newUiModeType":I
    const-string v1, "UiModeManagerInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDefaultFontSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :try_start_2c
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 33
    .local v1, "config":Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    if-eq v0, v2, :cond_64

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "ui_mode_scale"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 37
    invoke-static {v0}, Landroid/content/res/MiuiConfiguration;->getFontScale(I)F

    move-result v2

    iput v2, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 38
    iget v2, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, -0x10

    or-int/2addr v2, v0

    iput v2, v1, Landroid/content/res/Configuration;->uiMode:I

    .line 40
    sget-boolean v2, Lmiui/util/ExquisiteModeUtils;->SUPPORT_EXQUISITE_MODE:Z

    if-eqz v2, :cond_5d

    .line 41
    iget-object v2, v1, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    const-wide/32 v3, 0x10000000

    invoke-virtual {v2, v3, v4}, Landroid/content/res/MiuiConfiguration;->updateTheme(J)V

    .line 43
    :cond_5d
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_64} :catch_65

    .line 48
    .end local v1    # "config":Landroid/content/res/Configuration;
    :cond_64
    goto :goto_84

    .line 45
    :catch_65
    move-exception v1

    .line 46
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "UiModeManagerInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDefaultFontSize failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 49
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_84
    return-void

    .line 25
    .end local v0    # "newUiModeType":I
    :cond_85
    :goto_85
    return-void
.end method
