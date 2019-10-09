.class public Lcom/android/server/connectivity/NetworkMonitor$DefaultNetworkMonitorSettings;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"

# interfaces
.implements Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultNetworkMonitorSettings"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSetting(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "symbol"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 1409
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "symbol"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .line 1413
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1414
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_c

    move-object v1, v0

    goto :goto_d

    :cond_c
    move-object v1, p3

    :goto_d
    return-object v1
.end method
