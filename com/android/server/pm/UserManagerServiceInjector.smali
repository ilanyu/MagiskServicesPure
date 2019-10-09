.class public Lcom/android/server/pm/UserManagerServiceInjector;
.super Ljava/lang/Object;
.source "UserManagerServiceInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAndGetNewUserId(II)I
    .registers 3
    .param p0, "flags"    # I
    .param p1, "defUserId"    # I

    .line 10
    invoke-static {p0, p1}, Lmiui/securityspace/XSpaceUserHandle;->checkAndGetXSpaceUserId(II)I

    move-result v0

    return v0
.end method
