.class public Lcom/android/server/connectivity/VpnInjector;
.super Ljava/lang/Object;
.source "VpnInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isSpecialUser(Landroid/content/Context;II)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parentUserId"    # I
    .param p2, "userId"    # I

    .line 16
    const/4 v0, 0x0

    if-ltz p1, :cond_f

    if-gez p2, :cond_6

    goto :goto_f

    .line 19
    :cond_6
    if-nez p1, :cond_e

    const/16 v1, 0x3e7

    if-ne p2, v1, :cond_e

    const/4 v0, 0x1

    nop

    :cond_e
    return v0

    .line 17
    :cond_f
    :goto_f
    return v0
.end method
