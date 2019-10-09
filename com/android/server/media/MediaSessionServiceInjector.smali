.class public Lcom/android/server/media/MediaSessionServiceInjector;
.super Ljava/lang/Object;
.source "MediaSessionServiceInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaSessionService"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startVoiceAssistant(Landroid/content/Context;)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .line 18
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ASSIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    :try_start_8
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x10000

    .line 20
    invoke-interface {v2, v0, v3, v4, v1}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 23
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    const-string v3, "com.miui.voiceassist"

    .line 24
    .local v3, "MIUI_VOICE_ASSIST_PKG":Ljava/lang/String;
    const-string v4, "com.xiaomi.voiceassistant.CTAAlertActivity"

    .line 25
    .local v4, "MIUI_VOICE_ASSIST_ACTIVITY":Ljava/lang/String;
    const-string v5, "com.xiaomi.voiceassistant.VoiceService"

    .line 26
    .local v5, "MIUI_VOICE_ASSIST_SERVICE":Ljava/lang/String;
    if-eqz v2, :cond_54

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_54

    const-string v6, "com.miui.voiceassist"

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 27
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_54

    const-string v6, "com.xiaomi.voiceassistant.CTAAlertActivity"

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 28
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_54

    .line 29
    const-string/jumbo v6, "voice_assist_start_from_key"

    const-string v7, "headset"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    const-string v6, "com.miui.voiceassist"

    const-string v7, "com.xiaomi.voiceassistant.VoiceService"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v6}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 32
    const/4 v1, 0x1

    return v1

    .line 34
    :cond_54
    const-string v6, "MediaSessionService"

    const-string/jumbo v7, "startVoiceAssistant can\'t find service"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_5c} :catch_5d

    .line 38
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    .end local v3    # "MIUI_VOICE_ASSIST_PKG":Ljava/lang/String;
    .end local v4    # "MIUI_VOICE_ASSIST_ACTIVITY":Ljava/lang/String;
    .end local v5    # "MIUI_VOICE_ASSIST_SERVICE":Ljava/lang/String;
    goto :goto_65

    .line 36
    :catch_5d
    move-exception v2

    .line 37
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "MediaSessionService"

    const-string v4, "RemoteException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_65
    return v1
.end method
