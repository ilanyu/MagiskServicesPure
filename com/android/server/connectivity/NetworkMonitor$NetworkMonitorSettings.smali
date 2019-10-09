.class public interface abstract Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NetworkMonitorSettings"
.end annotation


# static fields
.field public static final DEFAULT:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1403
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$DefaultNetworkMonitorSettings;

    invoke-direct {v0}, Lcom/android/server/connectivity/NetworkMonitor$DefaultNetworkMonitorSettings;-><init>()V

    sput-object v0, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->DEFAULT:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    return-void
.end method


# virtual methods
.method public abstract getSetting(Landroid/content/Context;Ljava/lang/String;I)I
.end method

.method public abstract getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
