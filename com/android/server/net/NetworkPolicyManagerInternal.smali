.class public abstract Lcom/android/server/net/NetworkPolicyManagerInternal;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerInternal.java"


# static fields
.field public static final QUOTA_TYPE_JOBS:I = 0x1

.field public static final QUOTA_TYPE_MULTIPATH:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getSubscriptionOpportunisticQuota(Landroid/net/Network;I)J
.end method

.method public abstract getSubscriptionPlan(Landroid/net/Network;)Landroid/telephony/SubscriptionPlan;
.end method

.method public abstract getSubscriptionPlan(Landroid/net/NetworkTemplate;)Landroid/telephony/SubscriptionPlan;
.end method

.method public abstract isUidNetworkingBlocked(ILjava/lang/String;)Z
.end method

.method public abstract isUidRestrictedOnMeteredNetworks(I)Z
.end method

.method public abstract onAdminDataAvailable()V
.end method

.method public abstract onTempPowerSaveWhitelistChange(IZ)V
.end method

.method public abstract resetUserState(I)V
.end method

.method public abstract setMeteredRestrictedPackages(Ljava/util/Set;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract setMeteredRestrictedPackagesAsync(Ljava/util/Set;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation
.end method
