.class Lcom/android/server/content/SyncManagerAccountChangePolicy$RealTimeStrategy;
.super Ljava/lang/Object;
.source "SyncManagerAccountChangePolicy.java"

# interfaces
.implements Lcom/android/server/content/SyncManagerAccountChangePolicy$SyncForbiddenStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManagerAccountChangePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RealTimeStrategy"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/content/SyncManagerAccountChangePolicy$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/content/SyncManagerAccountChangePolicy$1;

    .line 148
    invoke-direct {p0}, Lcom/android/server/content/SyncManagerAccountChangePolicy$RealTimeStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public isSyncForbidden(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 152
    const/4 v0, 0x0

    return v0
.end method
