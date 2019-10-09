.class public Lcom/android/server/location/LocationRequestStatistics;
.super Ljava/lang/Object;
.source "LocationRequestStatistics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;,
        Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationStats"


# instance fields
.field public final statistics:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;",
            "Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/LocationRequestStatistics;->statistics:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public startRequesting(Ljava/lang/String;Ljava/lang/String;JZ)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "intervalMs"    # J
    .param p5, "isForeground"    # Z

    .line 29
    new-instance v0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .local v0, "key":Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;
    iget-object v1, p0, Lcom/android/server/location/LocationRequestStatistics;->statistics:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;

    .line 31
    .local v1, "stats":Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;
    if-nez v1, :cond_1b

    .line 32
    new-instance v2, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;-><init>(Lcom/android/server/location/LocationRequestStatistics$1;)V

    move-object v1, v2

    .line 33
    iget-object v2, p0, Lcom/android/server/location/LocationRequestStatistics;->statistics:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_1b
    # invokes: Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->startRequesting(J)V
    invoke-static {v1, p3, p4}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->access$100(Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;J)V

    .line 36
    # invokes: Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->updateForeground(Z)V
    invoke-static {v1, p5}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->access$200(Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;Z)V

    .line 37
    return-void
.end method

.method public stopRequesting(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "providerName"    # Ljava/lang/String;

    .line 46
    new-instance v0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .local v0, "key":Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;
    iget-object v1, p0, Lcom/android/server/location/LocationRequestStatistics;->statistics:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;

    .line 48
    .local v1, "stats":Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;
    if-eqz v1, :cond_12

    .line 49
    # invokes: Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->stopRequesting()V
    invoke-static {v1}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->access$300(Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;)V

    .line 51
    :cond_12
    return-void
.end method

.method public updateForeground(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "providerName"    # Ljava/lang/String;
    .param p3, "isForeground"    # Z

    .line 60
    new-instance v0, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .local v0, "key":Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;
    iget-object v1, p0, Lcom/android/server/location/LocationRequestStatistics;->statistics:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;

    .line 62
    .local v1, "stats":Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;
    if-eqz v1, :cond_12

    .line 63
    # invokes: Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->updateForeground(Z)V
    invoke-static {v1, p3}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->access$200(Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;Z)V

    .line 65
    :cond_12
    return-void
.end method
