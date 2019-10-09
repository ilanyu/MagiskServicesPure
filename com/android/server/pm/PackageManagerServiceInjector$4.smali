.class Lcom/android/server/pm/PackageManagerServiceInjector$4;
.super Ljava/lang/Object;
.source "PackageManagerServiceInjector.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerServiceInjector;->getRecentlyWeekUsageStats(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/app/usage/UsageStats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/app/usage/UsageStats;Landroid/app/usage/UsageStats;)I
    .registers 7
    .param p1, "left"    # Landroid/app/usage/UsageStats;
    .param p2, "right"    # Landroid/app/usage/UsageStats;

    .line 1691
    invoke-virtual {p2}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v0

    .line 1692
    invoke-virtual {p1}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 1691
    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1688
    check-cast p1, Landroid/app/usage/UsageStats;

    check-cast p2, Landroid/app/usage/UsageStats;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$4;->compare(Landroid/app/usage/UsageStats;Landroid/app/usage/UsageStats;)I

    move-result p1

    return p1
.end method
