.class public Lcom/android/server/MiuiConfigCaptivePortal;
.super Ljava/lang/Object;
.source "MiuiConfigCaptivePortal.java"


# static fields
.field private static final CN_CAPTIVE_PORTAL_SERVER:Ljava/lang/String; = "connect.rom.miui.com"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final enableDataAndWifiRoam(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_and_wifi_roam"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    goto :goto_10

    :cond_f
    move v1, v2

    :goto_10
    return v1
.end method

.method public static final getCaptivePortalServer(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "server"    # Ljava/lang/String;

    .line 43
    invoke-static {}, Landroid/provider/MiuiSettings$System;->isInCnRegion()Z

    move-result v0

    if-nez v0, :cond_8

    move-object v0, p0

    goto :goto_a

    :cond_8
    const-string v0, "connect.rom.miui.com"

    :goto_a
    return-object v0
.end method

.method public static final getCaptivePortalServer(Landroid/content/Context;Ljava/lang/String;)Ljava/net/URL;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/MiuiConfigCaptivePortal;->getCaptivePortalServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 19
    .local v1, "server":Ljava/lang/String;
    if-nez v1, :cond_3d

    if-eqz p1, :cond_11

    const-string v2, "http"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 20
    :cond_11
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "captive_portal_server"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 22
    if-nez v1, :cond_3d

    .line 24
    :try_start_1d
    const-string v2, "com.android.server.connectivity.NetworkMonitor"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "DEFAULT_SERVER"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 25
    .local v2, "dsFiled":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1d .. :try_end_33} :catch_39
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_33} :catch_35

    move-object v1, v3

    .end local v2    # "dsFiled":Ljava/lang/reflect/Field;
    goto :goto_3c

    .line 29
    :catch_35
    move-exception v2

    .line 30
    .local v2, "ex":Ljava/lang/Exception;
    const-string v1, "connect.rom.miui.com"

    .end local v2    # "ex":Ljava/lang/Exception;
    goto :goto_3d

    .line 27
    :catch_39
    move-exception v2

    .line 28
    .local v2, "ex":Ljava/lang/ClassNotFoundException;
    const-string v1, "connect.rom.miui.com"

    .line 31
    .end local v2    # "ex":Ljava/lang/ClassNotFoundException;
    :goto_3c
    nop

    .line 36
    :cond_3d
    :goto_3d
    if-eqz v1, :cond_4b

    :try_start_3f
    new-instance v2, Ljava/net/URL;

    const-string v3, "http"

    const-string v4, "/generate_204"

    invoke-direct {v2, v3, v1, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_50

    .line 37
    :catch_49
    move-exception v2

    goto :goto_51

    .line 36
    :cond_4b
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/net/MalformedURLException; {:try_start_3f .. :try_end_50} :catch_49

    :goto_50
    return-object v2

    .line 37
    :goto_51
    nop

    .line 38
    .local v2, "e":Ljava/net/MalformedURLException;
    return-object v0
.end method
